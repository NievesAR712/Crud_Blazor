using System.Diagnostics;
using Crud_Blazr.SignalR.Serv.Enums;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SignalR;

namespace Crud_Blazr.SignalR.Controllers
{
    public class SignalRController : Hub
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

        public async Task Commandos(CommandType commandType)
        {
            switch (commandType)
            {
                case CommandType.DeleteUser:
                    Debug.WriteLine("Se elimino");
                    await Clients.All.SendAsync("UserDeleted", commandType);
                    break;
            }
        }
    }
}
