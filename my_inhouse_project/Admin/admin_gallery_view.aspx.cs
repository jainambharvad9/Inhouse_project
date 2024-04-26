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
    SqlConnection con;
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {
        
        con = new SqlConnection(Application["conn"].ToString());
        rp = new readRepeater(Application);
        if (!IsPostBack)
            loadData();
        con.Open();

    }
    public void loadData()
    {
        rp2.DataSource = rp.read("select g.*,p.projectName from gallerys g,projects p where p.projectId = g.projectId");
        rp2.DataBind();

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int galleryId = Convert.ToInt32(btn.CommandArgument);
        cmd = new SqlCommand("delete from gallerys where galleryId = '" + galleryId + "'",con);
        cmd.ExecuteNonQuery();
        loadData();
    }
}