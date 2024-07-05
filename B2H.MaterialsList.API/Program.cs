
using B2H.MaterialsList.API;
using Serilog;
using System.Reflection;
using System.Text;

Log.Logger = new LoggerConfiguration()
	.MinimumLevel.Information()
	.Enrich.WithProperty("Application", "Backend")
	.WriteTo.Console()
	.WriteTo.Seq("http://seq:5341")
	.CreateLogger();

Log.Information("Starting up");
//try
//{
    var builder = WebApplication.CreateBuilder(args);

    builder.Host.UseSerilog((ctx, lc) => lc
        .WriteTo.Console(outputTemplate: "[{Timestamp:HH:mm:ss} {Level}] {SourceContext}{NewLine}{Message:lj}{NewLine}{Exception}{NewLine}")
        .Enrich.FromLogContext()
        .ReadFrom.Configuration(ctx.Configuration));

    var app = builder
        .ConfigureServices()
        .ConfigurePipeline();

    app.Run();
//}
//catch (ReflectionTypeLoadException ex)
//{
//	StringBuilder sb = new StringBuilder();
//	foreach (Exception exSub in ex.LoaderExceptions)
//	{
//		sb.AppendLine(exSub.Message);
//		FileNotFoundException exFileNotFound = exSub as FileNotFoundException;
//		if (exFileNotFound != null)
//		{
//			if (!string.IsNullOrEmpty(exFileNotFound.FusionLog))
//			{
//				sb.AppendLine("Fusion Log:");
//				sb.AppendLine(exFileNotFound.FusionLog);
//			}
//		}
//		sb.AppendLine();
//	}
//	string errorMessage = sb.ToString();
//	//Display or log the error based on your application.
//	Log.Fatal(errorMessage, "ReflectionTypeLoadException");
//}
//catch (Exception ex)
//{
//    Log.Fatal(ex, "Unhandled exception");
//}
//finally
//{
//    Log.Information("Shut down complete");
//    Log.CloseAndFlush();
//}