using Azure;
using B2H.MaterialsList.API.DataTransfer.Dto;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using static B2H.MaterialsList.API.HostingExtensions;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using B2H.MaterialsList.Core.Service;
using Microsoft.AspNetCore.Identity;
using B2H.MaterialsList.Core.Models;
using Serilog;
using B2H.MaterialsList.Infrastructure.ApprovalManagement;
using Microsoft.AspNetCore.Authentication;
using System.Text;
using System.Data;
using B2H.MaterialsList.API.DataTransfer.Request;
using B2H.MaterialsList.Core.Mapper.Externsions;

namespace B2H.MaterialsList.API.Controller
{
	[Route("api/auth")]
    [ApiController]
    public partial class AuthController : ControllerBase
    {
        protected ResponseDto Response { get; set; } = new ResponseDto();
        record class Person(string Email, string Password);
        List<Person> people = new List<Person>
        {
            new Person("guest@abdev.ru", "12345"),
        };

		private readonly UserManager<B2HUser> _userManager;
		private readonly RoleManager<B2HRole> _roleManager;
		private readonly SignInManager<B2HUser> _signInManager;
		private readonly IConfiguration _configuration;

		public AuthController(SignInManager<B2HUser> signInManager, UserManager<B2HUser> userManager, RoleManager<B2HRole> roleManager, IConfiguration configuration)
		{
			_signInManager = signInManager;
			_userManager = userManager;
			_roleManager = roleManager;
			_configuration = configuration;
		}

		[HttpPost("login")]
        public async Task<object> Login([FromBody] LoginRequest request)
        {
			var user = await _userManager.FindByEmailAsync(request.Email);
			if (user != null && user.IsActived && await _userManager.CheckPasswordAsync(user, request.Password))
			{
				await _signInManager.SignInAsync(user, false);
				var roles = (await _userManager.GetRolesAsync(user));
				return Ok(user.ToDto(string.Join(",", roles) ?? Roles.User, await GenerateJwtToken(user)));
			}
			return Unauthorized();
        }

		[HttpPost("registration")]
		public async Task<object> RegistrationUser([FromBody] RegisterRequest model)
        {
			var user = new B2HUser
			{
				UserName = model.Username,
				Email = model.Email,
				FirstName = model.FirstName,
				LastName = model.LastName,
				MiddleName = model.MiddleName
			};
			var result = await _userManager.CreateAsync(user, model.Password);
			if (result.Succeeded)
			{
				await _userManager.AddToRoleAsync(user, Roles.User);
				await _signInManager.SignInAsync(user, false);
				return Ok(user.ToDto(Roles.User, await GenerateJwtToken(user)));
			}
			return BadRequest(result.Errors);
        }
		[HttpPost("initrole")]
		public async Task<IActionResult> createRole()
		{
			var roles = new[] { Roles.Admin, Roles.Resource, Roles.TIM, Roles.Architect, Roles.User };
			foreach (var role in roles)
			{
				if (!await _roleManager.RoleExistsAsync(role))
				{
					await _roleManager.CreateAsync(new B2HRole { Name = role });
				}
			}
			return Ok();
		}
		private async Task<string> GenerateJwtToken(B2HUser user)
		{
			var tokenHandler = new JwtSecurityTokenHandler();
			var key = Encoding.ASCII.GetBytes(_configuration["Jwt:Key"]);
			var roles = await _userManager.GetRolesAsync(user);

			var tokenDescriptor = new SecurityTokenDescriptor
			{
				Subject = new ClaimsIdentity(new Claim[]
				{
					new Claim(ClaimTypes.Name, user.UserName),
					new Claim(ClaimTypes.NameIdentifier, user.Id),
					new Claim(ClaimTypes.Role, string.Join(",", roles))
				}),
				Expires = DateTime.UtcNow.AddHours(24),
				SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
			};
			var token = tokenHandler.CreateToken(tokenDescriptor);
			return tokenHandler.WriteToken(token);
		}
	}
}
