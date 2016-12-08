using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecipeBookGroup11
{
    public partial class RecipeUpdate : System.Web.UI.Page
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
                com = new OracleCommand("SELECT * from Recipedetails WHERE ID = :iID", con);
                string id1 = (string)Session["SelectedIndex"];
                int ID = Convert.ToInt32(id1);
                com.Parameters.Add("iID", OracleDbType.Int32);
                com.Parameters["iID"].Value = ID;
                con.Open();
                try
                {

                    reader = com.ExecuteReader();
                    if (reader.Read())
                    {
                        txtNameUpdate.Text = reader["RecipeName"].ToString();
                        lblSubByUpdate.Text = reader["SubmittedBy"].ToString();
                        txtCategoryUpdate.Text = reader["Category"].ToString();
                        txtTimeUpdate.Text = reader["CookingTime"].ToString();
                        txtSurvingNumberUpdate.Text = reader["NumberOfServing"].ToString();
                        txtNameOfIngre1Update.Text = reader["NameOfIngredient1"].ToString();
                        txtNameOfIngre2Update.Text = reader["NameOfIngredient2"].ToString();
                        txtNameOfIngre3Update.Text = reader["NameOfIngredient3"].ToString();
                        txtNameOfIngre4Update.Text = reader["NameOfIngredient4"].ToString();
                        txtNameOfIngre5Update.Text = reader["NameOfIngredient5"].ToString();
                        txtNameOfIngre6Update.Text = reader["NameOfIngredient6"].ToString();
                        txtNameOfIngre7Update.Text = reader["NameOfIngredient7"].ToString();
                        txtNameOfIngre8Update.Text = reader["NameOfIngredient8"].ToString();
                        txtNameOfIngre9Update.Text = reader["NameOfIngredient9"].ToString();
                        txtNameOfIngre10Update.Text = reader["NameOfIngredient10"].ToString();
                        txtNameOfIngre11Update.Text = reader["NameOfIngredient11"].ToString();
                        txtNameOfIngre12Update.Text = reader["NameOfIngredient12"].ToString();
                        txtNameOfIngre13Update.Text = reader["NameOfIngredient13"].ToString();
                        txtNameOfIngre14Update.Text = reader["NameOfIngredient14"].ToString();
                        txtNameOfIngre15Update.Text = reader["NameOfIngredient15"].ToString();
                    }

                    reader.Close();
                    btnUpdate.Enabled = true;
                }
                catch (SqlException ex)
                {
                    lblError.Text =
                    "Error loading the details!!!!!!<br />";
                    lblError.Text = ex.StackTrace;

                }
                finally
                {
                    con.Close();
                }
            }
        }


        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            OracleConnection con;
            OracleCommand com;
            string connectionString = ConfigurationManager.ConnectionStrings["oracle1"].ConnectionString;
            con = new OracleConnection(connectionString);

            try
            {
                string id1 = (string)Session["SelectedIndex"];
                int ID = Convert.ToInt32(id1);
                com = new OracleCommand(
                "UPDATE Recipedetails set RECIPENAME =   :txtNameUpdate  , CATEGORY =   :txtCategoryUpdate  , COOKINGTIME =   :txtTimeUpdate  , NUMBEROFSERVING =   :txtSurvingNumberUpdate, NAMEOFINGREDIENT1 =   :txtNameOfIngre1Update  , NAMEOFINGREDIENT2 =   :txtNameOfIngre2Update  , NAMEOFINGREDIENT3 =   :txtNameOfIngre3Update , NAMEOFINGREDIENT4 =   :txtNameOfIngre4Update  , NAMEOFINGREDIENT5 =   :txtNameOfIngre5Update  , NAMEOFINGREDIENT6 =   :txtNameOfIngre6Update   , NAMEOFINGREDIENT7 =   :txtNameOfIngre7Update   , NAMEOFINGREDIENT8 =   :txtNameOfIngre8Update   , NAMEOFINGREDIENT9 =   :txtNameOfIngre9Update   , NAMEOFINGREDIENT10 =   :txtNameOfIngre10Update   , NAMEOFINGREDIENT11 =   :txtNameOfIngre11Update   , NAMEOFINGREDIENT12 =   :txtNameOfIngre12Update   , NAMEOFINGREDIENT13 =   :txtNameOfIngre13Update   , NAMEOFINGREDIENT14 =   :txtNameOfIngre14Update   , NAMEOFINGREDIENT15 =   :txtNameOfIngre15Update    WHERE ID = " + ID + " ", con);
                com.Parameters.Add("txtNameUpdate", txtNameUpdate.Text);
                com.Parameters.Add("txtCategoryUpdate", txtCategoryUpdate.Text);
                com.Parameters.Add("txtTimeUpdate", txtTimeUpdate.Text);
                com.Parameters.Add("txtSurvingNumberUpdate", txtSurvingNumberUpdate.Text);
                com.Parameters.Add("txtNameOfIngre1Update", txtNameOfIngre1Update.Text);
                com.Parameters.Add("txtNameOfIngre2Update", txtNameOfIngre2Update.Text);
                com.Parameters.Add("txtNameOfIngre3Update", txtNameOfIngre3Update.Text);
                com.Parameters.Add("txtNameOfIngre4Update", txtNameOfIngre4Update.Text);
                com.Parameters.Add("txtNameOfIngre5Update", txtNameOfIngre5Update.Text);
                com.Parameters.Add("txtNameOfIngre6Update", txtNameOfIngre6Update.Text);
                com.Parameters.Add("txtNameOfIngre7Update", txtNameOfIngre7Update.Text);
                com.Parameters.Add("txtNameOfIngre8Update", txtNameOfIngre8Update.Text);
                com.Parameters.Add("txtNameOfIngre9Update", txtNameOfIngre9Update.Text);
                com.Parameters.Add("txtNameOfIngre10Update", txtNameOfIngre10Update.Text);
                com.Parameters.Add("txtNameOfIngre11Update", txtNameOfIngre11Update.Text);
                com.Parameters.Add("txtNameOfIngre12Update", txtNameOfIngre12Update.Text);
                com.Parameters.Add("txtNameOfIngre13Update", txtNameOfIngre13Update.Text);
                com.Parameters.Add("txtNameOfIngre14Update", txtNameOfIngre14Update.Text);
                com.Parameters.Add("txtNameOfIngre15Update", txtNameOfIngre15Update.Text);
                con.Open();
                com.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                lblError.Text =
                "Error loading the details!<br />";
                lblError.Text = ex.StackTrace;
            }
            finally
            {
                con.Close();
                Response.Redirect("RecipesPage.aspx");
            }

        }
    }
}