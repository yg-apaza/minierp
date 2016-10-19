package org.epis.minierp.controller.general;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.dao.ventas.IngresosDao;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.Ingresos;

public class PanelController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = request.getSession(false);
        EnP1mUsuario u = (EnP1mUsuario) session.getAttribute("usuario");      
        IngresosDao daoIng = new IngresosDao();

        List<Ingresos> ingresos = daoIng.getAll(""+u.getTaGzzTipoUsuario().getTipUsuCod());
        
        if(ingresos.size()>0){       
            Ingresos i = ingresos.get(0);
            request.setAttribute("iHOY", i.getHOY());
            request.setAttribute("iAYER", i.getAYER());
            request.setAttribute("iANTEAYER", i.getANTEAYER());
        }
        else{
            request.setAttribute("iHOY", 0);
            request.setAttribute("iAYER", 0);
            request.setAttribute("iANTEAYER", 0);
        }      
        
        request.getRequestDispatcher("/WEB-INF/general/panel.jsp").forward(request, response);
    }
    
    
}