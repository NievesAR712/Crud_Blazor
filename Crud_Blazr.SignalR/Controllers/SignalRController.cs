using System.Diagnostics;
using System.Text.Json;
using Crud_Blazr.SignalR.Serv.Comandos;
using Crud_Blazr.SignalR.Serv.Diccionario;
using Crud_Blazr.SignalR.Serv.Enums;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SignalR;

namespace Crud_Blazr.SignalR.Controllers
{
    public class SignalRController : Hub
    {
        private readonly CommandHandlerService commandHandlerService;
        public SignalRController()
        {
            commandHandlerService = new CommandHandlerService();
        }
        public async Task SendMessage(string user, string message)
        {
            // Envía un mensaje a todos los clientes conectados
            await Clients.All.SendAsync("ReceiveMessage", user, message);
        }
        public async Task IncomingMessage(ComandoUser comandoUser)
        {
            var commandType = comandoUser.Command;
            Debug.WriteLine($"Comando recibido: {commandType}");
            if (commandHandlerService.Commands.TryGetValue((Serv.Enums.CommandType)commandType, out var command))
            {
                var result = await command.Execute(comandoUser);
                Debug.WriteLine(result.GetType());
                await Clients.All.SendAsync("IncomingMessage", result);
                Debug.WriteLine($"Comando ejecutado: {commandType}");
            }
            else
            {
                Debug.WriteLine($"Comando no ejecutado: {commandType}");
            }
        }
    }
}
