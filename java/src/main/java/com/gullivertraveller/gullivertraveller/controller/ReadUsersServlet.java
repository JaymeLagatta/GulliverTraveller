package com.gullivertraveller.gullivertraveller.controller;

import com.gullivertraveller.gullivertraveller.dao.DataSource;
import com.gullivertraveller.gullivertraveller.dao.UsuarioDAO;
import com.gullivertraveller.gullivertraveller.model.Usuario;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/readUsers")
public class ReadUsersServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String pagina;
        try {
            DataSource ds = new DataSource();
            UsuarioDAO usuarioDAO = new UsuarioDAO(ds);

            // Supondo que a lista de usuários é obtida do método getUsuarios() em UsuarioDAO
            List<Usuario> usuarios = usuarioDAO.readAll();

            if (usuarios != null && !usuarios.isEmpty()) {
                req.setAttribute("usuarios", usuarios); // Adiciona a lista de usuários ao request
                pagina = "/readUsers.jsp";
            } else {
                req.setAttribute("ErroMSG", "Nenhum usuário encontrado");
                pagina = "/error.jsp";
            }
        } catch (Exception e) {
            req.setAttribute("ErroMSG", e.getMessage());
            pagina = "/error.jsp";
        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
        dispatcher.forward(req, res);
    }
}


