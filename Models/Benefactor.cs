//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Proyecto1_BD.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Benefactor
    {
        public int Id { get; set; }
        public int RelationshipId { get; set; }
        public int PersonId { get; set; }
        public int SavingsAccountId { get; set; }
        public string Name { get; set; }
        public int Percentage { get; set; }
        public bool Condition { get; set; }
    
        public virtual Person Person { get; set; }
        public virtual Relationship Relationship { get; set; }
        public virtual SavingsAccount SavingsAccount { get; set; }
    }
}
