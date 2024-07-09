using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.Core.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace B2H.MaterialsList.Core.Mapper.Externsions
{
	public static class UserExtentions
	{
		public static AuthUserDto ToDto(this B2HUser user, string role, string accessToken)
		{
			return new AuthUserDto(
					user.Id,
					user.UserName,
					user.FirstName,
					user.LastName,
					user.MiddleName,
					user.Email,
					role,
					accessToken
					);
		}
		public static UserDto ToDto(this B2HUser user, string role)
		{
			return new UserDto(
					user.Id,
					user.UserName,
					user.FirstName,
					user.LastName,
					user.MiddleName,
					user.Email,
					role,
					user.IsActived
					);
		}
	}
}
