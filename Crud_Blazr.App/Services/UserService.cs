using Crud_Blazr.Core.Interface;
using Crud_Blazr.Core.Models;

namespace Crud_Blazr.App.Services
{
    public class UserService
    {
        private readonly IUserRepository _userRepository;

        public UserService(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        public Task<IEnumerable<Usuario>> GetAllUsersAsync() => _userRepository.GetAllAsync();

        public Task<Usuario> GetUserByIdAsync(int id) => _userRepository.GetByIdAsync(id);

        public Task AddUserAsync(Usuario user) => _userRepository.AddAsync(user);

        public Task UpdateUserAsync(Usuario user) => _userRepository.UpdateAsync(user);

        public Task DeleteUserAsync(int id) => _userRepository.DeleteAsync(id);
    }
}
