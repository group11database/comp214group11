using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecipeBookGroup11
{
    public partial class AddRecipe : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            HttpCookie myCookie = Request.Cookies["theme"];

            if (myCookie != null)
                Page.Theme = myCookie.Value;
        }
        //List<Recipe> listRecipe = new List<Recipe>();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddRecipe.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (OracleConnection con = new OracleConnection
            (ConfigurationManager.ConnectionStrings["oracle1"].ConnectionString))
            {
                OracleCommand com = new OracleCommand();
                com.Connection = con;

                com.CommandText = "INSERTRECIPEDETAILS";
                com.CommandType = CommandType.StoredProcedure;

                com.Parameters.Add("receipename", OracleDbType.Varchar2).Value = txtName.Text;
                com.Parameters.Add("submittedby", OracleDbType.Varchar2).Value = txtSubBy.Text;
                com.Parameters.Add("category", OracleDbType.Varchar2).Value = txtCategory.Text;
                com.Parameters.Add("cookingtime", OracleDbType.Varchar2).Value = txtTime.Text;
                com.Parameters.Add("numberofservings", OracleDbType.Varchar2).Value = txtServingNum.Text;

                try
                {
                    con.Open();
                    com.ExecuteNonQuery();
                }
                catch (Exception)
                {

                }

                con.Close();
            }

            Response.Redirect("RecipesPage.aspx");

        }
    }
}