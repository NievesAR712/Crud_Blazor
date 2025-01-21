namespace Crud_Blazr.Presentation
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
        }

        protected override Window CreateWindow(IActivationState? activationState)
        {
            return new Window(new MainPage()) { Title = "Crud_Blazr.Presentation" };
        }
    }
}
