using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Add_New_Questions : System.Web.UI.Page
{
    int quizid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //MySqlConnection con;
        //MySqlCommand cmd;
        //String str;
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        quizid = Convert.ToInt32(Request.QueryString["qid"].ToString());
        

    }

    protected void opt1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Add_image(object sender, EventArgs e)
    {
        MySqlConnection con;
        //MySqlCommand cmd;
        //String str;
        con = new MySqlConnection("server=localhost;user id=2018BCGRP27;database=mcqexam;password=54397215");
    }

    protected void Add_Student(object sender, EventArgs e)
    {

    }

    protected void Add_que(object sender, EventArgs e)
    {
        MySqlConnection con;
        MySqlCommand cmd,cmd1;
        String str,str1;
        con = new MySqlConnection("server=localhost;user id=2018BCGRP27;database=mcqexam;password=54397215");
        con.Open();
        
      
        str = "select * from mcqexam.quiz where qid='" + quizid + "' ";

        cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);


   
            int cnt = 0;
            foreach (DataRow dr in dt.Rows)
            {
                cnt++;
                Session["username"] = dr["qid"].ToString();
                str = "INSERT INTO mcqexam.question(que_desc,opt1,opt2,opt3,opt4,ans,marks) VALUES('" + que.Text + "','" + opt1.Text + "','" + opt2.Text + "','" + opt3.Text + "','" + opt4.Text + "','" + ans.Text + "','" + marks.Text + "','"+quizid+"')";
                cmd = new MySqlCommand(str, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Edit_Quiz.aspx");
            }
            
           
       
        
        
        
        
    }

    protected void que1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gotohome(object sender, EventArgs e)
    {
        Response.Redirect("HomeTeacher.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void marks_TextChanged(object sender, EventArgs e)
    {

    }
}