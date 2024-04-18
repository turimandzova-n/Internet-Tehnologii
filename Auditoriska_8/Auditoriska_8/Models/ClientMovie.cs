using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Auditoriska_8.Models
{
    public class ClientMovie
    { 
        public ClientMovie()
        {
            clients = new List<Client>();
        }
  
        public int MovieId { get; set; }
        public int CliendId { get; set; }
        public Movie movie { get; set;}
        public List<Client> clients { get; set; }
    }
}