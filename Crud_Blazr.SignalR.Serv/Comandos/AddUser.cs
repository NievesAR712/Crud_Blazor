using System;
using System.Net.Http;
using System.Threading.Tasks;
using System.Text.Json;
using Crud_Blazr.SignalR.Serv.Enums;
using Crud_Blazr.SignalR.Serv.Interfaces;
using System.Collections.Generic;
using System.Diagnostics;

namespace Crud_Blazr.SignalR.Serv.Comandos
{
    public class AddUser : IEntryCommandHandler
    {
        private static readonly HttpClient _httpClient = new HttpClient();  // HttpClient estático para evitar inyección de dependencias
        public async Task<ComandoUser> Execute(ComandoUser commandData)
        {
            // Deserializa el JSON recibido a un Diccionario de claves y valores
            var data = JsonSerializer.Deserialize<Dictionary<string, JsonElement>>(commandData.Data);

            if (data != null && data.ContainsKey("Name") && data.ContainsKey("Email"))
            {
                var nameElement = data["Name"];
                var emailElement = data["Email"];
                var phoneElement = data.GetValueOrDefault("Phone");
                var passwordElement = data.GetValueOrDefault("Password");

                // Verifica y obtiene los valores como strings
                if (nameElement.ValueKind == JsonValueKind.String && emailElement.ValueKind == JsonValueKind.String)
                {
                    var name = nameElement.GetString();
                    var email = emailElement.GetString();
                    var phone = phoneElement.ValueKind == JsonValueKind.String ? phoneElement.GetString() : null;
                    var password = passwordElement.ValueKind == JsonValueKind.String ? passwordElement.GetString() : null;

                    // URL de la API para agregar un nuevo usuario
                    var apiUrl = "https://localhost:7070/api/users";
                    var jsonContent = JsonSerializer.Serialize(new { Name = name, Email = email, Phone = phone, Password = password });
                    var content = new StringContent(jsonContent, System.Text.Encoding.UTF8, "application/json");

                    var response = await _httpClient.PostAsync(apiUrl, content);  // Solicitud POST

                    if (response.IsSuccessStatusCode)
                    {
                        Debug.WriteLine("Usuario agregado exitosamente.");
                    }
                    else
                    {
                        Debug.WriteLine($"Error al agregar usuario: {response.ReasonPhrase}");
                    }
                }
                else
                {
                    Debug.WriteLine("Datos de usuario inválidos.");
                }
            }
            else
            {
                Debug.WriteLine("Datos de usuario incompletos.");
            }

            // Crear y retornar el comando de respuesta (sin datos específicos)
            return new ComandoUser
            {
                Command = commandData.Command,
                Data = commandData.Data
            };
        }
    }
}
