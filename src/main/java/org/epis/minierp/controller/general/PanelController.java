package org.epis.minierp.controller.general;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.dao.logistica.EnP2mAlmacenDao;
import org.epis.minierp.dao.ventas.IngresosDao;
import org.epis.minierp.dao.ventas.PreventasDao;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP2mAlmacen;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.Ingresos;
import org.epis.minierp.model.Preventas;

public class PanelController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        EnP1mUsuario u = (EnP1mUsuario) session.getAttribute("usuario");      
        int type = u.getTaGzzTipoUsuario().getTipUsuCod();
        
        IngresosDao daoIng = new IngresosDao();
        PreventasDao daoPre = new PreventasDao();

        List<Ingresos> ingresos = daoIng.getAll(""+u.getTaGzzTipoUsuario().getTipUsuCod());
        List<Preventas> preventas = daoPre.getAll(""+u.getTaGzzTipoUsuario().getTipUsuCod());
        
        switch(type){
            case 1:
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

                if(preventas.size()>0){       
                    Preventas p = preventas.get(0);
                    request.setAttribute("pHOY", p.getHOY());
                    request.setAttribute("pAYER", p.getAYER());
                    request.setAttribute("pANTEAYER", p.getANTEAYER());
                }
                else{
                    request.setAttribute("pHOY", 0);
                    request.setAttribute("pAYER", 0);
                    request.setAttribute("pANTEAYER", 0);
                }
                break;
            case 2:
                break;
            case 3:
                List <EnP2mAlmacen> almacenes = new ArrayList<>(u.getEnP1mSucursal().getEnP2mAlmacens());
                request.setAttribute("almacenes", almacenes);
                break;
            case 4:
                break;
        }
         
        
        request.getRequestDispatcher("/WEB-INF/general/panel.jsp").forward(request, response);
    }
    
}