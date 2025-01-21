using Crud_Blazr.Core.Interface;
using Crud_Blazr.Core.Models;

namespace Crud_Blazr.Infrastructure.Repositories
{
    public class UsuarioRepository : IUserRepository
    {
        private readonly List<Usuario> _users = new();

        public Task<IEnumerable<Usuario>> GetAllAsync() => Task.FromResult((IEnumerable<Usuario>)_users);

        public Task<Usuario> GetByIdAsync(int id) => Task.FromResult(_users.FirstOrDefault(u => u.Id == id));

        public Task AddAsync(Usuario user)
        {
            _users.Add(user);
            return Task.CompletedTask;
        }

        public Task UpdateAsync(Usuario user)
        {
            var existingUser = _users.FirstOrDefault(u => u.Id == user.Id);
            if (existingUser != null)
            {
                existingUser.Name = user.Name;
                existingUser.Email = user.Email;
                existingUser.Password = user.Password;
            }
            return Task.CompletedTask;
        }

        public Task DeleteAsync(int id)
        {
            var user = _users.FirstOrDefault(u => u.Id == id);
            if (user != null)
            {
                _users.Remove(user);
            }
            return Task.CompletedTask;
        }
    }
}
