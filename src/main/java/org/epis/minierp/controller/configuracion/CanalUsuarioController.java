package org.epis.minierp.controller.configuracion;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.general.TaGzzCanalUsuarioBusiness;
import org.epis.minierp.dao.general.TaGzzCanalUsuarioDao;

public class CanalUsuarioController extends HttpServlet{
    
    private static final long serialVersionUID = 1L;
    TaGzzCanalUsuarioDao canUsuDao;
    TaGzzCanalUsuarioBusiness canUsuBusiness;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        canUsuDao = new TaGzzCanalUsuarioDao();
        
        request.setAttribute("canales",canUsuDao.getAllActive());
        request.setAttribute("inactivos",canUsuDao.getAllInactives());
        request.getRequestDispatcher("/WEB-INF/configuracion/canalUsuario.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        canUsuBusiness = new TaGzzCanalUsuarioBusiness();
        String action = request.getParameter("accion");
        
        int canUsuCod;
        double canUsuPorAdd;
        String canUsuDet;
        
        switch(action) {
            case "create":
                canUsuCod = Integer.parseInt(request.getParameter("canUsuCod"));
                canUsuPorAdd = Double.parseDouble(request.getParameter("canUsuPorAdd"));
                canUsuPorAdd = (canUsuPorAdd/100);
                canUsuDet = request.getParameter("canUsuDet");
                canUsuBusiness.create(canUsuCod, canUsuDet, canUsuPorAdd, 'A');
                break;
                
            case "update":
                canUsuCod = Integer.parseInt(request.getParameter("canUsuCod"));
                canUsuPorAdd = Double.parseDouble(request.getParameter("canUsuPorAdd"));
                canUsuPorAdd = (canUsuPorAdd/100);
                canUsuDet = request.getParameter("canUsuDet");
                canUsuBusiness.update(canUsuCod, canUsuDet, canUsuPorAdd);
                break;
                
            case "disable":
                canUsuCod = Integer.parseInt(request.getParameter("canUsuCod"));
                canUsuBusiness.disable(canUsuCod);
                break;
                
            case "activate":
                canUsuCod = Integer.parseInt(request.getParameter("canUsuCod"));
                canUsuBusiness.activate(canUsuCod);
                break;
                
            case "delete":
                canUsuCod = Integer.parseInt(request.getParameter("canUsuCod"));
                canUsuBusiness.delete(canUsuCod);
                break;
        }
                
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/canalUsuario");
    }
}