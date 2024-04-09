using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class FEED_MAIN2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ClassVirtual;integrated security=true");
    private object resumebtn;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            Show();
        }  
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
  
}