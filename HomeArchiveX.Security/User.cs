using System.Collections.Generic;

namespace HomeArchiveX.Security
{
    public partial class User
    {
         public User()
        {
            Role = new HashSet<Role>();
        }
        public User(string username, string email, HashSet<Role> roles)
        {
            Username = username;
            Email = email;
            Role = roles;
        }
        public int UserId { get; set; }
        public string Username { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public virtual ICollection<Role> Role { get; set; }
    }
}
