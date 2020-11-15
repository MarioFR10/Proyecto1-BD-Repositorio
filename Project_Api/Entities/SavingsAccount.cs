using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace Project_Api.Entities
{
    public class SavingsAccount
    {
        [Key]
        public int Id { get; set; }
        public int TypeSavingsAccountId { get; set; }
        public int PersonId { get; set; }
        public decimal Balance { get; set; }
        public DateTime CreationDate { get; set; }
        public string AccountNumber { get; set; }


    }
}
