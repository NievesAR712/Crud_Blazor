using Crud_Blazr.Core.Models;
using Crud_Blazr.Core.Interface;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SignalR;
using Crud_Blazr.API;

[Route("api/[controller]")]
[ApiController]
public class UsersController : ControllerBase
{
    private readonly IUserRepository _userRepository;
    private readonly IHubContext<ChatHub> _hubContext;
    public UsersController(IUserRepository userRepository, IHubContext<ChatHub> hubContext)
    {
        _userRepository = userRepository;
        _hubContext = hubContext;
    }

    [HttpGet]
    public async Task<IActionResult> GetAllUsers()
    {
        var users = await _userRepository.GetAllAsync();
        return Ok(users);
    }

    [HttpGet("{id}")]
    public async Task<IActionResult> GetUserById(int id)
    {
        var user = await _userRepository.GetByIdAsync(id);
        if (user == null) return NotFound();
        return Ok(user);
    }

    [HttpPost]
    public async Task<IActionResult> AddUser([FromBody] Usuario user)
    {
        await _userRepository.AddAsync(user);
        await _hubContext.Clients.All.SendAsync("UserAdded",user.Name);
        return CreatedAtAction(nameof(GetUserById), new { id = user.Id }, user);
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> UpdateUser(int id, [FromBody] Usuario user)
    {
        if (id != user.Id) return BadRequest();

        await _userRepository.UpdateAsync(user);
        return NoContent();
    }

    [HttpDelete("{id}")]
    public async Task<IActionResult> DeleteUser(int id)
    {
        await _userRepository.DeleteAsync(id);
        await _hubContext.Clients.All.SendAsync("UserDeleted", id);
        return NoContent();
    }
}
