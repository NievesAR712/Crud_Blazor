using System.Diagnostics;
using System.Text.Json;
using Crud_Blazr.SignalR.Serv.Interfaces;


namespace Crud_Blazr.SignalR.Serv.Comandos
{
    public class EditUser : IEntryCommandHandler
    {
        private static readonly HttpClient _httpClient = new HttpClient();  // HttpClient estático para evitar inyección de dependencias
        public async Task<ComandoUser> Execute(ComandoUser commandData)
        {
            var data = JsonSerializer.Deserialize<Dictionary<string, JsonElement>>(commandData.Data);
                var idElement = data["Id"];
                var id = idElement.GetInt32();
                var apiUrl = $"https://localhost:7070/api/users/{id}";
                var content = new StringContent(commandData.Data, System.Text.Encoding.UTF8, "application/json");              
                var response = await _httpClient.PutAsync(apiUrl, content);  // Solicitud PUT

                if (response.IsSuccessStatusCode)
                {
                    Debug.WriteLine("Usuario actualizado exitosamente.");
                }
                else
                {
                    Debug.WriteLine($"Error al actualizar usuario: {response.ReasonPhrase}");
                }
           
            return new ComandoUser
            {
                Command = commandData.Command,
                Data = commandData.Data
            };
        }
    }
}
