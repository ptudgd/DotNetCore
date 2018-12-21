namespace Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("User")]
    public partial class User
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long? UserId { get; set; }

        [StringLength(500)]
        public string Email { get; set; }

        public string Image { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }

        public string FacebookId { get; set; }

        public long? LastLogin { get; set; }

        public long? Exp { get; set; }

        public string Token { get; set; }

        public decimal? Money { get; set; }
    }
}
