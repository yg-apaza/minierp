package org.epis.minierp.controller.general;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EstadoCivilDao;
import org.epis.minierp.dao.general.TipoUsuarioDao;
import org.epis.minierp.model.EstadoCivil;
import org.epis.minierp.model.TipoUsuario;

public class AddUsuarioController extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TipoUsuario> tipos = TipoUsuarioDao.getInstance().getAllActive();
        List<EstadoCivil> estados = EstadoCivilDao.getInstance().getAllActive();
        request.setAttribute("tipos", tipos);
        request.setAttribute("estados", estados);
        request.getRequestDispatcher("/WEB-INF/general/addUsuario.jsp").forward(request, response);
    }
}