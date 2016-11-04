/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.configuracion;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.logistica.EnP2mTransportistaDao;
import org.epis.minierp.model.EnP2mTransportista;

/**
 *
 * @author Bryan
 */
public class TransportistaController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP2mTransportistaDao trDAO = new EnP2mTransportistaDao();
        List<EnP2mTransportista> trs = trDAO.getAllActive();
        request.setAttribute("trs",trs);
        
        request.getRequestDispatcher("/WEB-INF/configuracion/datosTransportista.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        
        EnP2mTransportistaDao trDAO = new EnP2mTransportistaDao();
        EnP2mTransportista tr = new EnP2mTransportista();
        
        switch(action) {
            case "create":
                
                String traCod = request.getParameter("traCod");
                String traNom = request.getParameter("traNom");
                String traApePat = request.getParameter("traApePat");
                String traApeMat = request.getParameter("traApeMat");
                String traRazSoc = request.getParameter("traRazSoc");
                String traNomCom = request.getParameter("traNomCom");
                String traDomFis = request.getParameter("traDomFis");
                String traTel = request.getParameter("traTel");
                String traEmail = request.getParameter("traEmail");
                String traDir = request.getParameter("traDir");
                
                
                tr.setTraCod(traCod);
                tr.setTraNom(traNom);
                tr.setTraApePat(traApePat);
                tr.setTraApeMat(traApeMat);
                tr.setTraRazSoc(traRazSoc);
                tr.setTraNomCom(traNomCom);
                tr.setTraDomFis(traDomFis);
                tr.setTraTel(traTel);
                tr.setTraEmail(traEmail);
                tr.setTraDir(traDir);
                tr.setEstRegCod('A');
                
                trDAO.save(tr);
                break;
            case "update":
                String utraCod = request.getParameter("traCod");
                String utraNom = request.getParameter("traNom");
                String utraApePat = request.getParameter("traApePat");
                String utraApeMat = request.getParameter("traApeMat");
                String utraRazSoc = request.getParameter("traRazSoc");
                String utraNomCom = request.getParameter("traNomCom");
                String utraDomFis = request.getParameter("traDomFis");
                String utraTel = request.getParameter("traTel");
                String utraEmail = request.getParameter("traEmail");
                String utraDir = request.getParameter("traDir");
                
                
                tr.setTraCod(utraCod);
                tr.setTraNom(utraNom);
                tr.setTraApePat(utraApePat);
                tr.setTraApeMat(utraApeMat);
                tr.setTraRazSoc(utraRazSoc);
                tr.setTraNomCom(utraNomCom);
                tr.setTraDomFis(utraDomFis);
                tr.setTraTel(utraTel);
                tr.setTraEmail(utraEmail);
                tr.setTraDir(utraDir);
                tr.setEstRegCod('A');
                
                trDAO.update(tr);
                break;
            case "delete":
                
                String dtraCod = request.getParameter("traCod");
                String dtraNom = request.getParameter("traNom");
                String dtraApePat = request.getParameter("traApePat");
                String dtraApeMat = request.getParameter("traApeMat");
                String dtraRazSoc = request.getParameter("traRazSoc");
                String dtraNomCom = request.getParameter("traNomCom");
                String dtraDomFis = request.getParameter("traDomFis");
                String dtraTel = request.getParameter("traTel");
                String dtraEmail = request.getParameter("traEmail");
                String dtraDir = request.getParameter("traDir");
                
                
                tr.setTraCod(dtraCod);
                tr.setTraNom(dtraNom);
                tr.setTraApePat(dtraApePat);
                tr.setTraApeMat(dtraApeMat);
                tr.setTraRazSoc(dtraRazSoc);
                tr.setTraNomCom(dtraNomCom);
                tr.setTraDomFis(dtraDomFis);
                tr.setTraTel(dtraTel);
                tr.setTraEmail(dtraEmail);
                tr.setTraDir(dtraDir);
                tr.setEstRegCod('*');
                
                trDAO.update(tr);
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/datosTransportista");
    }

}
