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
        fatchId = Convert.ToInt32(Request.QueryString["gId"]);
        if (!IsPostBack)
        {
           
            loadData();
        }
        
    }
    public void loadData()
    {
        
        readp.DataSource = rr.read("select * from gallerys where galleryId = '"+ fatchId +"'");
        readp.DataBind();
    }

    protected void btngallery_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        RepeaterItem item = (RepeaterItem)btn.NamingContainer;

        string projectId = ((DropDownList)item.FindControl("projectId")).Text;
        string galleryImage = ((FileUpload)item.FindControl("galleryImage")).FileName;
        string galleryTitle = ((TextBox)item.FindControl("gallerytitle")).Text;
        string oldImage = ((HiddenField)item.FindControl("oldImg")).Value;
        
        int row;
        string query;
        if(((FileUpload)item.FindControl("galleryImage")).HasFile)
        {
            query = "update gallerys set projectId = '"+projectId+"',galleryImage='"+galleryImage+"',galleryTitle='"+galleryTitle+"' where galleryId = '"+fatchId+"'";
            ((FileUpload)item.FindControl("galleryImage")).SaveAs(Server.MapPath("../galleryimage/") + galleryImage);
        }
        else
        {
            query = "update gallerys set projectId = '" + projectId + "',galleryImage='" + oldImage + "',galleryTitle='" + galleryTitle + "' where galleryId = '" + fatchId + "'";
        }

        row = con.allQuery(query);
        if(row > 0)
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