using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_Post_Feed : System.Web.UI.Page
{
     SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ClassVirtual;integrated security=true");
    private object fileregister;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            Show();
        }
    } 
    
     
    protected void btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("tblpost_insert", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@post_name", nametext.Text);
         cmd.ExecuteNonQuery();
        con.Close();
        Show();

    }


    public void Show()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tblpost", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Close();
        gv.DataSource = dt;
        gv.DataBind();
    } 


    protected void gv_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from tblpost where post_id='"+e.CommandArgument+"'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Show();
    }
}