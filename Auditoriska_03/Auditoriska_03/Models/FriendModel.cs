using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Auditoriska_03.Models
{
    public class FriendModel
    {
       
        public int Id { get; set; }
        [Required]
        public string Ime { get; set; }
        [Required]
        public string MestoZiveenje { get; set; }
    }
}