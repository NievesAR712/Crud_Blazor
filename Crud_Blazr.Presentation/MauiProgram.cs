using Crud_Blazr.Application.Services;
using Crud_Blazr.Core.Interface;
using Crud_Blazr.Infrastructure.DataAccess;
using Crud_Blazr.Infrastructure.Repositories;
using Microsoft.Extensions.Logging;


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
            builder.Services.AddDbContext<AppDbContext>();  // Registra el contexto de datos
            builder.Services.AddScoped<IUserRepository, UsuarioRepository>();  // Registra el repositorio
            builder.Services.AddScoped<UserService>();

#if DEBUG
            builder.Services.AddBlazorWebViewDeveloperTools();
    		builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
