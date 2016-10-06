package org.epis.minierp.controller.perifericos;

import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.oned.Code128Writer;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GenCodBarrasController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/perifericos/genCodBarras.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("image/png");
        BufferedImage image = generateCodeBar(request.getParameter("proCod"));
        OutputStream out = response.getOutputStream();
	ImageIO.write(image, "png", out);
	out.close();
    }
    
    /**
     * Genera el código de barras
     * @param productCode código del producto
     * @return retorna un <code>BufferedImage</code> con el código de barras
     */
    public BufferedImage generateCodeBar(String productCode){
        BufferedImage image = null;
        try {
            Code128Writer writer = new Code128Writer();
            BitMatrix matrix = writer.encode(productCode, com.google.zxing.BarcodeFormat.CODE_128, 300, 100);
            image = new BufferedImage(matrix.getWidth(), matrix.getHeight(), BufferedImage.TYPE_INT_RGB);
            image.createGraphics();
            Graphics2D graphics = (Graphics2D) image.getGraphics();
            graphics.setColor(Color.WHITE);
            graphics.fillRect(0, 0, matrix.getWidth(), matrix.getHeight());
            graphics.setColor(Color.BLACK);
            for (int i = 0; i < matrix.getWidth(); i++)
                for (int j = 0; j < matrix.getHeight(); j++)
                    if (matrix.get(i, j))
                        graphics.fillRect(i, j, 1, 1); 
        } catch (WriterException ex) {
            Logger.getLogger(GenCodBarrasController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return image;
    }   
}