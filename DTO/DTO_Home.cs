using Entity;
using System.Collections.Generic;

namespace DTO
{
    public class DTO_Home
    {
        public Entity.Story Story { get; set; }
        public List<Entity.Tag> Tag { get; set; }
    }
}
