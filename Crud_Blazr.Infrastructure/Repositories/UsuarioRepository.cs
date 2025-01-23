using Crud_Blazr.Core.Interface;
using Crud_Blazr.Core.Models;
using Crud_Blazr.Infrastructure.DataAccess;
using Microsoft.EntityFrameworkCore;

namespace Crud_Blazr.Infrastructure.Repositories
{
    public class UsuarioRepository : IUserRepository
    {
        private readonly AppDbContext _dbContext;

        public UsuarioRepository(AppDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<IEnumerable<Usuario>> GetAllAsync() => await _dbContext.Usuarios.ToListAsync();

        public async Task<Usuario> GetByIdAsync(int id) => await _dbContext.Usuarios.FindAsync(id);

        public async Task AddAsync(Usuario user)
        {
            _dbContext.Usuarios.Add(user);
            await _dbContext.SaveChangesAsync();
        }

        public async Task UpdateAsync(Usuario user)
        {
            var existingUser = await _dbContext.Usuarios.FindAsync(user.Id);
            if (existingUser != null)
            {
                existingUser.Name = user.Name;
                existingUser.Email = user.Email;
                existingUser.Phone = user.Phone;
                existingUser.Password = user.Password;
                await _dbContext.SaveChangesAsync();
            }
        }

        public async Task DeleteAsync(int id)
        {
            var user = await _dbContext.Usuarios.FindAsync(id);
            if (user != null)
            {
                _dbContext.Usuarios.Remove(user);
                await _dbContext.SaveChangesAsync();
            }
        }
    }
}
