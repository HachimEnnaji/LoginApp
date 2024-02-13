using System;
using System.Web;
using System.Web.UI;

namespace LoginApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            HttpCookie authCookie = new HttpCookie("AuthCookie");
            authCookie.Values["username"] = Username.Value;
            authCookie.Values["password"] = Password.Value;
            authCookie.Expires = DateTime.Now.AddDays(10);
            Response.Cookies.Add(authCookie);
            Response.Redirect("Authorization");

        }
    }
}