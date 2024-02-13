using System;
using System.Web;

namespace LoginApp
{
    public partial class Authorization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["AuthCookie"] != null)
            {
                authentication.InnerText = "Benvenuto" + " " + Request.Cookies["AuthCookie"]["username"];
            }
            else
            {
                Response.Redirect("Default.aspx");
            }

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            DeleteCookie("AuthCookie");
        }
        protected void DeleteCookie(string cookie)
        {
            HttpCookie userData = new HttpCookie(cookie);
            userData.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(userData);
            Response.Redirect("Default.aspx");
        }
    }
}