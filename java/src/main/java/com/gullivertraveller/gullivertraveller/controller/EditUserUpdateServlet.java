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

@WebServlet("/editUserUpdate")
public class EditUserUpdateServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String pagina;
        try  {
            DataSource ds = new DataSource();
            UsuarioDAO usuarioDAO = new UsuarioDAO(ds);

            String idUser = req.getParameter("idUsuario");

            String name = req.getParameter("name");
            String genero = req.getParameter("genero");
            String tipo_usuario = req.getParameter("tipo_usuario");
            String cpf = req.getParameter("cpf");
            String telefone = req.getParameter("telefone");
            String email = req.getParameter("email");
            String senha = req.getParameter("senha");
            String instagram = req.getParameter("instagram");

            Usuario usuario = new Usuario();
            usuario.setId_usuario(Integer.parseInt(idUser));
            usuario.setNome(name);
            usuario.setGenero(genero);
            usuario.setCidadeId("5");
            usuario.setTipo_usuario(Integer.parseInt(tipo_usuario));
            usuario.setCpf(cpf);
            usuario.setTelefone(telefone);
            usuario.setEmail(email);
            usuario.setSenha(senha);
            usuario.setInstagram_usuario(instagram);

            usuarioDAO.update(usuario);

            pagina = "/gulliverTraveller_war_exploded/readUsers";
        } catch (Exception e) {
            req.setAttribute("ErroMSG", e.getMessage());
            pagina = "/error.jsp";
        }

//        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
//        dispatcher.forward(req, res);
    }
}

