using Crud_Blazr.Core.Interface;
using Crud_Blazr.Infrastructure.DataAccess;
using Crud_Blazr.Infrastructure.Repositories;
using Crud_Blazr.SignalR.Controllers;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();

builder.Services.AddSignalR();
builder.Services.AddOpenApi();
builder.Logging.SetMinimumLevel(LogLevel.Debug);

var app = builder.Build();
app.UseCors(c => c.AllowAnyHeader().AllowAnyOrigin().AllowAnyMethod());

if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}

app.UseCors("AllowAll");
app.MapHub<SignalRController>("/signalRHub");

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();