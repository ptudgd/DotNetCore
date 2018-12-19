namespace Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CTS")]
    public partial class CT
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long Id { get; set; }

        public long? Champion { get; set; }

        public long? Skin { get; set; }

        public long? Price { get; set; }

        [StringLength(500)]
        public string Rank { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        public long? Level { get; set; }
    }
}
