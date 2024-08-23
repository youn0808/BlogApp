using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


/*ApplicationUserIdentity is crucial for
 * managing user identities and authentication within your application. 
 * This class allows your application to handle user-related data, especially 
 * when working with ASP.NET Identity for authentication and authorization.
 * Because this doesn't have a password itself cuz we don't save in db password. 
 */
namespace BlogLab.Models.Account
{
    public class ApplicationUserIdentity
    {
        public int ApplicationUserId { get; set; }

        public string Username { get; set; }

        public string NormalizedUsername { get; set; }

        public string Email { get; set; }

        public string NormalizedEmail { get; set; }

        public string Fullname { get; set; }

        public string PasswordHash { get; set; }
    }
}
