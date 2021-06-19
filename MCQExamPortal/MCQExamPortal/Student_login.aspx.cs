using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Student_login : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlCommand cmd;
    String str;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connString = System.Configuration.ConfigurationManager.ConnectionStrings["mcqexamConnectionString2"].ConnectionString;
        con = new MySqlConnection(connString);
        con.Open();
        str = "select * from student where sid='"+sid.Text+"' and spassword='" + Spassword.Text + "'";
        cmd = new MySqlCommand(str, con);
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        foreach(DataRow dr in dt.Rows)
        {
            Session["username"] = dr["susername"].ToString();
            Session["id"] = dr["sid"];
            Response.Redirect("Student_main.aspx");
        }
        con.Close();
        Label4.Text = "Invalid userID or password";
    }

    protected void Spassword_TextChanged(object sender, EventArgs e)
    {

    }

    protected void gotohome(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}