using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Teacher_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gotohome(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MySqlConnection con;
        MySqlCommand cmd;
        String str;
        con = new MySqlConnection("server=localhost;user id=2018BCGRP27;database=mcqexam;password=54397215");
        con.Open();
        str = "select * from mcqexam.teacher where tid='"+tidd.Text+"' and tpass='" + pass.Text + "'";
        cmd = new MySqlCommand(str, con);
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            Session["username"] = dr["tname"].ToString();
           
            Session["id"] = dr["tid"];
            Response.Redirect("HomeTeacher.aspx");
        }
        con.Close();
        Response.Write("<script>alert('Invalid userID or password')</script>");
      
    }
}