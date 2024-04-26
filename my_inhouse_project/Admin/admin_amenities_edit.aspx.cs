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
        rr = new readRepeater(Application);
        con = new ConnectionClass();
        fatchId = Convert.ToInt32(Request.QueryString["aId"]);
        if (!IsPostBack)
        {

            loadData();
        }

    }
    public void loadData()
    {

        readrep.DataSource = rr.read("select * from amenities where ameId = '" + fatchId + "'");
        readrep.DataBind();
    }

    protected void readp1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
         DropDownList ddl = (DropDownList)e.Item.FindControl("projectId");
        ddl.DataSource = rr.read("select * from projects");
        ddl.DataValueField = "projectId";
        ddl.DataTextField = "projectName";
        ddl.DataBind();
    }
    protected void ameUpdate_Click(object sender, EventArgs e)
    {
         Button btn = (Button)sender;
        RepeaterItem item = (RepeaterItem)btn.NamingContainer;

        string projectId = ((DropDownList)item.FindControl("projectId")).Text;
        string ameImage = ((FileUpload)item.FindControl("ameImage")).FileName;
        string ameDetail = ((TextBox)item.FindControl("ameDetail")).Text;
        string oldImage = ((HiddenField)item.FindControl("oldImg")).Value;
        
        int row;
        string query;
        if(((FileUpload)item.FindControl("ameImage")).HasFile)
        {
            query = "update amenities set projectId = '" + projectId + "',ameImage='" + ameImage + "',ameDetail='" + ameDetail + "' where ameId = '" + fatchId + "'";
            ((FileUpload)item.FindControl("ameImage")).SaveAs(Server.MapPath("../amenimg/") + ameImage);
        }
        else
        {
            query = "update amenities set projectId = '" + projectId + "',ameImage='" + ameImage + "',ameDetail='" + ameDetail + "' where ameId = '" + fatchId + "'";
        }

        row = con.allQuery(query);
        if(row > 0)
        {
            Response.Write("<script> alert('Record Update')</script>");
        }
    }
    }
