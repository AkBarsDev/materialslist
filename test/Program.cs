using Microsoft.EntityFrameworkCore;
//using AutoMapper;
using B2H.MaterialsList.Core.ApprovalManagement;
using B2H.MaterialsList.Core.ApprovalManagement.Interface;
using B2H.MaterialsList.Core.Service;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;
using B2H.MaterialsList.Infrastructure.Repository;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddCors();
builder.Services.AddDbContext<MaterialsListContext>(option => option.UseSqlServer(builder.Configuration.GetConnectionString("MSServerConnection")));
builder.Services.AddScoped<IMaterialRepository, MaterialRepository>();
builder.Services.AddScoped<ICategoryRepository, CategoryRepository>();
builder.Services.AddScoped<IBreadcrumbAwareRepository, BreadcrumbAwareRepository>();
builder.Services.AddScoped<IMaterialImageRepository, MaterialImageRepository>();
builder.Services.AddScoped<IMaterialsService, MaterialsService>();
builder.Services.AddScoped<ICategoryRepository, CategoryRepository>();
builder.Services.AddControllers();
//IMapper mapper = MappingConfig.RegisterMaps().CreateMapper();
//builder.Services.AddSingleton(mapper);
//builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();
app.UseCors(builder => builder.AllowAnyOrigin());
// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
	app.UseDeveloperExceptionPage();
	app.UseSwagger();
	app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();
app.Run();
