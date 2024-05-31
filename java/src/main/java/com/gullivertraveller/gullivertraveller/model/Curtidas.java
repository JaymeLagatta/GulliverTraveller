package com.gullivertraveller.gullivertraveller.model;

import java.time.LocalDate;

public class Curtidas {
    private int id_curtida;
    private Usuario id_usuario;
    private Locais id_local;
    private LocalDate data_curtida;
    private String comentario;
    private byte curtida;
    public int getId_curtida() {
        return id_curtida;
    }
    public void setId_curtida(int id_curtida) {
        this.id_curtida = id_curtida;
    }
    public Usuario getId_usuario() {
        return id_usuario;
    }
    public void setId_usuario(Usuario id_usuario) {
        this.id_usuario = id_usuario;
    }
    public Locais getId_local() {
        return id_local;
    }
    public void setId_local(Locais id_local) {
        this.id_local = id_local;
    }
    public LocalDate getData_curtida() {
        return data_curtida;
    }
    public void setData_curtida(LocalDate data_curtida) {
        this.data_curtida = data_curtida;
    }
    public String getComentario() {
        return comentario;
    }
    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
    public byte getCurtida() {
        return curtida;
    }
    public void setCurtida(byte curtida) {
        this.curtida = curtida;
    }
    public Curtidas(int id_curtida, Usuario id_usuario, Locais id_local, LocalDate data_curtida, String comentario,
                    byte curtida) {
        super();
        this.id_curtida = id_curtida;
        this.id_usuario = id_usuario;
        this.id_local = id_local;
        this.data_curtida = data_curtida;
        this.comentario = comentario;
        this.curtida = curtida;
    }
    public Curtidas() {
        super();
    }
}
