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
       
        cmd = new SqlCommand("select * from users where usersId = '" + Session["userId"] + "'",con);

         SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.HasRows)
        {
            sdr.Read();
            //pImg = sdr.GetString(4);
            userName = sdr.GetString(1);
            usersId = sdr.GetInt32(0);
            userEmail = sdr.GetString(6);
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
            projectName = sdr2.GetString(1).ToString();
        }
        sdr2.Close();
        Page.DataBind();
       
       // loadData();
    }


    
    protected void btndelete_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int bookingId;
        if (int.TryParse(btn.CommandArgument, out bookingId))
        {
            // Conversion successful, proceed with deleting the booking
         SqlCommand    cmd4 = new SqlCommand("delete from bookings WHERE bookingId = @BookingId", con);
            cmd4.Parameters.AddWithValue("@BookingId", bookingId);
            cmd4.ExecuteNonQuery();
        }
        else
        {
            // Handle the case where CommandArgument is not a valid integer
            // This might involve logging an error or showing a message to the user
        }

        
    }
}