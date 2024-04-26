using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
/// <summary>
/// Summary description for readRepeater
/// </summary>
public class readRepeater
{
    SqlConnection con;
    SqlDataAdapter sda;
    DataSet ds;

	public readRepeater(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        
	}
    public DataSet read(string query)
    {
        ds = new DataSet();
        sda = new SqlDataAdapter(query,con);
        sda.Fill(ds);
        return ds;
    }
}