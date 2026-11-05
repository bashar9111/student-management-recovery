using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(strcon);
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into student(Id,Name,GPA,Email,College) values(@Id,@Name,@GPA,@Email,@College)", conn);
        cmd.Parameters.AddWithValue("@Id",TextBox1.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@GPA", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
        cmd.Parameters.AddWithValue("@College", DropDownList1.SelectedItem.Value);
        cmd.ExecuteNonQuery();
        conn.Close();
        Label1.Text = "Record Saved !!!";
    }
}