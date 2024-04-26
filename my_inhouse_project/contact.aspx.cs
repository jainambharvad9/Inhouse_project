using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page

{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        Response.Write(con.State.ToString());
    }
    protected void sndbtn_Click(object sender, EventArgs e)
    {
       // ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
            //"swal('Send Review Successfully. ', 'Thank You For Review ', 'success')", true);
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Done !!!','Your Message Send successfully','success').then((value) => { window.location ='index.aspx'; });", true);
    }
}