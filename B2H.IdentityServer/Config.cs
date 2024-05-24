using Duende.IdentityServer.Models;

namespace B2H.IdentityServer;

public static class Config
{
    public static IEnumerable<IdentityResource> IdentityResources =>
        new IdentityResource[]
        { 
            new IdentityResources.OpenId()
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
        }
    };

}