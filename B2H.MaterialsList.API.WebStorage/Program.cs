using Microsoft.EntityFrameworkCore;
using B2H.MaterialsList.Core.Service;
using B2H.MaterialsList.API.WebStorage.Service;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;
using B2H.MaterialsList.Infrastructure.Repository;
using B2H.MaterialsList.API.WebStorage;
using B2H.MaterialsList.Core.Models;
using Serilog;
using B2H.MaterialsList.API;


Log.Logger = new LoggerConfiguration()
	.MinimumLevel.Information()
	.Enrich.WithProperty("Application", "Web-Storage")
	.WriteTo.Console()
	.WriteTo.Seq("http://seq:5341")
	.CreateLogger();

Log.Information("Starting up");

try
{
	var builder = WebApplication.CreateBuilder(args);

	builder.Host.UseSerilog((ctx, lc) => lc
		.WriteTo.Console(outputTemplate: "[{Timestamp:HH:mm:ss} {Level}] {SourceContext}{NewLine}{Message:lj}{NewLine}{Exception}{NewLine}")
		.Enrich.FromLogContext()
		.ReadFrom.Configuration(ctx.Configuration));
	var app = builder
		.ConfigureServices()
		.ConfigurePipeline();
	app.Run();
}
catch (Exception ex)
{
	Log.Fatal(ex, "Unhandled exception");
}
finally
{
	Log.Information("Shut down complete");
	Log.CloseAndFlush();
}