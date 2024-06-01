package com.gullivertraveller.gullivertraveller.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataSource {
    private Connection connection;


    public DataSource() {
        String serverName = "fiap-practice.database.windows.net";
        String mydatabase = "gulliver";        
        String port = "1433";
        String url = "jdbc:mysql://" + serverName + ":" + port + "/" + mydatabase;
        String username = "RM552883@fiap.com.br";
        String password = "DtNasc#230680";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);

            if (connection != null) {
                System.out.println("Conectado com sucesso");
            } else {
                System.out.println("Falhou na conexão");
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public Connection getConnection() {
        return connection;
    }


}
