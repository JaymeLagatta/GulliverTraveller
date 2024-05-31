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

@WebServlet("/editUser")
public class EditUsersServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String pagina;
        try  {
            DataSource ds = new DataSource();
            UsuarioDAO usuarioDAO = new UsuarioDAO(ds);

            String idUser = req.getParameter("id");
            System.out.println(idUser);

            Usuario usuario = usuarioDAO.readOne(idUser);

            if (usuario != null) {
                req.setAttribute("usuario", usuario);
                pagina = "/editUser.jsp";
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

