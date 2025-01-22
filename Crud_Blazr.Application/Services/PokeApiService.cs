
using System.Net.Http.Json;


namespace Crud_Blazr.Application.Services
{
    public class PokeApiService
    {
        private readonly HttpClient _httpClient;

        public PokeApiService(HttpClient httpClient)
        {
            _httpClient = httpClient;
        }

        public async Task<List<string>> GetPokemonListAsync(int limit = 20)
        {
            var response = await _httpClient.GetFromJsonAsync<PokemonApiResponse>($"https://pokeapi.co/api/v2/pokemon?limit={limit}");
            return response?.Results.Select(p => p.Name).ToList() ?? new List<string>();
        }

        private class PokemonApiResponse
        {
            public List<PokemonResult> Results { get; set; }
        }

        private class PokemonResult
        {
            public string Name { get; set; }
        }
    }
}
