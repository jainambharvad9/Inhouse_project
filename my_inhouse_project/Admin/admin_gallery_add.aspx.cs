using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    readRepeater rr;
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        rr = new readRepeater(Application);
        con = new ConnectionClass();
        if (!IsPostBack)
           
            loadData();
    }
    public void loadData()
    {
        projectId.DataSource = rr.read("select * from projects");
        projectId.DataValueField = "projectId";
        projectId.DataTextField = "projectName";
        projectId.DataBind();
    }
    protected void btngallery_Click(object sender, EventArgs e)
    {
        string gimg = galleryImage.FileName;
        string path = Server.MapPath("../galleryimage/");

        if (galleryImage.HasFile)
        {
            int row = con.allQuery("insert into gallerys(projectId,galleryImage,galleryTitle)values('" + projectId.Text + "','" + galleryImage.FileName + "','" + galleryTitle.Text + "')");            
                if(row>0)
                {
                    galleryImage.SaveAs(path+ gimg);
                    Response.Write("<script>alert('gallery photo added')</script>");
                }
        }
        else
        {
            Response.Write("<script>alert('gallery photo added')</script>");
        }
        gimg = galleryTitle.Text = string.Empty;      
    }
}