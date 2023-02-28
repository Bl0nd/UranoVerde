using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient; //

namespace UranoVerde.DAL
{
    public class conexao
    {
        //variaveis
        protected SqlConnection conn;
        protected SqlCommand cmd;
        protected SqlDataReader dr;

        protected void Conectar()
        {
            try
            {
                conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB/Initial Catalog=uranoverde;Integrated Security=True");
                conn.Open();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void Desconectar()
        {
            try
            {
                conn.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
