using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    readRepeater rp;
   // SqlConnection con;
    SqlCommand cmd;

    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
      //  con = new SqlConnection(Application["conn"].ToString());
        con = new ConnectionClass();
        rp = new readRepeater(Application);
        if (!IsPostBack)
            loadData();
       // con.Open();
    }
    public void loadData()
    {
        rp1.DataSource = rp.read("select a.*,p.projectName from amenities a,projects p where p.projectId = a.projectId");
        rp1.DataBind();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int ameId = Convert.ToInt32(btn.CommandArgument);
        //cmd = new SqlCommand("delete from amenities where ameId = '" + ameId + "'", con);
        int row=con.allQuery("delete from amenities where ameId = '" + ameId + "'");
      //  cmd.ExecuteNonQuery();
        if(row>0)
        {
            
        }
        Response.Write("<script>confirm('Are You Sure Delet This Amenities')</script>");
        loadData();
       // ScriptManager.RegisterStartupScript(this, this.GetType(), "confirm", "swal({'Are You Sure?,'You Will Not br able to Recover this Amenities','warning'showCencelButton:true,confirmButtonText:'Yes Delete It!',closeOnConfirm:false,closeOnCancel:false}, function(isConfirm){if(isConfirm){swal('Deleted!','Your Amen has Been Deleted.','success');}else{ swal('Cencelled!','Your Amen has Been Safe :','error');)}).then((value) => { window.location =''; });", true);


    }
}