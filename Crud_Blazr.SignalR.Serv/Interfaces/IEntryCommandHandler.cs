using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Crud_Blazr.SignalR.Serv.Comandos;

namespace Crud_Blazr.SignalR.Serv.Interfaces
{
    public  interface IEntryCommandHandler
    {
        Task<ComandoUser> Execute(ComandoUser user);
    }
}
