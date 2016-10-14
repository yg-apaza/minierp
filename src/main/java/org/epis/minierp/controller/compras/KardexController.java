package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;
import org.epis.minierp.dao.compras.KardexDao;
import org.epis.minierp.dto.ProductoDto;
import org.epis.minierp.dto.KardexDto;

public class KardexController extends HttpServlet {

    private static final long serialVersionUID = 1L;
  
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        KardexDao daoUsu = new KardexDao();
        List<ProductoDto> listaProd = daoUsu.listarProducto();
        request.setAttribute("productos", listaProd);
        request.getRequestDispatcher("/WEB-INF/compras/kardex.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String button = request.getParameter("button");
            if ("btn_ver".equals(button)) {
                KardexDao daoUsu = new KardexDao();
                String proCod = request.getParameter("item");
                
                if (proCod.length() > 0) {
                  
                    List<KardexDto> registros = daoUsu.getAll(proCod);
                    
                    request.setAttribute("registros", registros);
                }

                List<ProductoDto> listaProd = daoUsu.listarProducto();
                request.setAttribute("productos", listaProd);
                request.getRequestDispatcher("/WEB-INF/compras/kardex.jsp").forward(request, response);
            } else if ("btn_reporteFisico".equals(button)) {
                String proCod = request.getParameter("item");
                
                imprimirFisico(request,response,proCod);
                 System.out.println("entro   " );
            } else if ("btn_reporteValor".equals(button)) {
                String proCod = request.getParameter("item");
                
                imprimirValorizado(request,response,proCod);
                System.out.println("entro   " );
            } else {
                // ???
            }

        } catch (ServletException | IOException ex) {
            Logger.getLogger(KardexController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (JRException ex) {
            Logger.getLogger(KardexController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

      public void imprimirFisico(HttpServletRequest request, HttpServletResponse response,String proCod) throws IOException, JRException {
       
            String salida;
            
        try {
            Connection conn=null;
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/episerp","alumno","1234");
            String path = getServletContext().getRealPath("/WEB-INF/");

            path=path+"reportes/reporte_kardex_fisico.jasper";
//            jasperDesign = JRXmlLoader.load(path+"/reportes/reporte_kardex_fisico.jrxml");
      
            HashMap hm = null;
            hm = new HashMap();
            hm.put("PRODUCTO_ID", proCod);
           
            ServletOutputStream servletOutputStream = response.getOutputStream();
 
            byte[] bytes = null;
            try {
                bytes = JasperRunManager.runReportToPdf(path, hm, conn);
                
                response.setContentType("application/pdf");
                response.setContentLength(bytes.length);
                servletOutputStream.write(bytes, 0, bytes.length);
                servletOutputStream.flush();
                servletOutputStream.close();
            } catch (JRException e) {
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter(stringWriter);
                e.printStackTrace(printWriter);
                response.setContentType("text/plain");
                response.getOutputStream().print(stringWriter.toString());
            }
        } catch (Exception e) {
            salida = "Error generando Reporte Jasper, el error del Sistema es " + e;
            System.out.println(salida);
        }
    

    
    }
      
      public void imprimirValorizado(HttpServletRequest request, HttpServletResponse response,String proCod) throws IOException, JRException {
       
            String salida;
 
        try {
            Connection conn=null;
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/episerp","alumno","1234");
            String path = getServletContext().getRealPath("/WEB-INF/");
            System.out.println(path);
            path=path+"reportes/reporte_kardex_valorizado.jasper";
//            jasperDesign = JRXmlLoader.load(path+"/reportes/reporte_kardex_fisico.jrxml");
            
            String jrxmlFileName = path;
             System.out.println(path);
            
            HashMap hm = null;
            hm = new HashMap();
            hm.put("PRODUCTO_ID", proCod);
           
            ServletOutputStream servletOutputStream = response.getOutputStream();
 
            byte[] bytes = null;
            System.out.println("2 "+path);
            try {
                System.out.println("dentro");
                bytes = JasperRunManager.runReportToPdf(path, hm, conn);
                
                response.setContentType("application/pdf");
                response.setContentLength(bytes.length);
                servletOutputStream.write(bytes, 0, bytes.length);
                servletOutputStream.flush();
                servletOutputStream.close();
            } catch (JRException e) {
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter(stringWriter);
                e.printStackTrace(printWriter);
                response.setContentType("text/plain");
                response.getOutputStream().print(stringWriter.toString());
            }
        } catch (Exception e) {
            salida = "Error generando Reporte Jasper, el error del Sistema es " + e;
            System.out.println(salida);
        }
    

    
    }
}
