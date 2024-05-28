using Duende.IdentityServer;
using Duende.IdentityServer.Models;
using IdentityModel;

namespace B2H.IdentityServer;

public static class Config
{
    public static IEnumerable<IdentityResource> IdentityResources =>
        new IdentityResource[]
        { 
            new IdentityResources.OpenId(),
            new IdentityResource()
            {
                Name = "verification",
                UserClaims = new List<string>
                {
                    JwtClaimTypes.Email,
                    JwtClaimTypes.EmailVerified
                }
            }
        };

    public static IEnumerable<ApiScope> ApiScopes =>
    new ApiScope[]
    {
        new ApiScope(name: "m-backend", displayName: "api-materials")
    };
    public static IEnumerable<Client> Clients =>
    new Client[]
    {
        new Client
        {
            ClientId = "client",

            // no interactive user, use the clientid/secret for authentication
            AllowedGrantTypes = GrantTypes.ClientCredentials,

            // secret for authentication
            ClientSecrets =
            {
                new Secret("b2hSecret".Sha256())
            },

            // scopes that client has access to
            AllowedScopes = { "m-backend" }
        },
         new Client
        {
            ClientId = "web",
            ClientSecrets = { new Secret("b2hSecret".Sha256()) },

            AllowedGrantTypes = GrantTypes.Code,
            
            // where to redirect to after login
            RedirectUris = { $"{Environment.GetEnvironmentVariable("URL_GLOBALUI")}/signin-oidc" },

            // where to redirect to after logout
            PostLogoutRedirectUris = { $"{Environment.GetEnvironmentVariable("URL_GLOBALUI")}/signout-callback-oidc" },

            AllowedScopes =
            {
                IdentityServerConstants.StandardScopes.OpenId,
                IdentityServerConstants.StandardScopes.Profile,
                "verification"
            }
        }
    };

}