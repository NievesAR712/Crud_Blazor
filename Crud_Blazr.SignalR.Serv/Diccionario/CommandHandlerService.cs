using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Crud_Blazr.SignalR.Serv.Comandos;
using Crud_Blazr.SignalR.Serv.Enums;
using Crud_Blazr.SignalR.Serv.Interfaces;

namespace Crud_Blazr.SignalR.Serv.Diccionario
{
    public class CommandHandlerService
    {
        public Dictionary<CommandType,IEntryCommandHandler> Commands { get; private set; }
        public CommandHandlerService()
        {
            Commands = new Dictionary<CommandType, IEntryCommandHandler>
            {
                {CommandType.AddUser, new AddUser()},
                {CommandType.UpdateUser, new EditUser()},
                {CommandType.DeleteUser,new DeleteUser()}
            };
        }
    }
}
