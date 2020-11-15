using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Project_Api.Entities
{
    public class AccountStatement
    {
        [Key]
        public int Id { get; set; }
        public int SavingsAccountId { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public decimal InitialBalance { get; set; }
        public decimal FinalBalance { get; set; }

    }
}
