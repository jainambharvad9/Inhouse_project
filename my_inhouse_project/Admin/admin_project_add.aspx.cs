using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Admin_Default : System.Web.UI.Page
{
    ConnectionClass con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
    }
    protected void btnproject_Click(object sender, EventArgs e)
    {
        string pimg = projectImage.FileName;
        string path = Server.MapPath("../projectimage/");
        if (projectImage.HasFile)
        {

            int row = con.allQuery("insert into projects(projectName,projectPrice,projectDiscrip,projectType,projectImage,projectCity,projectArea,projectAdd,projectConper,projectConno,projectBa) values('" + projectName.Text + "','" + projectPrice.Text + "','" + projectDiscrip.Text + "','" + projectType.Text + "','" + pimg + "','" + projectCity.Text + "','" + projectArea.Text + "','" + projectAdd.Text + "','" + projectConper.Text + "','" + projectConno.Text + "','" + projectBa.Text + "')");


            if (row > 0)
            {
                projectImage.SaveAs(path + pimg);
                Response.Write("<script>alert('project added')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('project added')</script>");
        }
        projectName.Text = projectPrice.Text = projectDiscrip.Text = projectType.Text = pimg = projectCity.Text = projectArea.Text = projectAdd.Text = projectConper.Text = projectConno.Text = projectBa.Text = string.Empty;

    }
}