using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Collections;
/// <summary>
/// Summary description for users
/// </summary>
public class users
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
	public users(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();
	}
}