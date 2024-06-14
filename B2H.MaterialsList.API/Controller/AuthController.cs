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

namespace B2H.MaterialsList.API.Controller
{
    [Route("api/auth")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        protected ResponseDto Response { get; set; } = new ResponseDto();
        record class Person(string Email, string Password);
        List<Person> people = new List<Person>
        {
            new Person("guest@abdev.ru", "12345"),
        };
        UserManager<B2HUser> _userManager;
        RoleManager<B2HRole> _roleManager;
        B2HMaterialsIdentityContext _context;

		public AuthController(UserManager<B2HUser> userManager, RoleManager<B2HRole> roleManager, B2HMaterialsIdentityContext context)
		{
			_userManager = userManager;
			_roleManager = roleManager;
			_context = context;
		}

		[HttpGet("login")]
        public async Task<object> login(string mail, string password)
        {
            Person? person = people.FirstOrDefault(p => password == p .Password && mail == p.Email);
            if (person == null)
            {
                Response.IsSuccess = false;
                return Response;
            }
            var claims = new List<Claim> {
            new Claim("guid", Guid.NewGuid().ToString()),
            new Claim("name", "TestUser"),
            new Claim("mail", person.Email)
            };
            var jwt = new JwtSecurityToken(
                    issuer: AuthOptions.ISSUER,
                    audience: AuthOptions.AUDIENCE,
                    claims: claims,
                    expires: DateTime.UtcNow.Add(TimeSpan.FromDays(20)),
                    signingCredentials: new SigningCredentials(AuthOptions.GetSymmetricSecurityKey(), SecurityAlgorithms.HmacSha256));
            var encodedJwt = new JwtSecurityTokenHandler().WriteToken(jwt);
            Response.Result = new AuthUserDto(Guid.NewGuid(), person.Email, "guest", "Guest" , encodedJwt);
            return Response;
        }

		[HttpPost("registration")]
		public async Task<object> registrationUser(AuthRequest person)
        {
            var result = _userManager.CreateAsync(new B2HUser { UserName = person.UserName, Email = person.Email }, person.Password);
            Response.Result = _context.Users.Find(person.Email);
            return Response;
        }
    }
    public class AuthRequest
    {
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
    }
}
