using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Project_Api.Entities
{
    public class Benefactor
    {
        [Key]
        public int Id { get; set; }
        public int RelationshipId { get; set; }
        public int PersonId { get; set; }
        public int SavingsAccountId { get; set; }
        public string Name { get; set; }
        public int Percentage { get; set; }
        public bool Condition { get; set; }
    }
}
