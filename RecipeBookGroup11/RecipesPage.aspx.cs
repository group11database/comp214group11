using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecipeBookGroup11
{
    public partial class RecipesPage : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            HttpCookie myCookie = Request.Cookies["theme"];

            if (myCookie != null)
                Page.Theme = myCookie.Value;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                OracleConnection con;
                OracleCommand com;
                OracleDataReader reader;
                string connectionString = ConfigurationManager.ConnectionStrings["oracle1"].ConnectionString;
                con = new OracleConnection(connectionString);
                com = new OracleCommand("SELECT * FROM RecipeDetails", con);
                con.Open();

                reader = com.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            string name = GridView1.SelectedRow.Cells[1].Text;
            Session["SelectedIndex"] = name;

            Response.Redirect("Details.aspx");
        }
    }
}