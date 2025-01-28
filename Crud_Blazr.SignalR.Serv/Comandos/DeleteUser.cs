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
    public class DeleteUser : IEntryCommandHandler
    {
        private Usuario User = new Usuario();
        UserService userService = new UserService();
        public Task<ComandoUser> Execute(ComandoUser user)
        {
            ComandoUser GetCommand()
            {
                User = JsonSerializer.Deserialize<Usuario>(user.Data);
                Debug.WriteLine(user.Data);
                Correr(User);
                return new ComandoUser
                {
                    Command = CommandType.DeleteUser,
                    Data = string.Empty
                };
            }
            var outCommand = GetCommand();
            return Task.FromResult(outCommand);
        }

        public async Task Correr(Usuario usuario)
        {
            await userService.DeleteUserAsync(usuario.Id);
        }
    }
}
