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
import org.epis.minierp.dao.general.EstadoCivilDao;
import org.epis.minierp.dao.general.TipoUsuarioDao;
import org.epis.minierp.dao.general.UsuarioDao;
import org.epis.minierp.model.EstadoCivil;
import org.epis.minierp.model.TipoUsuario;
import org.epis.minierp.model.Usuario;

public class AddUsuarioController extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private SimpleDateFormat dt = new SimpleDateFormat("dd/MM/yyyy");
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TipoUsuarioDao daoTipUsu = new TipoUsuarioDao();
        EstadoCivilDao daoEstCiv = new EstadoCivilDao();
        List<TipoUsuario> tipos = daoTipUsu.getAllActive();
        List<EstadoCivil> estados = daoEstCiv.getAllActive();
        request.setAttribute("tipos", tipos);
        request.setAttribute("estados", estados);
        request.getRequestDispatcher("/WEB-INF/general/addUsuario.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UsuarioDao daoUsu = new UsuarioDao();
        try {
            Usuario u = new Usuario();
            u.setUsuCod(request.getParameter("usuCod"));
            u.setUsuNom(request.getParameter("usuNom"));
            u.setUsuApePat(request.getParameter("usuApePat"));
            u.setUsuApeMat(request.getParameter("usuApeMat"));
            u.setUsuLog(request.getParameter("usuLog"));
            u.setUsuPas(DigestUtils.sha256Hex(request.getParameter("usuPas")));
            u.setUsuHue(null);
            u.setTipUsuCod(Integer.parseInt(request.getParameter("tipUsuCod")));
            u.setUsuFecNac(dt.parse(request.getParameter("usuFecNac")));
            u.setEstCivCod(Integer.parseInt(request.getParameter("estCivCod")));
            u.setUsuSex(request.getParameter("usuSex").charAt(0));
            u.setEstRegCod('A');
            daoUsu.save(u);
            response.sendRedirect(request.getContextPath() + "/secured/general/usuarios");
        } catch (ParseException ex) {
            Logger.getLogger(AddUsuarioController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}