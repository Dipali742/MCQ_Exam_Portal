using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Student_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        MySqlConnection con;
        MySqlCommand cmd;
        String str;
        string connString = System.Configuration.ConfigurationManager.ConnectionStrings["mcqexamConnectionString2"].ConnectionString;
        con = new MySqlConnection(connString);
        con.Open();
        str = "Select * from student";
        cmd = new MySqlCommand(str, con);
        MySqlDataAdapter da = new MySqlDataAdapter();
        da.SelectCommand = cmd;
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }

    protected void id_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Add_Student(object sender, EventArgs e)
    {
        MySqlConnection con;
        MySqlCommand cmd;
        String str;
        string connString = System.Configuration.ConfigurationManager.ConnectionStrings["mcqexamConnectionString2"].ConnectionString;
        con = new MySqlConnection(connString);
        con.Open();

        str = "select * from mcqexam.student where sid='" + id.Text + "' ";

        cmd = new MySqlCommand(str, con);
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);



        int cnt = 0;
        foreach (DataRow dr in dt.Rows)
        {
            cnt++;
        }
        if (cnt == 0)
        {

            str = "INSERT INTO mcqexam.student(sid, susername, spassword) VALUES('" + this.id.Text + "','" + this.name.Text + "','" + this.password.Text + "')";
            cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
            Label4.Text = "Student added";
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
        else
        {
            con.Close();
            Response.Write("<script>alert('Student with provided ID already exists')</script>");
        }
        


    }

    protected void Delete_Student(object sender, EventArgs e)
    {

    }

    protected void gotohome(object sender, EventArgs e)
    {
        Response.Redirect("HomeTeacher.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}