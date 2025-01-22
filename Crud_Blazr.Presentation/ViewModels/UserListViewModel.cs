using System.Collections.ObjectModel;
using System.Diagnostics;
using Crud_Blazr.Core.Interface;
using Crud_Blazr.Core.Models;

namespace Crud_Blazr.Presentation.ViewModels
{
    public class UserListViewModel
    {
        public bool IsLoading { get; set; }
        public List<Usuario> Users { get; set; }

        public UserListViewModel()
        {
            Users = new List<Usuario>();
            IsLoading = true;
        }

        public async Task LoadUsersAsync()
        {
            try
            {
                IsLoading = true;
                // Simulando la carga de datos o una llamada a la API
                await Task.Delay(1000);  // Reemplaza con una llamada a la base de datos o API
                Users = new List<Usuario>
            {
                new Usuario { Id = 1, Name = "Juan Pérez", Email = "juan@email.com", Phone = "123456789" },
                new Usuario { Id = 2, Name = "Ana Gómez", Email = "ana@email.com", Phone = "987654321" }
            };
                IsLoading = false;
            }
            catch (Exception ex)
            {
                // Log o manejo de error
                Debug.WriteLine($"Error al cargar los usuarios: {ex.Message}");
                // También puedes actualizar alguna propiedad para mostrar un mensaje de error en la UI
                IsLoading = false;
                // ShowErrorMessage("Error al cargar los usuarios");
            }
        }
    }

}
