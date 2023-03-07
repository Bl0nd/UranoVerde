using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;//

namespace UranoVerde.DAL
{
    public class conexao
    {
        //variaveis
        protected MySqlConnection conn;
        protected MySqlCommand cmd;
        protected MySqlDataReader dr;

        protected void Conectar()
        {
            try
            {
                conn = new MySqlConnection("Data Source=localhost; Initial Catalog= uranoverde; Uid= root; Pwd= ;");
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
