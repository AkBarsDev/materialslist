using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.Core.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using static B2H.MaterialsList.API.HostingExtensions;
using B2H.MaterialsList.Core.Mapper.Externsions;

namespace B2H.MaterialsList.API.Controller
{
	[ApiController]
	[Route("api/users")]
	public partial class UsersController : ControllerBase
	{
		private readonly UserManager<B2HUser> _userManager;
		private readonly RoleManager<B2HRole> _roleManager;
		private readonly IConfiguration _configuration;
		public UsersController(UserManager<B2HUser> userManager, RoleManager<B2HRole> roleManager, IConfiguration configuration)
		{
			_userManager = userManager;
			_roleManager = roleManager;
			_configuration = configuration;
		}

		[HttpGet]
		[Authorize]
		public async Task<ActionResult<IEnumerable<UserDto>>> GetUsers()
		{
			var users = await _userManager.Users.ToListAsync();
			var authUserDtos = users.Select(async (x) => x.ToDto(string.Join(",", await _userManager.GetRolesAsync(x)) ?? Roles.User));
			return Ok(authUserDtos);
		}

		[HttpGet("{id}")]
		[Authorize]
		public async Task<ActionResult<UserDto>> GetUser(Guid id)
		{
			var user = await _userManager.FindByIdAsync(id.ToString());
			if (user == null)
				return NotFound();
			return Ok(user.ToDto(string.Join(",", await _userManager.GetRolesAsync(user))));
		}

		[HttpPost]
		[Authorize(Policy = "AdminPolicy")]
		public async Task<ActionResult<UserDto>> CreateUser(CreateUserDto createUserDto)
		{
			var user = new B2HUser
			{
				Email = createUserDto.Email,
				UserName = createUserDto.UserName,
				FirstName = createUserDto.FirstName,
				LastName = createUserDto.LastName,
				MiddleName = createUserDto.MiddleName
			};
			var result = await _userManager.CreateAsync(user, createUserDto.Password);
			if (!result.Succeeded)
				return BadRequest(result.Errors);
			await _userManager.AddToRoleAsync(user, Roles.User);
			return Ok(user.ToDto(Roles.User));
		}
		[HttpPut("{id}/role/{roleName}")]
		[Authorize(Policy = "AdminPolicy")]
		public async Task<ActionResult> ChangeUserRole(Guid id, string roleName)
		{
			var user = await _userManager.FindByIdAsync(id.ToString());
			if (user == null)
				return NotFound();
			if (!await _roleManager.RoleExistsAsync(roleName))
			return BadRequest($"Роль '{roleName}' не существует.");
			var currentRoles = await _userManager.GetRolesAsync(user);
			await _userManager.RemoveFromRolesAsync(user, currentRoles);
			var result = await _userManager.AddToRoleAsync(user, roleName);

			if (!result.Succeeded)
				return BadRequest(result.Errors);

			return Ok();
		}
		[HttpPut("{id}/deactivate")]
		[Authorize(Policy = "AdminPolicy")]
		public async Task<ActionResult> DeactivateUser(Guid id)
		{
			var user = await _userManager.FindByIdAsync(id.ToString());
			if (user == null)
				return NotFound();

			user.IsActived = false;
			var result = await _userManager.UpdateAsync(user);
			if (!result.Succeeded)
				return BadRequest(result.Errors);

			return NoContent();
		}
		[HttpPut("{id}/activate")]
		[Authorize(Policy = "AdminPolicy")]
		public async Task<ActionResult> ActivateUser(Guid id)
		{
			var user = await _userManager.FindByIdAsync(id.ToString());
			if (user == null)
				return NotFound();

			user.IsActived = true;
			var result = await _userManager.UpdateAsync(user);
			if (!result.Succeeded)
				return BadRequest(result.Errors);

			return NoContent();
		}
	}
}
