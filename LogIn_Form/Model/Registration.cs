using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LogIn_Form.Model
{
    public class Registration
    {
        public int Registration_Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string Gender { get; set; }

        public bool IsvalidUser { get; set; }
        public string IsvalidKey { get; set; }  
    }
}