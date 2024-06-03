package com.model;

import java.time.LocalDate;

public class Locais {
    private int cod_local;
    private int tipo_local;
    private String subtipo_local;
    private Cidade cidade;
    private String nome_local;
    private String email_local;
    private String instagram_local;
    private String telefone_local;
    private String endereco_local;
    private String site_local;
    private LocalDate data_cadastro_local;

    public int getCod_local() {
        return cod_local;
    }
    public void setCod_local(int cod_local) {
        this.cod_local = cod_local;
    }

    public int getTipo_local() {
        return tipo_local;
    }
    public void setTipo_local(int tipo_local) {this.tipo_local = tipo_local; }

    public String getSubtipo_local() {return subtipo_local; }
    public void setSubtipo_local(String subtipo_local) {
        this.subtipo_local = subtipo_local;
    }

    public Cidade getCidade() {
        return cidade;
    }
    public void setCidade(Cidade cidade) {
        this.cidade = cidade;
    }
    public String getNome_local() {
        return nome_local;
    }
    public void setNome_local(String nome_local) {
        this.nome_local = nome_local;
    }
    public String getEmail_local() {
        return email_local;
    }
    public void setEmail_local(String email_local) {
        this.email_local = email_local;
    }
    public String getInstagram_local() {
        return instagram_local;
    }
    public void setInstagram_local(String instagram_local) {
        this.instagram_local = instagram_local;
    }
    public String getTelefone_local() {
        return telefone_local;
    }
    public void setTelefone_local(String telefone_local) {
        this.telefone_local = telefone_local;
    }
    public String getEndereco_local() {
        return endereco_local;
    }
    public void setEndereco_local(String endereco_local) {
        this.endereco_local = endereco_local;
    }
    public String getSite_local() {
        return site_local;
    }
    public void setSite_local(String site_local) {
        this.site_local = site_local;
    }
    public LocalDate getData_cadastro_local() {
        return data_cadastro_local;
    }
    public void setData_cadastro_local(LocalDate data_cadastro_local) {
        this.data_cadastro_local = data_cadastro_local;
    }
    public Locais(int cod_local, int tipo_local, String subtipo_local, Cidade cidade, String nome_local,
                  String email_local, String instagram_local, String telefone_local, String endereco_local, String site_local,
                  LocalDate data_cadastro_local) {
        super();
        this.cod_local = cod_local;
        this.tipo_local = tipo_local;
        this.subtipo_local = subtipo_local;
        this.cidade = cidade;
        this.nome_local = nome_local;
        this.email_local = email_local;
        this.instagram_local = instagram_local;
        this.telefone_local = telefone_local;
        this.endereco_local = endereco_local;
        this.site_local = site_local;
        this.data_cadastro_local = data_cadastro_local;
    }
    public Locais() {
        super();
    }
}
