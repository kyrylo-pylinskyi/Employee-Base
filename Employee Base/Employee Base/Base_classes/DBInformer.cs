using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employee_Base
{
    class DBInformer
    {
        public static string GetConectionString()
        {
            return "Data Source = DESKTOP-7QBCFRG\\SQLEXPRESS;Initial Catalog = EmployeeBase;User ID = sa; Password = 123456";
        }

        public void InsertEmployee(Employee employee, string table)
        {
            using (var connection = new SqlConnection(GetConectionString()))
            {
                connection.Open();
                using (var cmd = new SqlCommand($"INSERT INTO {table}() " +
                    $"VALUES()", connection))
                {
                    cmd.ExecuteNonQuery();
                }
                connection.Close();
            }
        }

        public DataTable SelectEmployee(string query)
        {
            using (var connection = new SqlConnection(GetConectionString()))
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = DBInformer.GetConectionString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = $"{query}";
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable("Table");
                da.Fill(dt);
                connection.Close();

                return dt;
            }
        }
    }
}
