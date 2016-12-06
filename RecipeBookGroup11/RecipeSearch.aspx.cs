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
    public partial class RecipeSearch : System.Web.UI.Page
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
                OracleCommand com, com1, com2;
                OracleDataReader reader, reader1, reader2;
                string connectionString = ConfigurationManager.ConnectionStrings["oracle1"].ConnectionString;
                con = new OracleConnection(connectionString);
                com = new OracleCommand("SELECT * FROM Category", con);
                con.Open();
                reader = com.ExecuteReader();
                dropDownCategory.DataSource = reader;
                dropDownCategory.DataValueField = "Category";
                dropDownCategory.DataBind();
                reader.Close();
                con.Close();

                con.Open();
                com1 = new OracleCommand("SELECT * FROM Ingredients", con);
                reader1 = com1.ExecuteReader();
                dropDownIngredient.DataSource = reader1;
                dropDownIngredient.DataValueField = "Ingredients";
                dropDownIngredient.DataBind();
                reader1.Close();
                con.Close();

                con.Open();
                com2 = new OracleCommand("SELECT * FROM SubmittedBy", con);
                reader2 = com2.ExecuteReader();
                dropDownSubmittedBy.DataSource = reader2;
                dropDownSubmittedBy.DataValueField = "SubmittedBy";
                dropDownSubmittedBy.DataBind();
                reader2.Close();
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OracleConnection con;
            OracleCommand com3;
            OracleDataReader reader3;
            string connectionString = ConfigurationManager.ConnectionStrings["oracle1"].ConnectionString;
            con = new OracleConnection(connectionString);

            if ((dropDownCategory.SelectedItem.ToString().Equals("ALL"))
                && (dropDownIngredient.SelectedItem.ToString().Equals("ALL")) && (dropDownSubmittedBy.SelectedItem.ToString().Equals("ALL")))
            {
                com3 = new OracleCommand("SELECT * FROM RecipeDetails", con);
                con.Open();
                reader3 = com3.ExecuteReader();
            }
            else if ((!(dropDownCategory.SelectedItem.ToString().Equals("ALL")))
                && (dropDownIngredient.SelectedItem.ToString().Equals("ALL")) && (dropDownSubmittedBy.SelectedItem.ToString().Equals("ALL")))
            {
                com3 = new OracleCommand("SELECT * FROM RecipeDetails where (Category = :Category)", con);
                com3.Parameters.Add("Category", OracleDbType.NVarchar2);
                com3.Parameters["Category"].Value = dropDownCategory.SelectedItem.Value;
                con.Open();
                reader3 = com3.ExecuteReader();
            }
            else if ((dropDownCategory.SelectedItem.ToString().Equals("ALL"))
                && (!(dropDownIngredient.SelectedItem.ToString().Equals("ALL"))) && (dropDownSubmittedBy.SelectedItem.ToString().Equals("ALL")))
            {
                com3 = new OracleCommand("SELECT * FROM RecipeDetails where ((NameOfIngredient1 = :Ingredient1) OR (NameOfIngredient2 = :Ingredient1) OR (NameOfIngredient3 = :Ingredient1) OR (NameOfIngredient4 = :Ingredient1) OR (NameOfIngredient5 = :Ingredient1) OR (NameOfIngredient6 = :Ingredient1) OR (NameOfIngredient7 = :Ingredient1) OR (NameOfIngredient8 = :Ingredient1) OR (NameOfIngredient9 = :Ingredient1) OR (NameOfIngredient10 = :Ingredient1) OR (NameOfIngredient11 = :Ingredient1) OR (NameOfIngredient12 = :Ingredient1) OR (NameOfIngredient13 = :Ingredient1) OR (NameOfIngredient14 = :Ingredient1) OR (NameOfIngredient15 = :Ingredient1))", con);
                com3.Parameters.Add("Ingredient1", OracleDbType.NVarchar2);
                com3.Parameters["Ingredient1"].Value = dropDownIngredient.SelectedItem.Value;
                con.Open();
                reader3 = com3.ExecuteReader();
            }
            else if ((dropDownCategory.SelectedItem.ToString().Equals("ALL"))
                && (dropDownIngredient.SelectedItem.ToString().Equals("ALL")) && (!(dropDownSubmittedBy.SelectedItem.ToString().Equals("ALL"))))
            {
                com3 = new OracleCommand("SELECT * FROM RecipeDetails where (SubmittedBy = :SubmittedBy)", con);
                com3.Parameters.Add("SubmittedBy", OracleDbType.NVarchar2);
                com3.Parameters["SubmittedBy"].Value = dropDownSubmittedBy.SelectedItem.Value;

                con.Open();
                reader3 = com3.ExecuteReader();
            }
            else if (dropDownCategory.SelectedItem.ToString().Equals("ALL"))
            {
                com3 = new OracleCommand("SELECT * FROM RecipeDetails where ((SubmittedBy = :SubmittedBy) AND ((NameOfIngredient1 = :Ingredient1) OR (NameOfIngredient2 = :Ingredient1) OR (NameOfIngredient3 = :Ingredient1) OR (NameOfIngredient4 = :Ingredient1) OR (NameOfIngredient5 = :Ingredient1) OR (NameOfIngredient6 = :Ingredient1) OR (NameOfIngredient7 = :Ingredient1) OR (NameOfIngredient8 = :Ingredient1) OR (NameOfIngredient9 = :Ingredient1) OR (NameOfIngredient10 = :Ingredient1) OR (NameOfIngredient11 = :Ingredient1) OR (NameOfIngredient12 = :Ingredient1) OR (NameOfIngredient13 = :Ingredient1) OR (NameOfIngredient14 = :Ingredient1) OR (NameOfIngredient15 = :Ingredient1)))", con);
                com3.Parameters.Add("SubmittedBy", OracleDbType.NVarchar2);
                com3.Parameters["SubmittedBy"].Value = dropDownSubmittedBy.SelectedItem.Value;
                com3.Parameters.Add("Ingredient1", OracleDbType.NVarchar2);
                com3.Parameters["Ingredient1"].Value = dropDownIngredient.SelectedItem.Value;
                con.Open();
                reader3 = com3.ExecuteReader();
            }
            else if (dropDownIngredient.SelectedItem.ToString().Equals("ALL"))
            {
                com3 = new OracleCommand("SELECT * FROM RecipeDetails where ((SubmittedBy = :SubmittedBy) AND (Category = :Category))", con);
                com3.Parameters.Add("SubmittedBy", OracleDbType.NVarchar2);
                com3.Parameters["SubmittedBy"].Value = dropDownSubmittedBy.SelectedItem.Value;
                com3.Parameters.Add("Category", OracleDbType.NVarchar2);
                com3.Parameters["Category"].Value = dropDownCategory.SelectedItem.Value;
                con.Open();
                reader3 = com3.ExecuteReader();
            }
            else if (dropDownSubmittedBy.SelectedItem.ToString().Equals("ALL"))
            {
                com3 = new OracleCommand("SELECT * FROM RecipeDetails where ((Category = :Category) AND ((NameOfIngredient1 = :Ingredient1) OR (NameOfIngredient2 = :Ingredient1) OR (NameOfIngredient3 = :Ingredient1) OR (NameOfIngredient4 = :Ingredient1) OR (NameOfIngredient5 = :Ingredient1) OR (NameOfIngredient6 = :Ingredient1) OR (NameOfIngredient7 = :Ingredient1) OR (NameOfIngredient8 = :Ingredient1) OR (NameOfIngredient9 = :Ingredient1) OR (NameOfIngredient10 = :Ingredient1) OR (NameOfIngredient11 = :Ingredient1) OR (NameOfIngredient12 = :Ingredient1) OR (NameOfIngredient13 = :Ingredient1) OR (NameOfIngredient14 = :Ingredient1) Or (NameOfIngredient15 = :Ingredient1)))", con);
                com3.Parameters.Add("Category", OracleDbType.NVarchar2);
                com3.Parameters["Category"].Value = dropDownCategory.SelectedItem.Value;
                com3.Parameters.Add("Ingredient1", OracleDbType.NVarchar2);
                com3.Parameters["Ingredient1"].Value = dropDownIngredient.SelectedItem.Value;
                //com3.Parameters.Add("SubmittedBy", OracleDbType.NVarchar2);
                //com3.Parameters["SubmittedBy"].Value = dropDownSubmittedBy.SelectedItem.Value;
                con.Open();
                reader3 = com3.ExecuteReader();
            }
            else
            {
                com3 = new OracleCommand("SELECT * FROM RecipeDetails where ((Category = :Category) AND ( SubmittedBy = :SubmittedBy) AND ((NameOfIngredient1 = :Ingredient1) OR (NameOfIngredient2 = :Ingredient1) OR (NameOfIngredient3 = :Ingredient1) OR (NameOfIngredient4 = :Ingredient1) OR (NameOfIngredient5 = :Ingredient1) OR (NameOfIngredient6 = :Ingredient1) OR (NameOfIngredient7 = :Ingredient1) OR (NameOfIngredient8 = :Ingredient1) OR (NameOfIngredient9 = :Ingredient1) OR (NameOfIngredient10 = :Ingredient1) OR (NameOfIngredient11 = :Ingredient1) OR (NameOfIngredient12 = :Ingredient1) OR (NameOfIngredient13 = :Ingredient1) OR (NameOfIngredient14 = :Ingredient1) OR (NameOfIngredient15 = :Ingredient1)))", con);
                com3.Parameters.Add("Category", OracleDbType.NVarchar2);
                com3.Parameters["Category"].Value = dropDownCategory.SelectedItem.Value;
                com3.Parameters.Add("SubmittedBy", OracleDbType.NVarchar2);
                com3.Parameters["SubmittedBy"].Value = dropDownSubmittedBy.SelectedItem.Value;
                com3.Parameters.Add("Ingredient1", OracleDbType.NVarchar2);
                com3.Parameters["Ingredient1"].Value = dropDownIngredient.SelectedItem.Value;
                con.Open();
                reader3 = com3.ExecuteReader();
            }

            GridView1.DataSource = reader3;
            GridView1.DataBind();
            reader3.Close();
            con.Close();
        }
    }
}