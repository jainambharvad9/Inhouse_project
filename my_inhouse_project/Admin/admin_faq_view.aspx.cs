using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
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
        {
            loadData();
        }
           
        con.Open();
    }
    public void loadData()
    {
        rp4.DataSource = rp.read("select f.*,p.projectName from faqs f,projects p where p.projectId = f.projectId");
        rp4.DataBind();

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int faqId = Convert.ToInt32(btn.CommandArgument);
        cmd = new SqlCommand("delete from faqs where faqId = '" + faqId + "'", con);
        cmd.ExecuteNonQuery();
        loadData();
    }
}