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
    protected void btname_Click(object sender, EventArgs e)
    {
        string aimage = ameImage.FileName;
        string path = Server.MapPath("../amenimg/");            
        if (ameImage.HasFile)
        {
              int row = con.allQuery("insert into amenities(projectId,ameDetail,ameImage) values('" + projectId.Text + "','" + ameDetal.Text + "','" + aimage + "')");
           
                  if(row>0)
                  {
                      ameImage.SaveAs(path + aimage);
                      Response.Write("<script>alert('Amenities Add')</script>");
                  }
            /*  Response.Write(projectId.Text + ameDetal.Text+aimage); */
        }
        else
        {
            Response.Write("<script>alert('Amenities Add')</script>");
        }
        ameDetal.Text = aimage = string.Empty;
    }
}