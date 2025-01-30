
using Crud_Blazr.Core.Models;
using Microsoft.EntityFrameworkCore;



namespace Crud_Blazr.Infrastructure.DataAccess
{
    public class AppDbContext : DbContext
    {
        public DbSet<Usuario> Usuarios { get; set; }

        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Server=(localdb)\\NievesLocal;Database=Crud_Blazor1;Trusted_Connection=True;");
            }
        }
    }
}
