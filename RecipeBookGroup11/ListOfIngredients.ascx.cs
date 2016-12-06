using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecipeBookGroup11
{

    
    public partial class ListOfIngredients : System.Web.UI.UserControl
    {

        protected void Page_PreInit(object sender, EventArgs e)
        {
            HttpCookie myCookie = Request.Cookies["u"];

            if (myCookie != null)
                Page.Theme = myCookie.Value;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //String textBox;
        public string TextBox1
        {
            set
            {
                txtNameOfIngre.Text = value;
            }
            get
            {
                return txtNameOfIngre.Text;
            }
        }
    }
}