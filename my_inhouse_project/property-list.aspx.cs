using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
        readpro.DataSource = rp.read("select * from projects");
        readpro.DataBind();

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (projectType.SelectedIndex >= 1)
        {
            string ptype = projectType.SelectedValue;
            readpro.DataSource = rp.read("select * from projects where projectType='" + ptype + "'");
            readpro.DataBind();
        }
        else
        {
            loadData();
        }

    }
}