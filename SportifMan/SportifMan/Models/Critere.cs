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
    
    public partial class Critere
    {
        public int ID { get; set; }
        public int SportID { get; set; }
        public string Nom { get; set; }
        public string Description { get; set; }
    
        public virtual Sport Sport { get; set; }
    }
}
