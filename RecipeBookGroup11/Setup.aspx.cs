using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecipeBookGroup11
{
    public partial class Setup : System.Web.UI.Page
    {
        private void Page_PreInit(object sender, EventArgs e)
        {
            HttpCookie myCookie = Request.Cookies["theme"];

            if (myCookie != null)
                Page.Theme = myCookie.Value;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntheme1_Click(object sender, EventArgs e)
        {
            HttpCookie myCookie = new HttpCookie("theme", "Dark");
            myCookie.Expires = DateTime.Now.AddMonths(1);
            Response.Cookies.Add(myCookie);

            Response.Redirect("Setup.aspx");
        }

        protected void btntheme2_Click(object sender, EventArgs e)
        {
            HttpCookie myCookie = new HttpCookie("theme", "Light");
            myCookie.Expires = DateTime.Now.AddMonths(1);
            Response.Cookies.Add(myCookie);
            Response.Redirect("Setup.aspx");
        }
    }
}