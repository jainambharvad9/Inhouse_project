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


    protected void Page_Load(object sender, EventArgs e)
    {
        rp = new readRepeater(Application);
        if(!IsPostBack)
        loadData();
       
    }
    public void loadData()
    {
        readRepeater.DataSource = rp.read("select * from users");
        readRepeater.DataBind();
        
    }
}