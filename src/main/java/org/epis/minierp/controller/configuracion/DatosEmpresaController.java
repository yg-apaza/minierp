package org.epis.minierp.controller.configuracion;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.epis.minierp.business.configuracion.EnP1mEmpresaBusiness;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.model.EnP1mEmpresa;

@MultipartConfig
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
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        String empImgUrl = null;
        List items;
        Map<String, String> itmMap = new HashMap<>();
        
        try {
            items = upload.parseRequest(request); //lista del contenido del request
            for (Object item : items) {
                FileItem uploaded = (FileItem) item;

                if (!uploaded.isFormField()) {
                    String path = request.getSession().getServletContext().getRealPath("/") + "img";

                    File fichero;
                    if (uploaded.getName().contains(".jpg")) {
                        fichero = new File(path, "logo.jpg");
                        empImgUrl = "logo.jpg";
                        uploaded.write(fichero);
                    }
                    if (uploaded.getName().contains(".JPG")) {
                        fichero = new File(path, "logo.jpg");
                        empImgUrl = "logo.jpg";
                        uploaded.write(fichero);
                    }
                    if (uploaded.getName().contains(".jpeg")) {
                        fichero = new File(path, "logo.jpeg");
                        empImgUrl = "logo.jpg";
                        uploaded.write(fichero);
                    }
                    if (uploaded.getName().contains(".JPEG")) {
                        fichero = new File(path, "logo.jpeg");
                        empImgUrl = "logo.jpg";
                        uploaded.write(fichero);
                    } 
                    if (uploaded.getName().contains(".png")){
                        fichero = new File(path, "logo.png");
                        empImgUrl = "logo.png";
                        uploaded.write(fichero);
                    }
                    if (uploaded.getName().contains(".PNG")){
                        fichero = new File(path, "logo.png");
                        empImgUrl = "logo.png";
                        uploaded.write(fichero);
                    }
                    if (!uploaded.getName().contains(".jpg") && 
                            !uploaded.getName().contains(".jpeg") && 
                            !uploaded.getName().contains(".png") &&
                            !uploaded.getName().contains(".JPG") &&
                            !uploaded.getName().contains(".JPEG") &&
                            !uploaded.getName().contains(".PNG")
                            ){
                        fichero = null;
                    }

                } else {
                    itmMap.put(uploaded.getFieldName(), uploaded.getString());
                }
            }
        } catch (FileUploadException ex) {
        } catch (Exception ex) {
        }

        //Guardando los Datos de la Empresa
        String empRazSoc, empNomCom, empDomFis, empDes, empDir, empTel,
                empEmail, empRuc;

        int empCod, empLot, empNumDetGuiRemTra, empNumDetFacVen, empNumDetBolVen;
        double empIgv, empTipCamCom, empTipCamVen;

        empCod = 01; //primera empresa
        empRazSoc = itmMap.get("empRazSoc");
        empNomCom = itmMap.get("empNomCom");
        empDomFis = itmMap.get("empDomFis");
        empDes = itmMap.get("empDes");
        empDir = itmMap.get("empDir");
        empTel = itmMap.get("empTel");
        empEmail = itmMap.get("empEmail");
        empIgv = Double.parseDouble(itmMap.get("empIgv"));
        empTipCamCom = Double.parseDouble(itmMap.get("empTipCamCom"));
        empTipCamVen = Double.parseDouble(itmMap.get("empTipCamVen"));
        empRuc = itmMap.get("empRuc");
        empLot = (int)Double.parseDouble(itmMap.get("empLot"));
        empNumDetGuiRemTra = Integer.parseInt(itmMap.get("empNumDetGuiRemTra"));
        empNumDetFacVen = Integer.parseInt(itmMap.get("empNumDetFacVen"));
        empNumDetBolVen = Integer.parseInt(itmMap.get("empNumDetBolVen"));

        empBusiness = new EnP1mEmpresaBusiness();
        if(empImgUrl != null){
            empBusiness.saveOrUpdate(empCod, empRazSoc, empNomCom, empDomFis,
                empDes, empDir, empTel, empEmail, empIgv, empTipCamCom,
                empTipCamVen, empRuc, empLot, empImgUrl, empNumDetGuiRemTra,
                empNumDetFacVen, empNumDetBolVen);
        }else{
            empBusiness.saveOrUpdate(empCod, empRazSoc, empNomCom, empDomFis,
                empDes, empDir, empTel, empEmail, empIgv, empTipCamCom,
                empTipCamVen, empRuc, empLot, empNumDetGuiRemTra,
                empNumDetFacVen, empNumDetBolVen);
        }

        response.sendRedirect(request.getContextPath() + "/secured/configuracion/datosEmpresa");
    }
}
