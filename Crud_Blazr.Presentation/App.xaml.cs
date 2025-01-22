using System.Diagnostics;

namespace Crud_Blazr.Presentation
{
    public partial class App : Microsoft.Maui.Controls.Application
    {
        public App()
        {
            InitializeComponent();
            AppDomain.CurrentDomain.UnhandledException += (sender, args) =>
            {
                var exception = args.ExceptionObject as Exception;
                Debug.WriteLine($"Unhandled exception: {exception?.Message}");
            };
        }

        protected override Window CreateWindow(IActivationState? activationState)
        {
            AppDomain.CurrentDomain.UnhandledException += (sender, args) =>
            {
                var exception = args.ExceptionObject as Exception;
                Debug.WriteLine($"Unhandled exception: {exception?.Message}");
            };
            return new Window(new MainPage()) { Title = "Crud_Blazr.Presentation" };
        }
    }
}
