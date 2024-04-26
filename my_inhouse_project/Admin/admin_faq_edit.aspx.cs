using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    readRepeater rr;
    int fatchId;
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
        rr = new readRepeater(Application);
        fatchId = Convert.ToInt32(Request.QueryString["fId"]);
        if (!IsPostBack)
        {
           
            loadData();
        }

    }

    public void loadData()
    {

        readp.DataSource = rr.read("select * from faqs where faqId = '" + fatchId + "'");
        readp.DataBind();
    }

    protected void btnfaq_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        RepeaterItem item = (RepeaterItem)btn.NamingContainer;

        string projectId = ((DropDownList)item.FindControl("projectId")).Text;
        string faqQue = ((TextBox)item.FindControl("faqQue")).Text;
        string faqAns = ((TextBox)item.FindControl("faqAns")).Text;
        string faqNote = ((TextBox)item.FindControl("faqNote")).Text;

        int row;
        string query;

        query = "update faqs set projectId = '" + projectId + "',faqQue='" + faqQue + "',faqAns='" + faqAns + "' ,faqNote='" + faqNote + "' where faqId = '" + fatchId + "'";
          

        row = con.allQuery(query);
        if (row > 0)
        {
            Response.Write("<script> alert(' record inserted')</script>");
        }
       
    }
    protected void readp_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        DropDownList ddl = (DropDownList)e.Item.FindControl("projectId");
        ddl.DataSource = rr.read("select * from projects");
        ddl.DataValueField = "projectId";
        ddl.DataTextField = "projectName";
        ddl.DataBind();
    }
}