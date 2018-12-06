namespace Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Story")]
    public partial class Story
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long? StoryId { get; set; }

        public string Name { get; set; }

        public long? AuthorId { get; set; }

        public DateTime? WriteDate { get; set; }

        public DateTime? EditDate { get; set; }

        public string Image { get; set; }

        public string Decription { get; set; }

        public long? StatusId { get; set; }

        public bool? isPublic { get; set; }

        public long? View { get; set; }
    }
}
