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
            // Deserializa el JSON recibido a un Diccionario de claves y valores
            var data = JsonSerializer.Deserialize<Dictionary<string, JsonElement>>(commandData.Data);

            if (data != null && data.ContainsKey("Id"))
            {
                var idElement = data["Id"];
                var id = idElement.GetInt32();

                // Verifica y obtiene otros campos como 'Name', 'Email', 'Phone', 'Password', etc.
                var nameElement = data.GetValueOrDefault("Name");
                var emailElement = data.GetValueOrDefault("Email");
                var phoneElement = data.GetValueOrDefault("Phone");
                var passwordElement = data.GetValueOrDefault("Password");

                string name = nameElement.ValueKind == JsonValueKind.String ? nameElement.GetString() : null;
                string email = emailElement.ValueKind == JsonValueKind.String ? emailElement.GetString() : null;
                string phone = phoneElement.ValueKind == JsonValueKind.String ? phoneElement.GetString() : null;
                string password = passwordElement.ValueKind == JsonValueKind.String ? passwordElement.GetString() : null;
                Debug.WriteLine(id);
                // URL de la API para editar un usuario
                var apiUrl = $"https://localhost:7070/api/users/{id}";
                var jsonContent = JsonSerializer.Serialize(new { Id = id, Name = name, Email = email, Phone = phone, Password = password });
                var content = new StringContent(jsonContent, System.Text.Encoding.UTF8, "application/json");
               

                var response = await _httpClient.PutAsync(apiUrl, content);  // Solicitud PUT

                if (response.IsSuccessStatusCode)
                {
                    Debug.WriteLine("Usuario actualizado exitosamente.");
                }
                else
                {
                    Debug.WriteLine($"Error al actualizar usuario: {response.ReasonPhrase}");
                }
            }
            else
            {
                Debug.WriteLine("Datos de usuario incompletos.");
            }
           
            return new ComandoUser
            {
                Command = commandData.Command,
                Data = commandData.Data
            };
        }
    }
}
