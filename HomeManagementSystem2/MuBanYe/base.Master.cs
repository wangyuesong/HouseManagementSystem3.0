using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2
{
    public partial class _base : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = ConfigurationManager.ConnectionStrings["HouseManagementDBConnectionString3"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(s))
            {
                string sql = "select * from information";
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    //1
                    reader.Read();
                    info0.Text = Convert.ToString(reader[1]);
                    infocontent0.Text = Convert.ToString(reader[2]);

                    //----->2
                    reader.Read();
                    info1.Text = Convert.ToString(reader[1]);
                    infocontent1.Text = Convert.ToString(reader[2]);
                    //----------->3
                    reader.Read();
                    info2.Text = Convert.ToString(reader[1]);
                    infocontent2.Text = Convert.ToString(reader[2]);
                    //------------>4
                    reader.Read();
                    info3.Text = Convert.ToString(reader[1]);
                    infocontent3.Text = Convert.ToString(reader[2]);
                }

                string sql1 = "select * from person, agent";
                SqlCommand command1 = new SqlCommand(sql1, connection);
                using (SqlDataReader reader = command1.ExecuteReader())
                {
                    //1
                    reader.Read();
                    agent0.Text = Convert.ToString(reader[3]);
                    phone0.Text = Convert.ToString(reader[4]);
                    address0.Text = Convert.ToString(reader[2]);

                    //----->2
                    reader.Read();
                    agent0.Text = Convert.ToString(reader[3]);
                    phone0.Text = Convert.ToString(reader[4]);
                    address0.Text = Convert.ToString(reader[2]);
                   
                }

                command.Dispose();
                connection.Close();
            }
        }
    }
}