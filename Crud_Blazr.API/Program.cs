using Crud_Blazr.Core.Interface;
using Crud_Blazr.Infrastructure.DataAccess;
using Crud_Blazr.Infrastructure.Repositories;
using Microsoft.EntityFrameworkCore;
var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();

// Registra repositorios e interfaces
builder.Services.AddScoped<IUserRepository, UsuarioRepository>();
builder.Services.AddDbContext<AppDbContext>(options => options.UseSqlServer("Server=(localdb)\\NievesLocal;Database=Crud_Blazor1;Trusted_Connection=True;"));
// Learn more about configuring OpenAPI at https://aka.ms/aspnet/openapi
builder.Services.AddSignalR();
builder.Services.AddOpenApi();

var app = builder.Build();
app.UseCors(c => c.AllowAnyHeader().AllowAnyOrigin().AllowAnyMethod());
// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}
app.UseCors("AllowAll");

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
