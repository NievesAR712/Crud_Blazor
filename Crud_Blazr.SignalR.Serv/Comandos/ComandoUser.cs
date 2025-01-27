
using Crud_Blazr.SignalR.Serv.Enums;

namespace Crud_Blazr.SignalR.Serv.Comandos
{
    public class ComandoUser
    {
        public CommandType Command { get; set; }
        public string Data { get; set; } = string.Empty;
    }
}
