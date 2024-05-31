package com.gullivertraveller.gullivertraveller.controller;

import com.gullivertraveller.gullivertraveller.dao.DataSource;
import com.gullivertraveller.gullivertraveller.dao.UsuarioDAO;
import com.gullivertraveller.gullivertraveller.model.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/removeUser")
public class RemoveUser extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String pagina;
        try  {
            DataSource ds = new DataSource();
            UsuarioDAO usuarioDAO = new UsuarioDAO(ds);

            String idUser = req.getParameter("idUsuario");

            Usuario usuario = new Usuario();
            usuario.setId_usuario(Integer.parseInt(idUser));

            usuarioDAO.delete(usuario);

            pagina = "/gulliverTraveller_war_exploded/readUsers";
        } catch (Exception e) {
            req.setAttribute("ErroMSG", e.getMessage());
            pagina = "/error.jsp";
        }

//        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
//        dispatcher.forward(req, res);
    }
}
