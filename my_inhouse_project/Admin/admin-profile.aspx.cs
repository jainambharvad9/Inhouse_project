using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    ConnectionClass con;
   readRepeater rr;
   string fatchid;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
        rr = new readRepeater(Application);
        fatchid = Session["addId"].ToString();
        loadData();

    }
    public void loadData()
    {
        readdata.DataSource = rr.read("select * from admins where addId='" + fatchid + "' ");
      
        readdata.DataBind();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
       
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Admin Password not Updated.','Welcome Back','error').then((value) => { window.location ='Admin/admin_home.aspx'; });", true);
        Button btn = sender as Button;
        RepeaterItem item = btn.NamingContainer as RepeaterItem;

        string uname, pass, password,cpassword;
        
        uname = (item.FindControl("addEmail") as TextBox).Text;
        pass = (item.FindControl("addPass") as TextBox).Text;
        password = (item.FindControl("newPass") as TextBox).Text;
        cpassword = (item.FindControl("newPass1") as TextBox).Text;
       
        DataTable admin = con.allRecord("select * from admins where addEmail = '" + uname + "'");
     
        if (admin.Rows.Count > 0 && admin.Rows[0]["addPass"].ToString() == pass && password==cpassword )
        {
            int row = con.allQuery("update admins set addPass='" + password + "' where addEmail ='" + uname + "'  ");
            if(row>0)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Done!!','Password Change Successfully.','success').then((value) => { window.location ='../login.aspx'; });", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Try Again','Password Not Change.','error')", true);

            }
            

        }
        else
        {
           
       
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
             "swal('Try Again. ', 'E-mail And Password Is Incorrect', 'error')", true);

        }
    }
}