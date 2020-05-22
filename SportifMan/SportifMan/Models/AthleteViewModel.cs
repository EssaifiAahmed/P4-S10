using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SportifMan.Models
{
    public class AthleteViewModel
    {
        public int ID { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string image { get; set; }

        public Nullable<System.DateTime> Date_naissance { get; set; }
        // public List<Entitésportif> es { get; set; }
        //public List<Entitéathléte> ea { get; set; }

    }
}