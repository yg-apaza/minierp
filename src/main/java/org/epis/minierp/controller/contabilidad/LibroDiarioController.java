/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Roycer
 */
public class LibroDiarioController extends HttpServlet {
        private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {   
        request.getRequestDispatcher("/WEB-INF/contabilidad/libroDiario/libroDiario_Principal.jsp").forward(request, response);
    }
}
