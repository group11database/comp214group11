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
    public partial class Details : System.Web.UI.Page
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
                string id1 = (string)Session["SelectedIndex"];
                int ID = Convert.ToInt32(id1);
                com = new OracleCommand("SELECT * FROM RecipeDetails where id = :ID", con);
                com.Parameters.Add("ID", OracleDbType.Int32);
                com.Parameters["ID"].Value = ID;
                con.Open();
                reader = com.ExecuteReader();
                DetailsView1.DataSource = reader;
                DetailsView1.DataBind();
                reader.Close();
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OracleConnection con;
            OracleCommand com;
            OracleDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["oracle1"].ConnectionString;
            con = new OracleConnection(connectionString);
            string id1 = (string)Session["SelectedIndex"];
            int ID = Convert.ToInt32(id1);
            com = new OracleCommand("DELETE FROM RecipeDetails where id = :ID", con);
            com.Parameters.Add("ID", OracleDbType.Int32);
            com.Parameters["ID"].Value = ID;
            con.Open();
            reader = com.ExecuteReader();
            DetailsView1.DataSource = reader;
            DetailsView1.DataBind();
            reader.Close();
            con.Close();

            Response.Redirect("RecipesPage.aspx");
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecipeUpdate.aspx");

        }
    }
}