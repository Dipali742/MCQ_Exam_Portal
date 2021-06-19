using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Create_Quiz : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlCommand cmd;
    String str;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!this.IsPostBack)
        {
            BindGridView();
        }

    }

    private void BindGridView()
    {
        string connString = System.Configuration.ConfigurationManager.ConnectionStrings["mcqexamConnectionString2"].ConnectionString;
        con = new MySqlConnection(connString);
        con.Open();
        str = "select * from quiz;";
        cmd = new MySqlCommand(str, con);
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditButton")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];
            
            Response.Redirect("~/Edit_Quiz.aspx?qid=" + row.Cells[0].Text);
        }
    }
    protected void Add_image(object sender, EventArgs e)
    {

    }

    protected void Add_quiz(object sender, EventArgs e)
    {
        MySqlConnection con;
        MySqlCommand cmd;
        String str;
        string connString = System.Configuration.ConfigurationManager.ConnectionStrings["mcqexamConnectionString2"].ConnectionString;
        con = new MySqlConnection(connString);
        con.Open();

           str = "INSERT INTO mcqexam.quiz(name,time,marks,createdBy) VALUES('" + this.quizname.Text + "','" + this.qt.Text + "','" + this.qmarks.Text + "','" + Session["username"] + "')";
            cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Label4.Text = "Quiz Created";
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Default.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomeTeacher.aspx");
    }

    protected void qt_TextChanged(object sender, EventArgs e)
    {

    }
}