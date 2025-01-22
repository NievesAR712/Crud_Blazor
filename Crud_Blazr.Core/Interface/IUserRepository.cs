using System.Diagnostics;
using Crud_Blazr.Core.Models;

namespace Crud_Blazr.Core.Interface
{
    public interface IUserRepository
    {
        Task<IEnumerable<Usuario>> GetAllAsync();
        Task<Usuario> GetByIdAsync(int id);
        Task AddAsync(Usuario user);
        Task UpdateAsync(Usuario user);
        Task DeleteAsync(int id);
    }
}
