using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    readRepeater rp;
    ConnectionClass con;


    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
        rp = new readRepeater(Application);
        if (!IsPostBack)
            loadData();

    }
    public void loadData()
    {
        rp5.DataSource = rp.read("select p.*,t.*,u.* from projects p,testimonials t,users u where t.userId = u.usersId and t.projectId = p.projectId");
        rp5.DataBind();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int testId = Convert.ToInt32(btn.CommandArgument);
        int row = con.allQuery("delete from testimonials where testId = '" + testId + "'");

        loadData();
    }
}