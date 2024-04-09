using System;
using System.Web.UI;
using System.Data.SqlClient;

public partial class Registartion : System.Web.UI.Page
{
    DS_REGI.StudentMst_SELECTDataTable StuDT = new DS_REGI.StudentMst_SELECTDataTable();
    DS_REGITableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_REGITableAdapters.StudentMst_SELECTTableAdapter();

    DS_CATE.catemst_SELECTDataTable CDT = new DS_CATE.catemst_SELECTDataTable();
    DS_CATETableAdapters.catemst_SELECTTableAdapter CAdapter = new DS_CATETableAdapters.catemst_SELECTTableAdapter();
    public SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-HAM5H2M\SQLEXPRESS;Initial Catalog=ClassVirtual;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
       // lblfile.Text = "";
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter._select();
            drpcourse.DataSource = CDT;
            drpcourse.DataTextField = "cname";
            drpcourse.DataValueField = "cid";
            drpcourse.DataBind();

            drpcourse.Items.Insert(0, "SELECT");
        }
    }
   
    protected void btnstuadd_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {



                FileUpload1.SaveAs(Server.MapPath("~/Studentimg/" + FileUpload1.FileName));
           
            StuAdapter.Insert(txtname.Text,txtemail.Text, txtmobi.Text,"~/Studentimg/" + FileUpload1.FileName,drpcourse.SelectedItem.Text,txtcity.Text, txtadd.Text, txtpin.Text, txtuname.Text, txtpass.Text);

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into dbo." + drpcourse.SelectedItem.Text + "TableMst(rollno,name) values('"+ txtroll .Text+ "','" + txtname.Text + "')", con);
            //cmd.CommandType = cmd.CommandText;
            cmd.ExecuteNonQuery();
               cmd.Dispose();
            con.Close();


            lblmsg.Text = "Student Added.";
            txtname.Text = "";
            txtadd.Text = "";
            txtcity.Text = "";
            txtemail.Text = "";
            txtmobi.Text = ""; txtpass.Text = "";
            txtpin.Text = "";
            txtuname.Text = "";
            txtcpass.Text = "";
            drpcourse.SelectedIndex = 0;

            }
          


        }
        
    }

    
