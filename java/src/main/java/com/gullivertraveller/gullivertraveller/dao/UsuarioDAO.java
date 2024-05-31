package com.gullivertraveller.gullivertraveller.dao;

import com.gullivertraveller.gullivertraveller.model.Cidade;
import com.gullivertraveller.gullivertraveller.model.Usuario;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class UsuarioDAO implements DAO<Usuario> {

    private DataSource dataSource;

    public UsuarioDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public DataSource getDataSource() {
        return this.dataSource;
    }

    /* --- mCREATE --- */
    public void create(Usuario object) {
        try{
// declaro a STRING SQL correspondente ao comando
// substituindo os valores pelo caractere “?”
            String SQL = "INSERT INTO 'usuario' (nome, genero, tipo_usuario, email, senha, cpf, telefone, instagram_usuario, data_cadastro) VALUES (?,?,?,?,?,?,?,?,?) ";
// gero um Statement a partir da String
            PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);
// preencho os parâmetros com valores do objeto
            stm.setString(1, object.getNome());
            stm.setString(2, object.getGenero());
            stm.setInt(3, object.getTipo_usuario());
            stm.setString(4, object.getEmail());
            stm.setString(5, object.getSenha());
            stm.setString(6, object.getCpf());
            stm.setString(7, object.getTelefone());
            stm.setString(8, object.getInstagram_usuario());
            stm.setString(9, object.getData_cadastro().format(DateTimeFormatter.ISO_LOCAL_DATE));

// executo a operação de atualização da tabela
            int res = stm.executeUpdate();
            // se deu certo, a variável RES retorna != 0
            if (res != 0) {
                System.out.println("Usuario alterado com sucesso");
            }
            else {
                throw new RuntimeException("Erro ao inserir usuario ");
            }
        }
        catch (Exception ex) {
            System.out.println("UsuarioDAO.CREATE = "+ ex.getMessage());
        }
    }

    /* --- READ --- */
    public List<Usuario> readAll() {
        List<Usuario> usuarios = new ArrayList<>();
        try {
            String SQL = "SELECT * FROM usuario";

            PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);

            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Usuario usuario = new Usuario();

                usuario.setId_usuario(rs.getInt("id_usuario"));
                usuario.setNome(rs.getString("nome"));
                usuario.setGenero(rs.getString("genero"));
                usuario.setTipo_usuario(rs.getInt("tipo_usuario"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setCpf(rs.getString("cpf"));
                usuario.setCidadeId(rs.getString("cidade"));
                usuario.setTelefone(rs.getString("telefone"));
                usuario.setInstagram_usuario(rs.getString("instagram_usuario"));
                usuario.setData_cadastro(rs.getDate("data_cadastro").toLocalDate());

                usuarios.add(usuario);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("UsuarioDAO.readAll() = " + ex.getMessage());
        }
        return usuarios;
    }

    public Usuario readOne(String id){
        try {
            String SQL = "select * from usuario where id_usuario = ?";

            PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);

            stm.setString(1, id);
            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    Usuario usuario = new Usuario();
                    usuario.setId_usuario(rs.getInt("id_usuario"));
                    usuario.setNome(rs.getString("nome"));
                    usuario.setGenero(rs.getString("genero"));
                    usuario.setTipo_usuario(rs.getInt("tipo_usuario"));
                    usuario.setCpf(rs.getString("cpf"));
                    usuario.setTelefone(rs.getString("telefone"));
                    usuario.setInstagram_usuario(rs.getString("instagram_usuario"));
                    usuario.setEmail(rs.getString("email"));
                    usuario.setSenha(rs.getString("senha"));
                    usuario.setData_cadastro(rs.getDate("data_cadastro").toLocalDate());
                    return usuario;
                } else {
                    return null;
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("UsuarioDAO.READ = " + ex.getMessage());
        }
        return null;
    }

    public Usuario read(Usuario object) {
        // TODO Auto-generated method stub
        try {
            String SQL = "select * from usuario   where email = ? and senha = ?";

            PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);

            stm.setString(1, object.getEmail());
            stm.setString(2, object.getSenha());

            ResultSet rs = stm.executeQuery();

            if (rs.next()) {
                Usuario usuario = new Usuario();

                usuario.setId_usuario(rs.getInt("cidade"));
                usuario.setNome(rs.getString("nome"));
                usuario.setGenero(rs.getString("genero"));
                usuario.setTipo_usuario(rs.getInt("tipo_usuario"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setData_cadastro(rs.getDate("data_cadastro").toLocalDate());

                return usuario;
            } else {
                return null;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("UsuarioDAO.READ = " + ex.getMessage());
        }
        return null;
    }

    /* --- UPDATE --- */
    public void update(Usuario object) {
        try {
            // declaro a STRING SQL correspondente ao comando
            // substituindo os valores pelo caractere “?”
            String SQL = "update usuario set nome= ?, tipo_usuario= ?, email= ?, senha= ?, cpf= ?, telefone= ?, instagram_usuario= ?  where id_usuario = ?";
            // gero o Statement a partir da conexao
            PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);



            // preencho os parâmetros com os dados do objeto
            stm.setString(1, object.getNome());
            stm.setInt(2, object.getTipo_usuario());
            stm.setString(3, object.getEmail());
            stm.setString(4, object.getSenha());
            stm.setString(5, object.getCpf());
            stm.setString(6, object.getTelefone());
            stm.setString(7, object.getInstagram_usuario());
            stm.setInt(8,object.getId_usuario());

            // executo a instrução para atualizar a tabela
            int res = stm.executeUpdate();
            if (res != 0) {
                System.out.println("Usuario alterado com sucesso");
            } else {
                throw new RuntimeException("Erro ao atualizar usuario ");
            }
        } catch (Exception ex) {
            System.out.println("UsuarioDAO.UPDATE =" + ex.getMessage());
        }

    }

    /* --- metodo DELETE --- */
    public void delete(Usuario object) {
        try {
            // definimos nossa instrucão SQL
            String SQL = "delete from usuario where id_usuario = ?";
            PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);

            stm.setInt(1, object.getId_usuario());

            int res = stm.executeUpdate();
            if (res != 0) {
                System.out.println("Usuario excluido com sucesso");
            } else {
                throw new RuntimeException("ERRO ao apagar usuario");
            }
        } catch (Exception ex) {
            System.out.println("UsuarioDAO.DELETE = " + ex.getMessage());
        }
    }
}