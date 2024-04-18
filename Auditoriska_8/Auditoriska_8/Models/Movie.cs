using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Auditoriska_8.Models
{
    public class Movie
    {
        public Movie()
        {
            clients = new List<Client>();
        }
        [Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        public string DownloadURL { get; set; }
        public string ImageURL { get; set; }
        public float Rating { get; set; }
        public virtual ICollection<Client> clients { get; set; }
    }
}