namespace DataTruyenFull
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Chapter")]
    public partial class Chapter
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long? ChapterId { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long? StoryId { get; set; }

        public string Name { get; set; }

        public DateTime? WriteDate { get; set; }

        public DateTime? EditDate { get; set; }
    }
}
