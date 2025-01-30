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
            var data = JsonSerializer.Deserialize<Dictionary<string, JsonElement>>(commandData.Data);
            var idElement = data["Id"];
            if (idElement.TryGetInt32(out int id))
            {
                Id = id;    
                Console.WriteLine($"Id: {id}");
            }
            else
            {
                Console.WriteLine("El Id no es un número válido.");
            }
            
            var apiUrl = $"https://localhost:7070/api/users/{Id}";  
            var response = await _httpClient.DeleteAsync(apiUrl);  

            if (response.IsSuccessStatusCode)
            {
                Console.WriteLine("Operación de eliminación exitosa.");
            }
            else
            {
                Console.WriteLine($"Error al eliminar datos: {response.ReasonPhrase}");
            }
            return new ComandoUser
            {
                Command = commandData.Command, 
                Data = commandData.Data         
            };
        }
    }
}
