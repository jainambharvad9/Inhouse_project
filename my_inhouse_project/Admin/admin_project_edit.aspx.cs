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
        fatchId = Convert.ToInt32(Request.QueryString["pId"]);
        if (!IsPostBack)
        {
            loadData();
        }
    }

    public void loadData()
    {

        readp.DataSource = rr.read("select * from projects where projectId = '" + fatchId + "'");
        Response.Write(fatchId);
        readp.DataBind();
    }

    protected void readp_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

       /* TextBox ddl = (TextBox)e.Item.FindControl("projectId");
        ddl.DataSource = rr.read("select * from projects");
        ddl.DataValueField = "projectId";
        ddl.DataTextField = "projectName";
        ddl.DataBind();*/
    }
    protected void btnproject_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        RepeaterItem item = (RepeaterItem)btn.NamingContainer;

        string projectName = ((TextBox)item.FindControl("projectName")).Text;
        string projectPrice = ((TextBox)item.FindControl("projectPrice")).Text;
        string projectDiscrip = ((TextBox)item.FindControl("projectDiscrip")).Text;
        string projectType = ((DropDownList)item.FindControl("projectType")).Text;
        string projectImage = ((FileUpload)item.FindControl("projectImage")).FileName;
        string oldImage = ((HiddenField)item.FindControl("oldImg")).Value;
        string projectCity = ((TextBox)item.FindControl("projectCity")).Text;
        string projectArea = ((TextBox)item.FindControl("projectArea")).Text;
        string projectAdd = ((TextBox)item.FindControl("projectAdd")).Text;
        string projectConper = ((TextBox)item.FindControl("projectConper")).Text;
        string projectConno = ((TextBox)item.FindControl("projectConno")).Text;
        string projectBa = ((TextBox)item.FindControl("projectBa")).Text;


       

        int row;
        string query;


        if (((FileUpload)item.FindControl("projectImage")).HasFile)
        {
            query = "update projects set projectName = '" + projectName + "',projectPrice='" + projectPrice + "',projectDiscrip='" + projectDiscrip + "',projectType = '" + projectType + "',projectImage = '" + projectImage + "',projectCity = '" + projectCity + "',projectArea = '" + projectArea + "',projectAdd = '" + projectAdd + "',projectConper = '" + projectConper + "',projectConno = '" + projectConno + "',projectBa = '" + projectBa + "' where projectId = '" + fatchId + "'";
            ((FileUpload)item.FindControl("projectImage")).SaveAs(Server.MapPath("../projectimage/") + projectImage);
        }
        else
        {
            query = "update projects set projectName = '" + projectName + "',projectPrice='" + projectPrice + "',projectDiscrip='" + projectDiscrip + "',projectType = '" + projectType + "',projectImage = '" + oldImage + "',projectCity = '" + projectCity + "',projectArea = '" + projectArea + "',projectAdd = '" + projectAdd + "',projectConper = '" + projectConper + "',projectConno = '" + projectConno + "',projectBa = '" + projectBa + "' where projectId = '" + fatchId + "'";
        }

        row = con.allQuery(query);
        if (row > 0)
        {
            Response.Write("<script> alert(' record inserted')</script>");
        }
    }
}