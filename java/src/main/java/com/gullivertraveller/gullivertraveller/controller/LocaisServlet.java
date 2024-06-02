package com.gullivertraveller.gullivertraveller.controller;

import com.gullivertraveller.gullivertraveller.dao.DataSource;
import com.gullivertraveller.gullivertraveller.dao.LocaisDAO;
import com.gullivertraveller.gullivertraveller.model.Locais;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/locais")
public class LocaisServlet extends HttpServlet {
    private LocaisDAO locaisDAO;

    public void init() {
        DataSource dataSource = new DataSource();
        locaisDAO = new LocaisDAO(dataSource);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Locais> locais = locaisDAO.readAll();
        request.setAttribute("locais", locais);
        request.getRequestDispatcher("/hoteis.jsp").forward(request, response);
    }
}
