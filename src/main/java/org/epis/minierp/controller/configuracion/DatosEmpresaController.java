package org.epis.minierp.controller.configuracion;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Paths;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.epis.minierp.business.configuracion.EnP1mEmpresaBusiness;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.model.EnP1mEmpresa;

@MultipartConfig(
    maxFileSize=500*1024,       // 500 KB 
    maxRequestSize=1024*1024)   // 1MB
public class DatosEmpresaController extends HttpServlet {
    EnP1mEmpresaDao empDao;
    EnP1mEmpresaBusiness empBusiness;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        empDao = new EnP1mEmpresaDao();
        EnP1mEmpresa e = empDao.getById(1);
        request.setAttribute("empresa", e);
        request.getRequestDispatcher("/WEB-INF/configuracion/datosEmpresa.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Part filePart = request.getPart("empImg");
        String empImgUrl = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        InputStream fileContent = filePart.getInputStream();
        OutputStream out = null;
        
        try {
            out = new FileOutputStream(new File(request.getRealPath("/img"), empImgUrl));
            int read = 0;
            final byte[] bytes = new byte[1024];
            while ((read = fileContent.read(bytes)) != -1) {
                out.write(bytes, 0, read);
            }
        } catch (FileNotFoundException fne) {
            
        } finally {
            if (out != null) {
                out.close();
            }
            if (fileContent != null) {
                fileContent.close();
            }
        }
        
        //Guardando los Datos de la Empresa
        String empRazSoc, empNomCom, empDomFis, empDes, empDir, empTel,
                empEmail, empRuc;

        int empCod, empLot, empNumDetGuiRemTra, empNumDetFacVen, empNumDetBolVen;
        double empIgv, empTipCamCom, empTipCamVen;

        empCod = 1; //primera empresa
        empRazSoc = request.getParameter("empRazSoc");
        empNomCom = request.getParameter("empNomCom");
        empDomFis = request.getParameter("empDomFis");
        empDes = request.getParameter("empDes");
        empDir = request.getParameter("empDir");
        empTel = request.getParameter("empTel");
        empEmail = request.getParameter("empEmail");
        empIgv = Double.parseDouble(request.getParameter("empIgv"));
        empTipCamCom = Double.parseDouble(request.getParameter("empTipCamCom"));
        empTipCamVen = Double.parseDouble(request.getParameter("empTipCamVen"));
        empRuc = request.getParameter("empRuc");
        empLot = (int)Double.parseDouble(request.getParameter("empLot"));
        empNumDetGuiRemTra = Integer.parseInt(request.getParameter("empNumDetGuiRemTra"));
        empNumDetFacVen = Integer.parseInt(request.getParameter("empNumDetFacVen"));
        empNumDetBolVen = Integer.parseInt(request.getParameter("empNumDetBolVen"));

        empBusiness = new EnP1mEmpresaBusiness();
        empBusiness.saveOrUpdate(empCod, empRazSoc, empNomCom, empDomFis,
            empDes, empDir, empTel, empEmail, empIgv, empTipCamCom,
            empTipCamVen, empRuc, empLot, empImgUrl, empNumDetGuiRemTra,
            empNumDetFacVen, empNumDetBolVen);

        response.sendRedirect(request.getContextPath() + "/secured/configuracion/datosEmpresa");
    }
}
