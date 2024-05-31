package com.gullivertraveller.gullivertraveller.model;

import java.time.LocalDate;

public class Acessos {
    private int id_acesso;
    private Usuario id_usuario;
    private String ip_acesso;
    private String tipo_dispositivo;
    private LocalDate data_acesso;
    private String url_acessada;
    public int getId_acesso() {
        return id_acesso;
    }
    public void setId_acesso(int id_acesso) {
        this.id_acesso = id_acesso;
    }
    public Usuario getId_usuario() {
        return id_usuario;
    }
    public void setId_usuario(Usuario id_usuario) {
        this.id_usuario = id_usuario;
    }
    public String getIp_acesso() {
        return ip_acesso;
    }
    public void setIp_acesso(String ip_acesso) {
        this.ip_acesso = ip_acesso;
    }
    public String getTipo_dispositivo() {
        return tipo_dispositivo;
    }
    public void setTipo_dispositivo(String tipo_dispositivo) {
        this.tipo_dispositivo = tipo_dispositivo;
    }
    public LocalDate getData_acesso() {
        return data_acesso;
    }
    public void setData_acesso(LocalDate data_acesso) {
        this.data_acesso = data_acesso;
    }
    public String getUrl_acessada() {
        return url_acessada;
    }
    public void setUrl_acessada(String url_acessada) {
        this.url_acessada = url_acessada;
    }
    public Acessos(int id_acesso, Usuario id_usuario, String ip_acesso, String tipo_dispositivo, LocalDate data_acesso,
                   String url_acessada) {
        super();
        this.id_acesso = id_acesso;
        this.id_usuario = id_usuario;
        this.ip_acesso = ip_acesso;
        this.tipo_dispositivo = tipo_dispositivo;
        this.data_acesso = data_acesso;
        this.url_acessada = url_acessada;
    }
    public Acessos() {
        super();
    }
}
