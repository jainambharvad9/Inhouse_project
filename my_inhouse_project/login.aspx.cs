using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


public partial class _Default : System.Web.UI.Page
{
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string uname, pass;
        uname = Txtusername.Text;
        pass = Txtpassword.Text;
        DataTable user = con.allRecord("select * from users where userEmail = '" + uname + "'");
        DataTable admin = con.allRecord("select * from admins where addEmail = '" + uname + "'");
        if (user.Rows.Count > 0 && user.Rows[0]["userPass"].ToString() == pass)
        {
                Session["userId"] = user.Rows[0]["usersId"];
             

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Login Successfully.','Thank You For Login ','success').then((value) => { window.location ='index.aspx'; });", true);


        }
        else if(admin.Rows.Count > 0 && admin.Rows[0]["addPass"].ToString() == pass)
        {
            Session["addId"] = admin.Rows[0]["addId"];
          
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Admin Login Successfully.','Welcome Back','success').then((value) => { window.location ='Admin/admin_home.aspx'; });", true);

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
             "swal('Try Again. ', 'E-mail And Password Is Incorrect', 'error')", true);

        }

    }
}   