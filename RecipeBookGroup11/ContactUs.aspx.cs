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
    public partial class ContactUs : System.Web.UI.Page
    {

        protected void Page_PreInit(object sender, EventArgs e)
        {
            HttpCookie myCookie = Request.Cookies["theme"];

            if (myCookie != null)
                Page.Theme = myCookie.Value;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContactSubmit_Click(object sender, EventArgs e)
        {
            using (OracleConnection con = new OracleConnection
            (ConfigurationManager.ConnectionStrings["oracle1"].ConnectionString))
            {
                OracleCommand com = new OracleCommand();
                com.Connection = con;

                com.CommandText = "INSERTCONTACTUS";
                com.CommandType = CommandType.StoredProcedure;

                com.Parameters.Add("name", OracleDbType.Varchar2).Value = txtContactName.Text;
                com.Parameters.Add("phonenumber", OracleDbType.Varchar2).Value = txtContactPhone.Text;
                com.Parameters.Add("description", OracleDbType.Varchar2).Value = txtContactDesc.Text;
                com.Parameters.Add("email", OracleDbType.Varchar2).Value = txtContactEmail.Text;

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

            Response.Redirect("Thankyou.aspx");

        }

    }
}