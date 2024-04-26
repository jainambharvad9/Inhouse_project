using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for ConnectionClass
/// </summary>
public class ConnectionClass
{
    SqlConnection con;
    SqlCommand cmd;
	public ConnectionClass()
	{
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\inhouse.mdf;Integrated Security=True;pooling=false");
        con.Open();
		//
		// TODO: Add constructor logic here
		//
	}
    public object allScalar(string query)
    {
        cmd = new SqlCommand(query, con);
        return cmd.ExecuteScalar();
    }
    
    public int allQuery(string query)
    {
        cmd = new SqlCommand(query, con);
        return cmd.ExecuteNonQuery();
    }
    public DataTable allRecord(string query)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        sda.Fill(dt);
        return dt;
    }
}