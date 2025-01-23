using Microsoft.AspNetCore.SignalR;

namespace Crud_Blazr.API
{
    public class ChatHub : Hub
    {
        public async Task SendMessage(string user, string message)
        {
            // Envía un mensaje a todos los clientes conectados
            await Clients.All.SendAsync("ReceiveMessage", user, message);
        }
    }
}
