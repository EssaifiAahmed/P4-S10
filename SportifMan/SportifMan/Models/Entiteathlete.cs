//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SportifMan.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Entiteathlete
    {
        public int ID { get; set; }
        public Nullable<System.DateTime> Date_debut { get; set; }
        public Nullable<System.DateTime> Date_Fin { get; set; }
        public Nullable<int> AthleteID { get; set; }
        public Nullable<int> EntitesportifID { get; set; }
    
        public virtual Athlete Athlete { get; set; }
        public virtual Entitesportif Entitesportif { get; set; }
    }
}
