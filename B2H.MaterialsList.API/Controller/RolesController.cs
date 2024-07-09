using B2H.MaterialsList.Core.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using static B2H.MaterialsList.API.HostingExtensions;

namespace B2H.MaterialsList.API.Controller
{
	[ApiController]
	[Route("api/roles")]
	public class RolesController : ControllerBase
	{
		private readonly UserManager<B2HUser> _userManager;
		private readonly RoleManager<B2HRole> _roleManager;

		public RolesController(UserManager<B2HUser> userManager, RoleManager<B2HRole> roleManager)
		{
			_userManager = userManager;
			_roleManager = roleManager;
		}

		[HttpGet]
		[Authorize(Policy = "AdminPolicy")]
		public async Task<ActionResult<IEnumerable<string>>> GetRoles()
		{
			var roles = await _roleManager.Roles.Select(r => r.Name).ToListAsync();
			return roles;
		}

		[HttpPost("{userId}/{roleName}")]
		[Authorize(Policy = "AdminPolicy")]
		public async Task<ActionResult> AddUserToRole(Guid userId, string roleName)
		{
			if (!await _roleManager.RoleExistsAsync(roleName))
				return BadRequest($"Роль '{roleName}' не существует.");

			// Остальной код метода
			var user = await _userManager.FindByIdAsync(userId.ToString());
			if (user == null)
				return NotFound();

			var result = await _userManager.AddToRoleAsync(user, roleName);
			if (!result.Succeeded)
				return BadRequest(result.Errors);

			return Ok();
		}
		[HttpDelete("{userId}/{roleName}")]
		[Authorize(Policy = "AdminPolicy")]
		public async Task<ActionResult> RemoveUserFromRole(Guid userId, string roleName)
		{
			var user = await _userManager.FindByIdAsync(userId.ToString());
			if (user == null)
				return NotFound();

			if (!await _roleManager.RoleExistsAsync(roleName))
				return BadRequest($"Роль '{roleName}' не существует.");

			var result = await _userManager.RemoveFromRoleAsync(user, roleName);
			if (!result.Succeeded)
				return BadRequest(result.Errors);

			return Ok();
		}
	}
}

