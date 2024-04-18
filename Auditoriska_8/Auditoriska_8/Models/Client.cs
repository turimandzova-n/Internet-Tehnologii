using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Auditoriska_8.Models
{
    public class Client
    {
        public Client()
        {
            {
                movies = new List<Movie>();
            }
        }
        [Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string Address { get; set; }
        public string Phone { get; set; }
        public string MovieCard { get; set; }
        [Required]
        [Range(1, 99, ErrorMessage = "Годините мора да бидат помеѓу 1 и 99")]
        public int Age { get; set; }
        public virtual ICollection<Movie> movies { get; set; }
        
    }
}