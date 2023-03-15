using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using UranoVerde.DTO;
using System.Collections;
using MySql.Data.MySqlClient;

namespace UranoVerde.DAL
{
    public class UsuarioDAL : conexao
    {
        //CRUD

        //Create
        public void Cadastrar(UsuarioDTO objCad)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("INSERT INTO Usuario (nomeUsuario, emailUsuario, senhaUsuario, cellUsuario, enderecoUsuario, cepUsuario, tpUsuarioId) VALUES (@nomeUsuario, @emailUsuario, @senhaUsuario, @cellUsuario, @enderecoUsuario, @cepUsuario, @tpUsuarioId)", conn);
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
        public List<UsuarioListDTO> Listar()
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT idUsuario,nomeUsuario,emailUsuario,senhaUsuario,cellUsuario,enderecoUsuario,cepUsuario, descUsuarioTp FROM Usuario INNER JOIN tpusuario ON usuario.tpUsuarioId = tpusuario.idUsuarioTp", conn);
                dr = cmd.ExecuteReader();
                List<UsuarioListDTO> lista = new List<UsuarioListDTO>(); //criando lista vazio

                while (dr.Read())
                {
                    UsuarioListDTO obj = new UsuarioListDTO();
                    obj.idUsuario = Convert.ToInt32(dr["idUsuario"]);
                    obj.nomeUsuario = dr["nomeUsuario"].ToString();
                    obj.emailUsuario = dr["emailUsuario"].ToString();
                    obj.senhaUsuario = dr["senhaUsuario"].ToString();
                    obj.cellUsuario = dr["cellUsuario"].ToString();
                    obj.enderecoUsuario = dr["enderecoUsuario"].ToString();
                    obj.cepUsuario = dr["cepUsuario"].ToString();
                    obj.descUsuarioTp = dr["descUsuarioTp"].ToString();

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
                cmd = new MySqlCommand("UPDATE Usuario nomeUsuario=@nomeUsuario,emailUsuario=@emailUsuario,senhaUsuario=@senhaUsuario,cellUsuario=@cellUsuario,enderecoUsuario=@enderecoUsuario,cepUsuario=@cepUsuario,tpUsuarioId=@tpUsuarioId", conn);
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
        public void Excluir(int objExcluir)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("DELETE FROM usuario WHERE idUsuario= @idUsuario", conn);
                cmd.Parameters.AddWithValue("@idUsuario", objExcluir);
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

        //Autenticar
        public UsuarioAutenticaDTO Autenticar(string objNome, string objSenha)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT nomeUsuario,senhaUsuario,tpUsuarioId FROM usuario WHERE nomeusuario = @nomeusuario AND senhausuario = @senhausuario;", conn);
                cmd.Parameters.AddWithValue("@NomeUsuario", objNome);
                cmd.Parameters.AddWithValue("@SenhaUsuario", objSenha);
                dr = cmd.ExecuteReader();
                UsuarioAutenticaDTO obj = null;
                if (dr.Read())
                {
                    obj = new UsuarioAutenticaDTO();
                    obj.nomeUsuario = dr["nomeUsuario"].ToString();
                    obj.senhaUsuario = dr["senhaUsuario"].ToString();
                    obj.tpUsuarioId = Convert.ToInt32(dr["tpUsuarioId"]);
                }
                return obj;
            }
            catch (Exception ex)
            {

                throw new Exception("Usuário não cadastrado !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //BuscarPorId
        public UsuarioDTO BuscaPorId(int idUsuario)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT * FROM Usuario WHERE idUsuario = idUsuario", conn);
                cmd.Parameters.AddWithValue("@idUsuario", idUsuario);
                dr = cmd.ExecuteReader();
                UsuarioDTO obj = null;
                if (dr.Read())
                {
                    obj = new UsuarioDTO();
                    obj.idUsuario = Convert.ToInt32(dr["idUsuario"]);
                    obj.nomeUsuario = dr["nomeUsuario"].ToString();
                    obj.emailUsuario = dr["emailUsuario"].ToString();
                    obj.senhaUsuario = dr["senhaUsuario"].ToString();
                    obj.cellUsuario = dr["cellUsuario"].ToString();
                    obj.enderecoUsuario = dr["enderecoUsuario"].ToString();
                    obj.cepUsuario = dr["cepUsuario"].ToString();
                    obj.tpUsuarioId = dr["tpUsuarioId"].ToString();
                }
                return obj;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao buscar registro !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //Listar Admin

        public List<UsuarioDTO> ListarAdmin()
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT nomeUsuario, emailUsuario, senhaUsuario, cellUsuario, enderecoUsuario, cepUsuario, descUsuarioTp FROM Usuario INNER JOIN tpusuario ON usuario.tpUsuarioId = tpusuario.idUsuarioTp", conn);
                dr = cmd.ExecuteReader();
                //ponteiro - lista vazia
                List<UsuarioDTO> lista = new List<UsuarioDTO>();
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
                    obj.tpUsuarioId = dr["tpUsuarioId"].ToString();

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
    }
}
