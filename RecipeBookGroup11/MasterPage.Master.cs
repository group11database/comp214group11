using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecipeBookGroup11
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            HttpCookie myCookie = Request.Cookies["theme"];
            Page.Theme = "Dark";
            if (myCookie != null)
                Page.Theme = myCookie.Value;
            Session["Theme"] = "Dark";

        }
    }
}