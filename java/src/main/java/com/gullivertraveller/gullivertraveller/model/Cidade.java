package com.gullivertraveller.gullivertraveller.model;
public class Cidade{
    private int id_cidade;
    private String cidade;
    private String estado;
    private String siglaEstado;
    private String pais;
    private String siglaPais;

    public int getId_cidade() {
        return id_cidade;
    }
    public void setId_cidade(int id_cidade) {
        this.id_cidade = id_cidade;
    }
    public String getCidade() {
        return cidade;
    }
    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
    public String getEstado() {
        return estado;
    }
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public String getSiglaEstado() {
        return siglaEstado;
    }
    public void setSiglaEstado(String siglaEstado) {
        this.siglaEstado = siglaEstado;
    }
    public String getPais() {
        return pais;
    }
    public void setPais(String pais) {
        this.pais = pais;
    }
    public String getSiglaPais() {
        return siglaPais;
    }
    public void setSiglaPais(String siglaPais) {
        this.siglaPais = siglaPais;
    }
    public Cidade(int id_cidade, String cidade, String estado, String siglaEstado, String pais, String siglaPais) {
        super();
        this.id_cidade = id_cidade;
        this.cidade = cidade;
        this.estado = estado;
        this.siglaEstado = siglaEstado;
        this.pais = pais;
        this.siglaPais = siglaPais;
    }
    public Cidade() {
        super();
    }

}
