using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Crud_Blazr.Core.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.VisualBasic;


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
                optionsBuilder.UseSqlServer("Server=(localdb)\\NievesLocal;Database=Crud_Blazor;Trusted_Connection=True;");
            }
        }
    }
}
