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
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into course(CourseCOde,Coursename) values(@CourseCOde,@Coursename)", con);
        cmd.Parameters.AddWithValue("@CourseCOde", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Coursename", TextBox2.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Record Saved !!!";
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}