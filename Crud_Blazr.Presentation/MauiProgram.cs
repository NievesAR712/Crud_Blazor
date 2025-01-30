using System.Diagnostics;
using Crud_Blazr.Application.Services;
using Crud_Blazr.Core.Interface;
using Crud_Blazr.Infrastructure.DataAccess;
using Crud_Blazr.Infrastructure.Repositories;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Http;


namespace Crud_Blazr.Presentation
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });
            builder.Services.AddMauiBlazorWebView();
            builder.Services.AddHttpClient<PokeApiService>();
            builder.Services.AddScoped<IUserRepository, UsuarioRepository>();  
            builder.Services.AddScoped<UserService>();
            builder.Services.AddHttpClient("Api", client =>
            {
                client.BaseAddress = new Uri("https://localhost:7070/api/");
            });

#if DEBUG
            builder.Services.AddBlazorWebViewDeveloperTools();
    		builder.Logging.AddDebug();
#endif
         
            return builder.Build();
        }
    }
}
