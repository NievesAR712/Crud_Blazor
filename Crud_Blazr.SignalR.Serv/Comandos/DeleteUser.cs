using System;
using System.Net.Http;
using System.Threading.Tasks;
using System.Text.Json;
using Crud_Blazr.SignalR.Serv.Enums;
using Crud_Blazr.SignalR.Serv.Interfaces;
using System.Windows.Markup;

namespace Crud_Blazr.SignalR.Serv.Comandos
{
    public class DeleteUser : IEntryCommandHandler
    {
        private static readonly HttpClient _httpClient = new HttpClient();  
        public int Id { get; set; }
        public async Task<ComandoUser> Execute(ComandoUser commandData)
        {
            // Aquí suponemos que 'Data' es un string JSON con la información del usuario o datos a eliminar
            var data = JsonSerializer.Deserialize<Dictionary<string, JsonElement>>(commandData.Data);

            if (data != null && data.ContainsKey("Id"))
            {
                var idElement = data["Id"];

                // Verifica si el elemento es un número y lo convierte
                if (idElement.TryGetInt32(out int id))
                {
                    Id = id;    
                    Console.WriteLine($"Id: {id}");
                }
                else
                {
                    // Si no es un número, puedes manejar el caso de otra forma
                    Console.WriteLine("El Id no es un número válido.");
                }
            }
            // Llamada a la API para eliminar datos
            var apiUrl = $"https://localhost:7070/api/users/{Id}";  // URL dinámica para las operaciones
            var response = await _httpClient.DeleteAsync(apiUrl);  // Solicitud DELETE

            if (response.IsSuccessStatusCode)
            {
                Console.WriteLine("Operación de eliminación exitosa.");
            }
            else
            {
                Console.WriteLine($"Error al eliminar datos: {response.ReasonPhrase}");
            }

            // Crear un nuevo comando de respuesta (sin necesidad de datos específicos)
            return new ComandoUser
            {
                Command = commandData.Command,  // Comando recibido
                Data = commandData.Data         // Datos recibidos (en este caso JSON o string genérico)
            };
        }
    }
}
