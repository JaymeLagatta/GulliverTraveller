package com.gullivertraveller.gullivertraveller.dao;

import com.gullivertraveller.gullivertraveller.model.Cidade;
import com.gullivertraveller.gullivertraveller.model.Locais;
//import com.gullivertraveller.gullivertraveller.model.TipoLocal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class LocaisDAO implements DAO<Locais> {

    private DataSource dataSource;

    public LocaisDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public DataSource getDataSource() {
        return this.dataSource;
    }

    /* --- CREATE --- */
    public void create(Locais object) {
        try {
            String SQL = "INSERT INTO locais (tipo_local, subtipo_local, cidades_id_cidade, nome_local, email_local, instagram_local, telefone_local, endereco_local, site_local, data_cadastro_local) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);

            stm.setInt(1, object.getTipo_local());
            stm.setString(2, object.getSubtipo_local());
            stm.setString(3, object.getCidade().getCidade());
            stm.setString(4, object.getNome_local());
            stm.setString(5, object.getEmail_local());
            stm.setString(6, object.getInstagram_local());
            stm.setString(7, object.getTelefone_local());
            stm.setString(8, object.getEndereco_local());
            stm.setString(9, object.getSite_local());
            stm.setString(10, object.getData_cadastro_local().format(DateTimeFormatter.ISO_LOCAL_DATE));

            int res = stm.executeUpdate();
            if (res != 0) {
                System.out.println("Local inserido com sucesso");
            } else {
                throw new RuntimeException("Erro ao inserir local");
            }
        } catch (Exception ex) {
            System.out.println("LocaisDAO.CREATE = " + ex.getMessage());
        }
    }

    /* --- READ ALL --- */
    public List<Locais> readAll() {
        List<Locais> locais = new ArrayList<>();
        try {
            String SQL = "SELECT * FROM locais";
            PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Locais local = new Locais();
            //    local.setId_local(rs.getInt("id_local"));
                local.setTipo_local(rs.getInt("tipo_local"));
                local.setSubtipo_local(rs.getString("subtipo_local"));
            //    local.setCidade(rs.getInt("id_cidade"));
                local.setNome_local(rs.getString("nome_local"));
                local.setEmail_local(rs.getString("email_local"));
                local.setInstagram_local(rs.getString("instagram_local"));
                local.setTelefone_local(rs.getString("telefone_local"));
                local.setEndereco_local(rs.getString("endereco_local"));
                local.setSite_local(rs.getString("site_local"));
                local.setData_cadastro_local(rs.getDate("data_cadastro_local").toLocalDate());

                locais.add(local);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("LocaisDAO.readAll() = " + ex.getMessage());
        }
        return locais;
    }

    /* --- READ ONE --- */
    public Locais readOne(int id) {
        try {
            String SQL = "SELECT * FROM locais WHERE tipo_local = ?";
            PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();

            if (rs.next()) {
                Locais local = new Locais();
            //    local.setId_local(rs.getInt("id_local"));
                local.setTipo_local(rs.getInt("tipo_local"));
                local.setSubtipo_local(rs.getString("subtipo_local"));
            //    local.setCidade(new Cidade(rs.getInt("id_cidade")));
                local.setNome_local(rs.getString("nome_local"));
                local.setEmail_local(rs.getString("email_local"));
                local.setInstagram_local(rs.getString("instagram_local"));
                local.setTelefone_local(rs.getString("telefone_local"));
                local.setEndereco_local(rs.getString("endereco_local"));
                local.setSite_local(rs.getString("site_local"));
                local.setData_cadastro_local(rs.getDate("data_cadastro_local").toLocalDate());

                return local;
            } else {
                return null;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("LocaisDAO.readOne() = " + ex.getMessage());
        }
        return null;
    }

    /* --- READ --- */
    public Locais read(Locais object) {
        try {
            String SQL = "SELECT * FROM locais WHERE nome_local = ? AND cidades_id_cidade = ?";
            PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);

            stm.setString(1, object.getNome_local());
            stm.setInt(2, object.getCidade().getId_cidade());

            ResultSet rs = stm.executeQuery();

            if (rs.next()) {
                Locais local = new Locais();
                local.setCod_local(rs.getInt("cod_local"));
                local.setTipo_local(rs.getInt("Tipo_local"));
                local.setSubtipo_local(rs.getString("subtipo_local"));
        //        local.setCidade(rs.getInt("id_cidade"));
                local.setNome_local(rs.getString("nome_local"));
                local.setEmail_local(rs.getString("email_local"));
                local.setInstagram_local(rs.getString("instagram_local"));
                local.setTelefone_local(rs.getString("telefone_local"));
                local.setEndereco_local(rs.getString("endereco_local"));
                local.setSite_local(rs.getString("site_local"));
                local.setData_cadastro_local(rs.getDate("data_cadastro_local").toLocalDate());

                return local;
            } else {
                return null;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("LocaisDAO.read() = " + ex.getMessage());
        }
        return null;
    }

    /* --- UPDATE --- */
    public void update(Locais object) {
        try {
            String SQL = "UPDATE locais SET cod_local = ?, tipo_local = ?, subtipo_local = ?, cidades_id_cidade = ?, nome_local = ?, email_local = ?, instagram_local = ?, telefone_local = ?, endereco_local = ?, site_local = ? WHERE id_local = ?";
            PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);

            stm.setInt(1, object.getTipo_local());
            stm.setString(2, object.getSubtipo_local());
        //    stm.setInt(3, object.getCidade().getCidades_id_cidade().getCidades_id_cidade());
            stm.setString(4, object.getNome_local());
            stm.setString(5, object.getEmail_local());
            stm.setString(6, object.getInstagram_local());
            stm.setString(7, object.getTelefone_local());
            stm.setString(8, object.getEndereco_local());
            stm.setString(9, object.getSite_local());
            stm.setInt(10, object.getCod_local());

            int res = stm.executeUpdate();
            if (res != 0) {
                System.out.println("Local atualizado com sucesso");
            } else {
                throw new RuntimeException("Erro ao atualizar local");
            }
        } catch (Exception ex) {
            System.out.println("LocaisDAO.UPDATE = " + ex.getMessage());
        }
    }

    /* --- DELETE --- */
    public void delete(Locais object) {
        try {
            String SQL = "DELETE FROM local WHERE cod_local = ?";
            PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);
            stm.setInt(1, object.getCod_local());

            int res = stm.executeUpdate();
            if (res != 0) {
                System.out.println("Local excluído com sucesso");
            } else {
                throw new RuntimeException("Erro ao excluir local");
            }
        } catch (Exception ex) {
            System.out.println("LocaisDAO.DELETE = " + ex.getMessage());
        }
    }
}
