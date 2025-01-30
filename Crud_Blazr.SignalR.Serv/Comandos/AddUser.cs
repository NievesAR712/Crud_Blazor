using Crud_Blazr.SignalR.Serv.Interfaces;
using System.Diagnostics;

namespace Crud_Blazr.SignalR.Serv.Comandos
{
    public class AddUser : IEntryCommandHandler
    {
        private static readonly HttpClient _httpClient = new HttpClient();  
        public async Task<ComandoUser> Execute(ComandoUser commandData)
        {
                    var apiUrl = "https://localhost:7070/api/users";
                    var content = new StringContent(commandData.Data, System.Text.Encoding.UTF8, "application/json");

                    var response = await _httpClient.PostAsync(apiUrl, content); 

                    if (response.IsSuccessStatusCode)
                    {
                        Debug.WriteLine("Usuario agregado exitosamente.");
                    }
                    else
                    {
                        Debug.WriteLine($"Error al agregar usuario: {response.ReasonPhrase}");
                    }

            return new ComandoUser
            {
                Command = commandData.Command,
                Data = commandData.Data
            };
        }
    }
}
