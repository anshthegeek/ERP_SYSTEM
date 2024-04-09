using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ContactUs : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ClassVirtual;integrated security=true");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void clear()
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtsub.Text = "";
        txtarea.Text = "";
    }
    protected void cli_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tblcontact(contact_name,contact_email,contact_subject,contact_message)values('" + txtname.Text + "','" + txtemail.Text + "','" + txtsub.Text + "','" + txtarea.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        clear();
        lblmsg.Text = "Submittd";
    }
}