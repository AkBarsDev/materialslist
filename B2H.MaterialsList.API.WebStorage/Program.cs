using Microsoft.EntityFrameworkCore;
using B2H.MaterialsList.Core.Service;
using B2H.MaterialsList.API.WebStorage.Service;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;
using B2H.MaterialsList.Infrastructure.Repository;
using B2H.MaterialsList.API.WebStorage;
using B2H.MaterialsList.Core.Models;
using System.Runtime;
using System.Diagnostics.Eventing.Reader;
var builder = WebApplication.CreateBuilder(args);
if(Environment.GetEnvironmentVariable("SOURCE_STORAGE") != null)
	SD.PathStorageBase ="/home/";
else
	SD.PathStorageBase = builder.Configuration.GetSection("Resourse")["PathStorageBase"];
if (!Directory.Exists(SD.PathStorageBase))
    throw new Exception("PathStorageBase - Пуст, укажите другой путь в SOURCE_STORAGE=\"PATH\"");
builder.Services.AddCors();
// Add services to the container.
if (Environment.GetEnvironmentVariable("CONNECTINGSTRING") != null)
	builder.Services.AddDbContext<MaterialsListContext>(option => option.UseSqlServer(Environment.GetEnvironmentVariable("CONNECTINGSTRING")));
else
	builder.Services.AddDbContext<MaterialsListContext>(option => option.UseSqlServer(builder.Configuration.GetConnectionString("MSServerConnection")));

builder.Services.AddControllers();

builder.Services.AddScoped<IFileManagerService<Filebase>, FileManagerSevice>();
builder.Services.AddScoped<IFileManagerService<Image>, ImageManagerService>();
builder.Services.AddScoped<IEntityIntRepository<Filebase>, MSEntityIntRepository<Filebase>>();
builder.Services.AddScoped<IEntityIntRepository<Image>, MSEntityIntRepository<Image>>();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();


var app = builder.Build();
app.UseCors(builder => builder.AllowAnyOrigin());
// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

//app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
