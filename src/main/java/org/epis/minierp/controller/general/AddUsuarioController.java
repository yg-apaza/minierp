package org.epis.minierp.controller.general;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.codec.digest.DigestUtils;
import org.epis.minierp.dao.general.TaGzzEstadoCivilDao;
import org.epis.minierp.dao.general.TaGzzTipoUsuarioDao;
import org.epis.minierp.dao.ventas.EnP1mUsuarioDao;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.TaGzzEstadoCivil;
import org.epis.minierp.model.TaGzzTipoUsuario;

public class AddUsuarioController extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private SimpleDateFormat dt = new SimpleDateFormat("dd/MM/yyyy");
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TaGzzTipoUsuarioDao daoTipUsu = new TaGzzTipoUsuarioDao();
        TaGzzEstadoCivilDao daoEstCiv = new TaGzzEstadoCivilDao();
        List<TaGzzTipoUsuario> tipos = daoTipUsu.getAllActive();
        List<TaGzzEstadoCivil> estados = daoEstCiv.getAllActive();
        request.setAttribute("tipos", tipos);
        request.setAttribute("estados", estados);
        request.getRequestDispatcher("/WEB-INF/general/addUsuario.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mUsuarioDao daoUsu = new EnP1mUsuarioDao();
        try {
            EnP1mUsuario u = new EnP1mUsuario();
            u.setUsuCod(request.getParameter("usuCod"));
            u.setUsuNom(request.getParameter("usuNom"));
            u.setUsuApePat(request.getParameter("usuApePat"));
            u.setUsuApeMat(request.getParameter("usuApeMat"));
            u.setUsuLog(request.getParameter("usuLog"));
            u.setUsuPas(DigestUtils.sha256Hex(request.getParameter("usuPas")));
            TaGzzTipoUsuario tipoUsu = new TaGzzTipoUsuario();
            tipoUsu.setTipUsuCod(Integer.parseInt(request.getParameter("tipUsuCod")));
            u.setTaGzzTipoUsuario(tipoUsu);
            u.setUsuFecNac(dt.parse(request.getParameter("usuFecNac")));
            TaGzzEstadoCivil estadoCiv = new TaGzzEstadoCivil();
            estadoCiv.setEstCivCod(Integer.parseInt(request.getParameter("estCivCod")));
            u.setTaGzzEstadoCivil(estadoCiv);
            u.setUsuSex(request.getParameter("usuSex").charAt(0));
            u.setEstRegCod('A');
            daoUsu.save(u);
            response.sendRedirect(request.getContextPath() + "/secured/general/usuarios");
        } catch (ParseException ex) {
            Logger.getLogger(AddUsuarioController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}