using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    ConnectionClass con;
    readRepeater rr;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        loadData();

    }
    public void loadData()
    {
        test.DataSource = rr.read("select p.*,t.*,u.* from projects p,testimonials t,users u where t.userId = u.usersId and t.projectId = p.projectId");
        test.DataBind();
    }
    public string getStrars(int num)
    {
        string star = "";
        for (int i = 0; i < num; i++)
        {
            star += "<i class='fa fa-star'></i>";
        }
        return star;
    }
    
}