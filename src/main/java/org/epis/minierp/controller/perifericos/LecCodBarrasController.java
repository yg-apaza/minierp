package org.epis.minierp.controller.perifericos;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.perifericos.CodigoBarrasDao;

public class LecCodBarrasController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameterMap().containsKey("codigo")){
           String codigo = request.getParameter("codigo");
           request.setAttribute("codigo", codigo);
        }
        request.getRequestDispatcher("/WEB-INF/perifericos/lecCodBarras.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        File file = new File(request.getParameter("fileName"));
        BufferedImage image = ImageIO.read(file);
        CodigoBarrasDao daoCodBar = new CodigoBarrasDao();
        String codigo = daoCodBar.readCodeBar(image);
        response.sendRedirect(request.getContextPath() + "/secured/perifericos/lecCodBarras?codigo=" + codigo);
    }
}