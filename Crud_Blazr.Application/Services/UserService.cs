using Crud_Blazr.Core.Models;
using System.Net.Http.Json;

public class UserService
{
    private readonly HttpClient _httpClient;

    public UserService(IHttpClientFactory httpClientFactory)
    {
        _httpClient = httpClientFactory.CreateClient("Api");
    }

    public UserService()
    {
    }

    public async Task<IEnumerable<Usuario>> GetAllUsersAsync()
    {
        return await _httpClient.GetFromJsonAsync<IEnumerable<Usuario>>("users");
    }

    public async Task<Usuario> GetUserByIdAsync(int id)
    {
        return await _httpClient.GetFromJsonAsync<Usuario>($"users/{id}");
    }

    public async Task AddUserAsync(Usuario user)
    {
        await _httpClient.PostAsJsonAsync("users", user);
    }

    public async Task UpdateUserAsync(Usuario user)
    {
        await _httpClient.PutAsJsonAsync($"users/{user.Id}", user);
    }

    public async Task DeleteUserAsync(int id)
    {
        await _httpClient.DeleteAsync($"users/{id}");
    }
}

