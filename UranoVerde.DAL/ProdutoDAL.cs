using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UranoVerde.DTO;

namespace UranoVerde.DAL
{
    public class ProdutoDAL : conexao
    {
        //CRUD

        //Create
        public void Cadastrar(ProdutoDTO objCad)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("INSERT INTO Produto(nomeProduto,tipoProduto,valorProduto) VALUES (@nomeProduto, @tipoProduto, @valorProduto)", conn);
                cmd.Parameters.AddWithValue("@nomeUsuario", objCad.nomeProduto);
                cmd.Parameters.AddWithValue("@emailUsuario", objCad.tipoProduto);
                cmd.Parameters.AddWithValue("@senhaUsuario", objCad.valorProduto);

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
        public List<ProdutoDTO> Listar()
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT nomeProduto,tipoProduto,valorProduto FROM Produto", conn);
                dr = cmd.ExecuteReader();
                List<ProdutoDTO> lista = new List<ProdutoDTO>(); //criando lista vazio

                while (dr.Read())
                {
                    ProdutoDTO obj = new ProdutoDTO();
                    obj.nomeProduto = dr["nomeProduto"].ToString();
                    obj.tipoProduto = dr["tipoProduto"].ToString();
                    obj.valorProduto = dr["valorProduto"].ToString();

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
        public void Editar(ProdutoDTO objEdita)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("UPDATE Produto nomeProduto=@nomeProduto,tipoProduto=@tipoProduto,valorProduto=@valorProduto", conn);
                cmd.Parameters.AddWithValue("@nomeProduto", objEdita.nomeProduto);
                cmd.Parameters.AddWithValue("@tipoProduto", objEdita.tipoProduto);
                cmd.Parameters.AddWithValue("@valorProduto", objEdita.valorProduto);

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
                cmd = new MySqlCommand("DELETE FROM Produto WHERE idProduto = @idProduto", conn);
                cmd.Parameters.AddWithValue("@idProduto", objExclui);
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


        //BuscarPorId
        public ProdutoDTO BuscaPorId(int idUsuario)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT * FROM Produto WHERE idProduto = idProduto", conn);
                cmd.Parameters.AddWithValue("@idProduto", idUsuario);
                dr = cmd.ExecuteReader();
                ProdutoDTO obj = null;
                if (dr.Read())
                {
                    obj = new ProdutoDTO();
                    obj.idProduto = Convert.ToInt32(dr["idProduto"]);
                    obj.nomeProduto = dr["nomeProduto"].ToString();
                    obj.tipoProduto = dr["tipoProduto"].ToString();
                    obj.valorProduto = dr["valorProduto"].ToString();
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


    }
}
