using Microsoft.EntityFrameworkCore;
using WebApi.Models;

namespace WebApi.Data
{
    public class DbContext : DbContext
    {
        public DbContext(DbContextOptions<DbContext> options) : base(options)
        {
        }

        public DbSet<Myoffice_ACPD> Myoffice_ACPDs { get; set; }
        public DbSet<Myoffice_ExcuteionLog> Myoffice_ExcuteionLogs { get; set; }
    }
}
