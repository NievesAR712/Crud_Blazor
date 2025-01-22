using System.Diagnostics;
namespace Crud_Blazr.Presentation
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            AppDomain.CurrentDomain.UnhandledException += (sender, args) =>
            {
                var exception = args.ExceptionObject as Exception;
                Debug.WriteLine($"Unhandled exception: {exception?.Message}");
            };
        }
    }
}
