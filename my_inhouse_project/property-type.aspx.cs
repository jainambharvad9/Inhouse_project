using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    readRepeater rr;
    ConnectionClass con;
    string pid,uid;
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["userId"] == null)
          Response.Redirect("login.aspx");
        rr = new readRepeater(Application);
        con = new  ConnectionClass();
        pid = Request.QueryString["id"];
        loadProject();
        loadData();
        uid = Session["userId"].ToString(); 
       
    }


    public void loadGallery(Repeater r)
    {
        r.DataSource = rr.read("select * from gallerys where projectId =  '" + pid + "'");
            r.DataBind();
    }
    
   // public void loadameni(Repeater r)
    //{
      //  r.DataSource = rr.read("select * from amenities where projectId = " + pid);
       // r.DataBind();
    //}
    
    public void loadProject()
    {
        rpd.DataSource = rr.read("select * from projects where projectId = '"+pid+"'");
        rpd.DataBind();

    }
    protected void bookpro_Click(object sender, EventArgs e)

    {
        Button btn = sender as Button;
        RepeaterItem item = btn.NamingContainer as RepeaterItem;
        string remark = (item.FindControl("bookingRemark") as TextBox).Text;
        int row =  con.allQuery("insert into bookings (bookingDate,bookingRemark,userId,projectId) values ('"+ DateTime.Now.ToString("yyyy/MM/dd") +"','"+ remark +"','"+uid+"','"+pid+"')");

            Response.Redirect("thankyou.aspx");
     
      
    }
    protected void rpd_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        loadGallery((Repeater)e.Item.FindControl("gallery"));
        //loadameni((Repeater)e.Item.FindControl("amenities"))zz;
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


    protected void btnreview_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        RepeaterItem item = btn.NamingContainer as RepeaterItem;
        string comm = (item.FindControl("testComm") as TextBox).Text;
        string star = (item.FindControl("testStar") as DropDownList).SelectedValue;
        int row = con.allQuery("insert into testimonials (testComm,testStar,userId,projectId)values('" + comm + "','" + star + "','" + uid + "','" + pid + "')");

        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
            "swal('Send Review Successfully. ', 'Thank You For Your Review', 'success')", true);
 
    }
}