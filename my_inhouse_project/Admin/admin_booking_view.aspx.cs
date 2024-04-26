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
        rp6.DataSource = rp.read("select b.*,p.projectName,u.*  from bookings b,projects p,users u where p.projectId = b.projectId and b.userId = u.usersId");
        rp6.DataBind();

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int faqId = Convert.ToInt32(btn.CommandArgument);
        int row = con.allQuery("delete from bookings where bookingId = '" + faqId + "'");
        
        loadData();
    }
}