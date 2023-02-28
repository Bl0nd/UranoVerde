using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using UranoVerde.DTO;
using System.Collections;

namespace UranoVerde.DAL
{
    public class UsuarioDAL : conexao
    {
        //CRUD

        //inserir
        public void Cadastrar(UsuarioDTO objCad)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("INNER INTO Usuario(nomeUsuario,emailUsuario,senhaUsuario,cellUsuario,enderecoUsuario,cepUsuario,tpUsuarioId) VALUES (@nomeUsuario, @emailUsuario, @senhaUsuario, @cellUsuario, @enderecoUsuario, @cepUsuario, @tpUsuarioId)", conn);
                cmd.Parameters.AddWithValue("@nomeUsuario", objCad.nomeUsuario);
                cmd.Parameters.AddWithValue("@emailUsuario", objCad.emailUsuario);
                cmd.Parameters.AddWithValue("@senhaUsuario", objCad.senhaUsuario);
                cmd.Parameters.AddWithValue("@cellUsuario", objCad.cellUsuario);
                cmd.Parameters.AddWithValue("@enderecoUsuario", objCad.enderecoUsuario);
                cmd.Parameters.AddWithValue("@cepUsuario", objCad.cepUsuario);
                cmd.Parameters.AddWithValue("@tpUsuarioId", objCad.tpUsuarioId);

                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao Cadastrar !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //listar
        public List<UsuarioDTO> Listar()
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("", conn);
                dr = cmd.ExecuteReader();
                List<UsuarioDTO> lista = new List<UsuarioDTO>(); //criando lista vazio

                while (dr.Read())
                {
                    UsuarioDTO obj = new UsuarioDTO();
                    obj.idUsuario = Convert.ToInt32(dr["idUsuario"]);
                    obj.nomeUsuario = dr["nomeUsuario"].ToString();
                    obj.emailUsuario = dr["emailUsuario"].ToString();
                    obj.senhaUsuario = dr["senhaUsuario"].ToString();
                    obj.cellUsuario = dr["cellUsuario"].ToString();
                    obj.enderecoUsuario = dr["enderecoUsuario"].ToString();
                    obj.cepUsuario = dr["cepUsuario"].ToString();
                    obj.tpUsuarioId = Convert.ToInt32(dr["tpUsuarioId"]);
                    //adicionar a lista
                    lista.Add(obj);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar registros !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }
        //Update
        public void Editar(UsuarioDTO objEdita)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("UPDATE Usuario nomeUsuario=@nomeUsuario,emailUsuario=@emailUsuario,senhaUsuario=@senhaUsuario,cellUsuario=@cellUsuario,enderecoUsuario=@enderecoUsuario,cepUsuario=@cepUsuario,tpUsuarioId=@tpUsuarioId", conn);
                cmd.Parameters.AddWithValue("@nomeUsuario", objEdita.nomeUsuario);
                cmd.Parameters.AddWithValue("@emailUsuario", objEdita.emailUsuario);
                cmd.Parameters.AddWithValue("@senhaUsuario", objEdita.senhaUsuario);
                cmd.Parameters.AddWithValue("@cellUsuario", objEdita.cellUsuario);
                cmd.Parameters.AddWithValue("@enderecoUsuario", objEdita.enderecoUsuario);
                cmd.Parameters.AddWithValue("@cepUsuario", objEdita.cepUsuario);
                cmd.Parameters.AddWithValue("@tpUsuarioId", objEdita.tpUsuarioId);

                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Editar registros !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //Delete
        public void Excluir(int objExclui)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("DELETE FROM Usuario WHERE idUsuario = @idUsuario", conn);
                cmd.Parameters.AddWithValue("@idUsuario", objExclui);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Excluir registros !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }
    }
}
