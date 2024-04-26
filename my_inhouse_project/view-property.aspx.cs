using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd;

    readRepeater rp;
    protected int usersId;
    protected int projectId;
    protected string projectName;
    protected string userEmail;
    protected string userName;
    protected string userNumber;
    protected string userAdd;
    protected string projectImage;
    protected string projectDiscrip;
    protected string projectPrice;
   
    protected string bookingDate;
    
    






    protected string bookingId;

    public void Page_Load(object sender, EventArgs e)
    {
        if (!(Session["userId"] != null))
        {
            Response.Redirect("login.aspx");
        }

        con = new SqlConnection(Application["conn"].ToString());
        con.Open();

        cmd = new SqlCommand("select * from users where usersId = '" + Session["userId"] + "'", con);

        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.HasRows)
        {
            sdr.Read();
            //pImg = sdr.GetString(4);
            userName = sdr.GetString(1);
            usersId = sdr.GetInt32(0);
            userEmail = sdr.GetString(6);
            userNumber = sdr.GetString(3);
            userAdd = sdr.GetString(8);
        }
        sdr.Close();


        SqlCommand cmd2 = new SqlCommand("SELECT b.*, p.*, u.* FROM bookings b, projects p, users u WHERE p.projectId = b.projectId AND b.userId = @userId", con);
        cmd2.Parameters.AddWithValue("@userId", Session["userId"]);

        SqlDataReader sdr1 = cmd2.ExecuteReader();
        if (sdr1.HasRows)
        {
            sdr1.Read();
            //pImg = sdr.GetString(4);
            bookingDate = sdr1.GetDateTime(3).ToString("yyyy-MM-dd");

            bookingId = sdr1.GetInt32(0).ToString();
        }
        sdr1.Close();

        SqlCommand cmd3 = new SqlCommand("select * from projects where projectId = '" + Session["userId"] + "'", con);


        SqlDataReader sdr2 = cmd3.ExecuteReader();
        if (sdr2.HasRows)
        {
            sdr2.Read();
            //pImg = sdr.GetString(4);
            projectId = sdr2.GetInt32(0);
            projectName = sdr2.GetString(1).ToString();
            projectImage = sdr2.GetString(5);
            projectPrice = sdr2.GetString(2);
            projectDiscrip = sdr2.GetString(3);
        }
        sdr2.Close();
        Page.DataBind();

        // loadData();
    }
}