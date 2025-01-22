
using System.ComponentModel.DataAnnotations;
using Crud_Blazr.Core.Interface;
using Crud_Blazr.Core.Models;

namespace Crud_Blazr.Presentation.ViewModels
{
    public class UserAddViewModel
    {
        private readonly IUserRepository _userRepository;

        public Usuario User { get; set; } = new();
        public bool IsSaving { get; private set; }

        public UserAddViewModel(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        public async void SaveUser()
        {
            IsSaving = true;
            try
            {
                // Validar los datos del usuario
                ValidateUser();

                // Guardar en la base de datos
                await _userRepository.AddAsync(User);
                // Navegar o mostrar un mensaje de éxito
                Console.WriteLine("Usuario agregado correctamente.");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error al guardar el usuario: {ex.Message}");
            }
            finally
            {
                IsSaving = false;
            }
        }

        private void ValidateUser()
        {
            // Validaciones básicas con anotaciones de datos
            var context = new ValidationContext(User, null, null);
            Validator.ValidateObject(User, context, validateAllProperties: true);
        }

        public void Cancel()
        {
            // Lógica para cancelar y navegar a otra vista
            Console.WriteLine("Operación cancelada.");
        }
    }
}
