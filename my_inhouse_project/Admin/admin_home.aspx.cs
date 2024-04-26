using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Admin_Default : System.Web.UI.Page
{
    ConnectionClass con;
    DataTable bt;
    readRepeater rp;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
        rp = new readRepeater(Application);
        loadData();
        loadBook();
    }
    public void loadData()
    {
         bt = con.allRecord("select * from projects");

         lblproperty.Text = bt.Rows.Count.ToString();

         bt = con.allRecord("Select * from bookings");
         lblbook.Text = bt.Rows.Count.ToString();

         bt = con.allRecord("select * from users");
         lbluser.Text = bt.Rows.Count.ToString();

         bt = con.allRecord("select * from gallerys");
         lblphoto.Text = bt.Rows.Count.ToString();
    }
    public void loadBook()
    {
        rp6.DataSource = rp.read("select top 5 b.*,p.projectName,u.*  from bookings b,projects p,users u where p.projectId = b.projectId and b.userId = u.usersId");
        rp6.DataBind();

    }
}