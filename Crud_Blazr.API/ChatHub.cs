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
        public async Task NotifyUserAdded(string userName)
        {
            await Clients.All.SendAsync("UserAdded", userName);
        }

        public async Task NotifyUserDeleted(int userId)
        {
            await Clients.All.SendAsync("UserDeleted", userId);
        }

        public async Task NotifyUserEdit(int userId)
        {
            await Clients.All.SendAsync("UserEdit", userId);
        }
    }
}
