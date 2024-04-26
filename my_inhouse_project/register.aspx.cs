using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
       

        cmd = new SqlCommand("insert into users(userName,userPass,userNumber,userBtd,userGender,userEmail,userAdd,userCity) values('" + userName.Text + "','" + userPass.Text + "','" + userNumber.Text + "','" + userBtd.Text + "','" + rdl.Text + "','" + userEmail.Text + "','" + userAdd.Text + "','" + userCity.Text + "')",con);
        cmd.ExecuteNonQuery();
       
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Registration Successfull.','Thank You For Registration ','success').then((value) => { window.location ='login.aspx'; });", true);



        userName.Text = userEmail.Text = userGender.Text = userNumber.Text = userPass.Text = userBtd.Text = userAdd.Text = userCity.Text = string.Empty;
    }
}