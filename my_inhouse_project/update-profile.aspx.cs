using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(Session["userId"] != null))
        {
            Response.Redirect("login.aspx");
        }
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();
    }

    protected void signinBtn_Click(object sender, EventArgs e)
    {
        string userName, userEmail, userPass, q;
        userName = txtUname.Text;
        userEmail = txtEmail.Text;
        userPass = txtPassword.Text;



        try
        {
            q = "select * from users where userEmail = '" + userEmail + "'";
            cmd.Connection = con;
            cmd.CommandText = q;

            SqlDataReader dr = cmd.ExecuteReader();
            if (!dr.HasRows)
            {

                dr.Close();
                q = "update users set userName='" + userName + "',userEmail='" + userEmail + "',userPass='" + userPass + "' where usersId='" + Session["userId"] + "'";
                cmd.Connection = con;
                cmd.CommandText = q;
                int row = cmd.ExecuteNonQuery();
                if (row > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "SweetAlert", "swal({title: 'Profile Updated',icon: 'success'});", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "SweetAlert", "swal({title: 'Profile Updated Failed',icon: 'error'});", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "SweetAlert", "swal({title: 'this email is already registered',icon: 'error'});", true);
            }
        }
        catch (Exception e1)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "SweetAlert", "swal({title: '" + e1 + "',icon: 'error'});", true);
        }

    }
}