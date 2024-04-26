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
        con = new ConnectionClass();
        rr = new readRepeater(Application);
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
    protected void btnfaq_Click(object sender, EventArgs e)
    {
        int row = con.allQuery("insert into faqs(projectId,faqQue,faqAns,faqNote)values('" + projectId.Text + "','" + faqQue.Text + "','" + faqAns.Text + "','"+faqNote.Text+"')");

        
        Response.Write("<script> alert('FAQ Added') </script>");

        faqAns.Text = faqQue.Text = faqNote.Text = string.Empty;

    }
}