package com.gullivertraveller.gullivertraveller.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Usuario {
    private int id_usuario;
    private Cidade cidade;
    private String cidadeId;
    private int tipo_usuario;
    private String cpf;
    private String nome;
    private String genero;
    private LocalDate data_cadastro;
    private String email;
    private String telefone;
    private String instagram_usuario;
    private String senha;
    private List<Acessos> acessos;
    private List<Curtidas> curtidas;

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

//    public Cidade getCidade() {
//        return cidade;
//    }
//
//    public void setId_cidade(Cidade cidade) {
//        this.cidade = cidade;
//    }

    public String getCidadeId() {
        return cidadeId;
    }

    public void setCidadeId(String cidadeId) {
        this.cidadeId = cidadeId;
    }

    public int getTipo_usuario() {
        return tipo_usuario;
    }

    public void setTipo_usuario(int tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getGenero(){return genero;}
    public void setGenero(String genero){this.genero = genero;}

    public LocalDate getData_cadastro() {
        return data_cadastro;
    }

    public void setData_cadastro(LocalDate data_cadastro) {
        this.data_cadastro = data_cadastro;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getInstagram_usuario() {
        return instagram_usuario;
    }

    public void setInstagram_usuario(String instagram_usuario) {
        this.instagram_usuario = instagram_usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public List<Acessos> getAcessos() {
        return acessos;
    }

    public void setAcessos(List<Acessos> acessos) {
        this.acessos = acessos;
    }

    public List<Curtidas> getCurtidas() {
        return curtidas;
    }

    public void setCurtidas(List<Curtidas> curtidas) {
        this.curtidas = curtidas;
    }

    public Usuario(int id_usuario, String cidadeId, int tipo_usuario, String cpf, String nome, LocalDate data_cadastro,
                   String genero, String email, String telefone, String instagram_usuario, String senha, ArrayList<Acessos> acessos, ArrayList<Curtidas> curtidas) {
        super();
        this.id_usuario = id_usuario;
        this.cidadeId = cidadeId;
        this.tipo_usuario = tipo_usuario;
        this.genero= genero;
        this.cpf = cpf;
        this.nome = nome;
        this.data_cadastro = data_cadastro;
        this.email = email;
        this.telefone = telefone;
        this.instagram_usuario = instagram_usuario;
        this.senha = senha;
        this.acessos = acessos;
        this.curtidas = curtidas;
    }

    public Usuario() {
        super();
    }


}