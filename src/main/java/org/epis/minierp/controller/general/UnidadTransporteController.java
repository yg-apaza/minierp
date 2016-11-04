/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.general;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP2mUnidadTransporteDao;
import org.epis.minierp.dao.general.TaGzzEstadoUniTransporteDao;
import org.epis.minierp.dao.general.TaGzzTipoUniTransporteDao;
import org.epis.minierp.model.EnP2mUnidadTransporte;
import org.epis.minierp.model.TaGzzEstadoUniTransporte;
import org.epis.minierp.model.TaGzzTipoUniTransporte;

/**
 *
 * @author Bryan
 */
public class UnidadTransporteController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP2mUnidadTransporteDao trDAO = new EnP2mUnidadTransporteDao();
        List<EnP2mUnidadTransporte> unTrs = trDAO.getAllActive();
        TaGzzTipoUniTransporteDao tipUnDAO = new TaGzzTipoUniTransporteDao();
        List<TaGzzTipoUniTransporte> tipUn = tipUnDAO.getAllActive();
        TaGzzEstadoUniTransporteDao estUnDAO = new TaGzzEstadoUniTransporteDao();
        List<TaGzzEstadoUniTransporte> estUn = estUnDAO.getAllActive();
        request.setAttribute("unTrs",unTrs);
        request.setAttribute("tipUn",tipUn);
        request.setAttribute("estUn",estUn);
        
        request.getRequestDispatcher("/WEB-INF/configuracion/unidadTransporte.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        
        EnP2mUnidadTransporteDao unTrDAO = new EnP2mUnidadTransporteDao();
        EnP2mUnidadTransporte unTr = new EnP2mUnidadTransporte();
        
        TaGzzEstadoUniTransporteDao estUnDAO = new TaGzzEstadoUniTransporteDao();
        TaGzzEstadoUniTransporte estUn;
        
        TaGzzTipoUniTransporteDao tipUnDAO = new TaGzzTipoUniTransporteDao();
        TaGzzTipoUniTransporte tipUn;
        
        switch(action) {
            case "create":
                
                String unTraCod = request.getParameter("unTraCod");
                String tipUnTraCod = request.getParameter("tipUnTraCod");
                String unTraMod = request.getParameter("unTraMod");
                String unTraMar = request.getParameter("unTraMar");
                String unTraPes = request.getParameter("unTraPes");
                String unTraNumPLa = request.getParameter("unTraNumPla");
   
                estUn=estUnDAO.getById(01);
                tipUn=tipUnDAO.getById(Integer.parseInt(tipUnTraCod));
                unTr.setTaGzzEstadoUniTransporte(estUn);
                unTr.setTaGzzTipoUniTransporte(tipUn);
                
                unTr.setUniTraCod(unTraCod);
                unTr.setUniTraMar(unTraMar);
                unTr.setUniTraMod(unTraMod);
                unTr.setUniTraPes(Double.parseDouble(unTraPes));
                unTr.setUniTraNumPla(unTraNumPLa);
                
                unTr.setEstRegCod('A');
                
                unTrDAO.save(unTr);
                break;
            case "update":
                String uunTraCod = request.getParameter("unTraCod");
                String utipUnTraCod = request.getParameter("tipUnTraCod");
                String uestUnTraCod = request.getParameter("estUnTraCod");
                String uunTraMod = request.getParameter("unTraMod");
                String uunTraMar = request.getParameter("unTraMar");
                String uunTraPes = request.getParameter("unTraPes");
                String uunTraNumPLa = request.getParameter("unTraNumPla");
   
                estUn=estUnDAO.getById(Integer.parseInt(uestUnTraCod));
                tipUn=tipUnDAO.getById(Integer.parseInt(utipUnTraCod));
                unTr.setTaGzzEstadoUniTransporte(estUn);
                unTr.setTaGzzTipoUniTransporte(tipUn);
                
                unTr.setUniTraCod(uunTraCod);
                unTr.setUniTraMar(uunTraMar);
                unTr.setUniTraMod(uunTraMod);
                unTr.setUniTraPes(Double.parseDouble(uunTraPes));
                unTr.setUniTraNumPla(uunTraNumPLa);
                
                unTr.setEstRegCod('A');
                
                unTrDAO.update(unTr);
                break;
            case "delete":
                String dunTraCod = request.getParameter("unTraCod");
                String dtipUnTraCod = request.getParameter("tipUnTraCod");
                String dunTraMod = request.getParameter("unTraMod");
                String dunTraMar = request.getParameter("unTraMar");
                String dunTraPes = request.getParameter("unTraPes");
                String dunTraNumPLa = request.getParameter("unTraNumPla");
   
                estUn=estUnDAO.getById(01);
                tipUn=tipUnDAO.getById(Integer.parseInt(dtipUnTraCod));
                unTr.setTaGzzEstadoUniTransporte(estUn);
                unTr.setTaGzzTipoUniTransporte(tipUn);
                
                unTr.setUniTraCod(dunTraCod);
                unTr.setUniTraMar(dunTraMar);
                unTr.setUniTraMod(dunTraMod);
                unTr.setUniTraPes(Double.parseDouble(dunTraPes));
                unTr.setUniTraNumPla(dunTraNumPLa);
                
                unTr.setEstRegCod('I');
                
                unTrDAO.update(unTr);
                break;
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/unidadTransporte");
    }
}
