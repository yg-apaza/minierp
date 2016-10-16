package org.epis.minierp.controller.perifericos;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.epis.minierp.business.perifericos.CodigoBarrasBusiness;

public class LectoraBarrasController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameterMap().containsKey("codigo")){
           String codigo = request.getParameter("codigo");
           request.setAttribute("codigo", codigo);
        }
        request.getRequestDispatcher("/WEB-INF/perifericos/lectoraBarras.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
	String directory = getServletContext().getRealPath("/")+"img/barcodes";
        File file = null;
        if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                                         new DiskFileItemFactory()).parseRequest(request);
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        file = new File(directory + File.separator + name);                       
                        item.write(file);
                    }
                }
            } catch (Exception ex) {
                Logger.getLogger(LectoraBarrasController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } 
        BufferedImage image = ImageIO.read(file);
        CodigoBarrasBusiness daoCodBar = new CodigoBarrasBusiness();
        String codigo = daoCodBar.readCodeBar(image);
        response.sendRedirect(request.getContextPath() + "/secured/perifericos/lectoraBarras?codigo=" + codigo);
    }
}