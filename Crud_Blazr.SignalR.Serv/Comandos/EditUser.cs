using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using Crud_Blazr.Core.Models;
using Crud_Blazr.SignalR.Serv.Enums;
using Crud_Blazr.SignalR.Serv.Interfaces;

namespace Crud_Blazr.SignalR.Serv.Comandos
{
    public class EditUser : IEntryCommandHandler
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
                    Command = CommandType.UpdateUser,
                    Data = string.Empty
                };
            }
            var outCommand = GetCommand();
            return Task.FromResult(outCommand);
        }

        public async Task Correr(Usuario usuario)
        {
            await userService.UpdateUserAsync(usuario);
        }
    }
}
