package com.gullivertraveller.gullivertraveller.model;

public class TipoLocal {

    private byte id_tipo_local;
    private byte id_subtipo_local;
    private String nome_tipo_local;
    private String nome_subtipo_local;
    public byte getId_tipo_local() {
        return id_tipo_local;
    }
    public void setId_tipo_local(byte id_tipo_local) {
        this.id_tipo_local = id_tipo_local;
    }
    public byte getId_subtipo_local() {
        return id_subtipo_local;
    }
    public void setId_subtipo_local(byte id_subtipo_local) {
        this.id_subtipo_local = id_subtipo_local;
    }
    public String getNome_tipo_local() {
        return nome_tipo_local;
    }
    public void setNome_tipo_local(String nome_tipo_local) {
        this.nome_tipo_local = nome_tipo_local;
    }
    public String getNome_subtipo_local() {
        return nome_subtipo_local;
    }
    public void setNome_subtipo_local(String nome_subtipo_local) {
        this.nome_subtipo_local = nome_subtipo_local;
    }
    public TipoLocal(byte id_tipo_local, byte id_subtipo_local, String nome_tipo_local, String nome_subtipo_local) {
        super();
        this.id_tipo_local = id_tipo_local;
        this.id_subtipo_local = id_subtipo_local;
        this.nome_tipo_local = nome_tipo_local;
        this.nome_subtipo_local = nome_subtipo_local;
    }
    public TipoLocal() {
        super();
    }



}
