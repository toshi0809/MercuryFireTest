using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApi.Data;
using WebApi.Models;

namespace MyWebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MyofficeACPDController : ControllerBase
    {
        private readonly MyDbContext _context;

        public MyofficeACPDController(MyDbContext context)
        {
            _context = context;
        }

        // GET: api/MyofficeACPD
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Myoffice_ACPD>>> GetMyoffice_ACPDs()
        {
            return await _context.Myoffice_ACPDs.ToListAsync();
        }

        // GET: api/MyofficeACPD/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Myoffice_ACPD>> GetMyoffice_ACPD(string id)
        {
            var entity = await _context.Myoffice_ACPDs.FindAsync(id);
            if (entity == null)
            {
                return NotFound();
            }

            return entity;
        }

        // POST: api/MyofficeACPD
        [HttpPost]
        public async Task<ActionResult<Myoffice_ACPD>> PostMyoffice_ACPD(Myoffice_ACPD entity)
        {
            _context.Myoffice_ACPDs.Add(entity);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetMyoffice_ACPD), new { id = entity.Acpd_Sid }, entity);
        }

        // PUT: api/MyofficeACPD/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutMyoffice_ACPD(string id, Myoffice_ACPD entity)
        {
            if (id != entity.Acpd_Sid)
            {
                return BadRequest();
            }

            _context.Entry(entity).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Myoffice_ACPDExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // DELETE: api/MyofficeACPD/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteMyoffice_ACPD(string id)
        {
            var entity = await _context.Myoffice_ACPDs.FindAsync(id);
            if (entity == null)
            {
                return NotFound();
            }

            _context.Myoffice_ACPDs.Remove(entity);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool Myoffice_ACPDExists(string id)
        {
            return _context.Myoffice_ACPDs.Any(e => e.Acpd_Sid == id);
        }
    }
}
