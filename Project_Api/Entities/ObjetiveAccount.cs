using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Project_Api.Entities
{
    public class ObjetiveAccount
    {
        [Key]
        public int Id { get; set; }
        public int SavingsAccountId { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public decimal Fee { get; set; }
        public string Objective { get; set; }
        public decimal Balance { get; set; }
        public float AcumInterest { get; set; }
        public string DaysOfDeposit { get; set; }
        public bool Active { get; set; }

    }
}
