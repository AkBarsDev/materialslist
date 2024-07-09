using B2H.MaterialsList.Core.Models;
using Microsoft.AspNetCore.Identity;
using static B2H.MaterialsList.API.HostingExtensions;

namespace B2H.MaterialsList.API
{
	public class RoleInitializerService : IHostedService
	{
		private readonly RoleManager<B2HRole> _roleManager;

		public RoleInitializerService(RoleManager<B2HRole> roleManager)
		{
			_roleManager = roleManager;
		}

		public async Task StartAsync(CancellationToken cancellationToken)
		{
			await EnsureRolesCreated();
		}

		public Task StopAsync(CancellationToken cancellationToken)
		{
			return Task.CompletedTask;
		}

		private async Task EnsureRolesCreated()
		{
			var roles = new[] { Roles.Admin, Roles.Resource, Roles.TIM, Roles.Architect, Roles.User };
			foreach (var role in roles)
			{
				if (!await _roleManager.RoleExistsAsync(role))
				{
					await _roleManager.CreateAsync(new B2HRole { Name = role });
				}
			}
		}
	}
}
