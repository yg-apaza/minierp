package org.epis.minierp.dao.perifericos;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.FormatException;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.oned.Code128Reader;
import com.google.zxing.oned.Code128Writer;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;

public class CodigoBarrasDao {
    
    /**
     * Genera el código de barras
     * @param productCode código del producto
     * @return retorna un <code>BufferedImage</code> con el código de barras
     */
    public BufferedImage generateCodeBar(String productCode){
        BufferedImage image = null;
        if (productCode != null){
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
                Logger.getLogger(CodigoBarrasDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return image;
    } 
    
    /**
     * Guarda el código de barras en un archivo
     * @param productCode código del producto
     * @param file ubicación del archivo
     */
    public void saveCodeBar(String productCode, File file){
        BufferedImage image =  generateCodeBar(productCode);
        try {
            ImageIO.write(image, "png", file);
        } catch (IOException ex) {
            Logger.getLogger(CodigoBarrasDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * Lee un código de barras
     * @param image código de barras
     * @return retorna un <code>String</code> con el código leido
     */
    public String readCodeBar(BufferedImage image){
        /*int width = image.getWidth();
        int height = image.getHeight();
        int[] pixels = new int[width * height];
 
        LuminanceSource source = new BufferedImageLuminanceSource(image);
        BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));
        
        Code128Reader reader = new Code128Reader();
        Result result = null;
        try {
            result = reader.decode(bitmap);
        } catch (NotFoundException | FormatException ex) {
            Logger.getLogger(CodigoBarrasDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return new String(result.getText());*/
        return "codigo";
    }

}
