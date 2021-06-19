using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;
using System.Windows.Forms;
using System.Drawing.Drawing2D;
using System.Windows.Input;
using System.Configuration;

public partial class Add_Questions : System.Web.UI.Page
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
        
       
        
        str = "Select * from Question_Bank";
        
        cmd = new MySqlCommand(str, con);
        MySqlDataAdapter da = new MySqlDataAdapter();
        da.SelectCommand = cmd;
        DataTable dt = new DataTable();
        da.Fill(dt);
        gvImages.DataSource = dt;
        gvImages.DataBind();
        
        con.Close();

    }

    protected void opt1_TextChanged(object sender, EventArgs e)
    {

    }

    

    protected void Add_Student(object sender, EventArgs e)
    {

    }

    protected void Add_que(object sender, EventArgs e)
    {
        MySqlConnection con;
        string connString = System.Configuration.ConfigurationManager.ConnectionStrings["mcqexamConnectionString2"].ConnectionString;
        con = new MySqlConnection(connString);
        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        string contentType = FileUpload1.PostedFile.ContentType;
        
        String str, str1;

       
        using (Stream fs = FileUpload1.PostedFile.InputStream)
        {
            using (BinaryReader br = new BinaryReader(fs))
            {
                byte[] bytes = br.ReadBytes((Int32)fs.Length);
                //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                string query = "INSERT INTO mcqexam.Question_Bank(quee_desc,optt1,optt2,optt3,optt4,anss,markss,image) VALUES('" + que.Text + "','" + opt1.Text + "','" + opt2.Text + "','" + opt3.Text + "','" + opt4.Text + "','" + ans.Text + "','" + marks.Text + "', @Content)";
      
                MySqlCommand cmd = new MySqlCommand(query);
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@Content", bytes);
                con.Open();
                cmd.ExecuteNonQuery();
                Label4.Text = "Question added";
                
            }
                    
                
            
        }
       
            Page.Response.Redirect(Page.Request.Url.ToString(), true);


      
        con.Close();
           
       
        


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
        Session.Clear();
        Response.Redirect("Default.aspx");
    }

    protected void qid_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Add_image1(object sender, ImageClickEventArgs e)
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