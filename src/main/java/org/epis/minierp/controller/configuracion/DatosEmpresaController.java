package org.epis.minierp.controller.configuracion;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.model.EnP1mEmpresa;

public class DatosEmpresaController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mEmpresaDao empDAO = new EnP1mEmpresaDao();
        EnP1mEmpresa emp = empDAO.getById(01);
        request.setAttribute("emp",emp);
        File af;
        if(emp.getEmpImgUrl()!=null ){
            String empImg = emp.getEmpImgUrl();
            af = new File(request.getSession().getServletContext().getRealPath("/")+"/img/"+empImg);
            
            if(af.exists()){
                request.setAttribute("empImg", empImg);
            }
            else request.setAttribute("empImg", "nada");
        }
        else{
            request.setAttribute("empImg", "nada");
        }
        request.getRequestDispatcher("/WEB-INF/configuracion/datosEmpresa.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        EnP1mEmpresaDao empDAO = new EnP1mEmpresaDao();
        EnP1mEmpresa e = empDAO.getById(01);
        List items;
        try {
            int i=0;
            Map<String, String> nombreMap = new HashMap<String, String>();
            items = upload.parseRequest(request);
            for (Object item : items) {
                FileItem uploaded = (FileItem) item;

                if (!uploaded.isFormField()) {
                    String path=request.getSession().getServletContext().getRealPath("/")+"/img";
                    
                    File fichero;
                    if(uploaded.getName().contains(".jpg")){
                        fichero = new File(path, "logo.jpg");
                        e.setEmpImgUrl("logo.jpg");
                        uploaded.write(fichero);
                    }
                    else if(uploaded.getName().contains(".jpeg")){
                        fichero = new File(path, "logo.jpeg");
                        e.setEmpImgUrl("logo.jpg");
                        uploaded.write(fichero);
                    }
                    else{
                        fichero=null;
                        e.setEmpImgUrl("nada");
                    }
                }
                else{
                    System.out.println("valor: "+ uploaded.getString());
                    nombreMap.put(uploaded.getFieldName(), uploaded.getString());
                    i++;
                }
            }
            e.setEmpCod(01);
            e.setEmpNomCom(nombreMap.get("empNomCom"));
            e.setEmpRazSoc(nombreMap.get("empRazSoc"));
            e.setEmpDomFis(nombreMap.get("empDomFis"));
            e.setEmpDes(nombreMap.get("empDes"));
            e.setEmpDir(nombreMap.get("empDir"));
            e.setEmpTel(nombreMap.get("empTel"));
            e.setEmpIgv(Double.parseDouble(nombreMap.get("empIgv")));
            e.setEmpEmail(nombreMap.get("empEmail"));
            e.setEmpTipCamCom(Double.parseDouble(nombreMap.get("empTipCamCom")));
            e.setEmpTipCamVen(Double.parseDouble(nombreMap.get("empTipCamVen")));
            e.setEmpRuc(nombreMap.get("empRuc"));
            e.setEmpLot(Integer.parseInt(nombreMap.get("empLot")));
            
            empDAO.update(e);
        } catch (FileUploadException ex) {
            Logger.getLogger(DatosEmpresaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DatosEmpresaController.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect(request.getContextPath() + "/secured/configuracion/datosEmpresa");
        
    }
}
