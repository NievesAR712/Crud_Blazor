using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;
using Crud_Blazr.SignalR.Serv.Enums;
using Crud_Blazr.SignalR.Serv.Interfaces;
using Crud_Blazr.Application.Services;
using Crud_Blazr.Core.Models;
using System.Text.Json;
using System.Diagnostics;

namespace Crud_Blazr.SignalR.Serv.Comandos
{
    public class AddUser : IEntryCommandHandler
    {
        private Usuario newUser = new Usuario();
        UserService userService = new UserService();
        public Task<ComandoUser> Execute(ComandoUser user)
        {
            ComandoUser GetCommand()
            {
                newUser = JsonSerializer.Deserialize<Usuario>(user.Data);
                Debug.WriteLine(user.Data);
                Correr(newUser);
                return new ComandoUser
                {
                    Command = CommandType.AddUser,
                    Data = string.Empty
                };    
            }
            var outCommand = GetCommand();
            return Task.FromResult(outCommand);
        }

        public async Task Correr(Usuario usuario)
        {
            await userService.AddUserAsync(usuario);
        }
    }
}
