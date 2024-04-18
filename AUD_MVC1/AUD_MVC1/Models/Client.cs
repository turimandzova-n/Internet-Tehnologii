using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AUD_MVC1.Models
{
    public class Client
    {
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string Address { get; set; }
        public string Phone { get; set; }
        public string MovieCard { get; set; }
        [Required]
        [Range(1,99,ErrorMessage ="Годините мора да бидат помеѓу 1 и 99")]
        public int Age { get; set; }
    }
}