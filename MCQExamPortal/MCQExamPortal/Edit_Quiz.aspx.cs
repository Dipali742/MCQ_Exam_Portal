using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.IO;


public partial class Edit_Quiz : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlCommand cmd,cmd1,cmd2;
    String str, str1,str2;
    int quizid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        quizid = Convert.ToInt32(Request.QueryString["qid"].ToString());


       
        if (!IsPostBack)
        {
            //BindGridView();
            this.Populate();
        }
    }

    private void BindGridView()
    {
        
    }

    private void Populate()
    {
        string connString = System.Configuration.ConfigurationManager.ConnectionStrings["mcqexamConnectionString2"].ConnectionString;
        con = new MySqlConnection(connString);
        con.Open();
        str = "SELECT * FROM mcqexam.Question WHERE qid='" + quizid + "' ";
        cmd = new MySqlCommand(str, con);
        cmd.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        MySqlDataAdapter da1 = new MySqlDataAdapter(cmd);
        da1.Fill(dt1);
        GridView2.DataSource = dt1;
        GridView2.DataBind();
        str1 = "SELECT * FROM mcqexam.quiz WHERE qid='" + quizid + "' GROUP BY qid";
        cmd1 = new MySqlCommand(str1, con);
        cmd1.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd1);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

 	str2 = "select * from Question_Bank;";
        cmd2 = new MySqlCommand(str2, con);
        DataTable dt2 = new DataTable();
        MySqlDataAdapter da2 = new MySqlDataAdapter(cmd2);
        da2.Fill(dt2);
        GridView3.DataSource = dt2;
        GridView3.DataBind();
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "AddButton")
       {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView3.Rows[index];
            Label2.Text = row.Cells[1].Text;
            Label3.Text = row.Cells[3].Text;
            Label5.Text = row.Cells[4].Text;
            Label7.Text = row.Cells[5].Text;
            Label8.Text = row.Cells[6].Text;
            Label9.Text = row.Cells[7].Text;
            Label6.Text = row.Cells[8].Text;
            Label11.Text = row.Cells[0].Text;
            
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["mcqexamConnectionString2"].ConnectionString;
            con = new MySqlConnection(connString);
            con.Open();




            //str = "INSERT INTO mcqexam.question(que_desc, opt1, opt2, opt3, opt4, ans, marks, qid, image) VALUES('" + Label2.Text + "', '" + Label3.Text + "', '" + Label5.Text + "', '" + Label7.Text + "', '" + Label8.Text + "', '" + Label9.Text + "', '" + Label6.Text + "', '" + quizid + "','"+Label11.Text+"')";;
            str = "insert into question(queid,que_desc,opt1,opt2,opt3,opt4,ans,marks,qid,image) (select queeid,quee_desc,optt1,optt2,optt3,optt4,anss,markss,'" + quizid + "',image from question_bank where queeid='" + Label11.Text + "');";
            cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
            //str = "Update question, Question_Bank SET Question.image = question_bank.image  WHERE question.qid = '" + quizid + "' AND Question_Bank.queeid = '" + Label11.Text + "'";

            //str = "Update question SET image = question_bank.image from question_bank WHERE question.qid = '"+quizid+"' AND Question_Bank.queeid = '" + Label11.Text + "'";
            //cmd = new MySqlCommand(str, con);
            //cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Create_Quiz.aspx");

        }
    }

    
    

   

    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditButton")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView2.Rows[index];
            Label4.Text=  row.Cells[0].Text;
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["mcqexamConnectionString2"].ConnectionString;
            con = new MySqlConnection(connString);
            con.Open();
            str = "DELETE FROM mcqexam.question where queid='" + Label4.Text + "'";
            cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();


            con.Close();
            Response.Redirect("Create_Quiz.aspx");

        }
    }

    protected void gotohome(object sender, EventArgs e)
    {
        Response.Redirect("Create_Quiz.aspx");
    }

    protected void Delete_Quiz(object sender, EventArgs e)
    {
        string connString = System.Configuration.ConfigurationManager.ConnectionStrings["mcqexamConnectionString2"].ConnectionString;
        con = new MySqlConnection(connString);
        con.Open();

        str = "SELECT * FROM Question WHERE qid='" + quizid + "'";
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
        if (cnt != 0)
        {
            str = "DELETE  FROM Question WHERE qid='" + quizid + "' ";
            cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
        }
        str = "DELETE  FROM quiz WHERE qid='" + quizid + "' ";
        cmd = new MySqlCommand(str, con);
        cmd.ExecuteNonQuery();

        con.Close();
        Response.Redirect("Create_Quiz.aspx");
    }

    
  
    protected void Add_que(object sender, EventArgs e)
    {
        MySqlConnection con;
        MySqlCommand cmd, cmd1;
        String str, str1;
        string connString = System.Configuration.ConfigurationManager.ConnectionStrings["mcqexamConnectionString2"].ConnectionString;
        con = new MySqlConnection(connString);
        con.Open();

        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        string contentType = FileUpload1.PostedFile.ContentType;
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
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                    string query = "INSERT INTO mcqexam.Question(que_desc,opt1,opt2,opt3,opt4,ans,marks,qid,image) VALUES('" + que.Text + "','" + opt1.Text + "','" + opt2.Text + "','" + opt3.Text + "','" + opt4.Text + "','" + ans.Text + "','" + marks.Text + "','" + quizid + "', @Content)";

                    cmd = new MySqlCommand(query,con);
                    
                    cmd.Parameters.AddWithValue("@Content", bytes);
                    
                    cmd.ExecuteNonQuery();
                    str1 = "INSERT INTO mcqexam.Question_Bank(quee_desc,optt1,optt2,optt3,optt4,anss,markss, image) VALUES('" + que.Text + "','" + opt1.Text + "','" + opt2.Text + "','" + opt3.Text + "','" + opt4.Text + "','" + ans.Text + "','" + marks.Text + "', @Content)";
                    cmd1 = new MySqlCommand(str1, con);
                    cmd1.Parameters.AddWithValue("@Content", bytes);
                    cmd1.ExecuteNonQuery();
                    Label4.Text = "Question added";

                }



            }
            
            //con.Close();
            //Response.Redirect("Edit_Quiz.aspx");
            
            con.Close();
        }

    }

    protected void Add_image(object sender, EventArgs e)
    {

    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    protected void ans_TextChanged(object sender, EventArgs e)
    {

    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            byte[] bytes = (byte[])(e.Row.DataItem as DataRowView)["image"];
            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            (e.Row.FindControl("Image1") as Image).ImageUrl = "data:image/png;base64," + base64String;
        }
    }
}