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
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.compras.Kardex;

public class KardexController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP2mProductoDao daoProd = new EnP2mProductoDao();
        List<EnP2mProducto> listaProd = daoProd.getAllActive();
        request.setAttribute("productos", listaProd);
        request.getRequestDispatcher("/WEB-INF/compras/kardex.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String button = request.getParameter("button");
            if ("btn_ver".equals(button)) {
                KardexDao daoUsu = new KardexDao();
                EnP2mProductoDao prodDao = new EnP2mProductoDao();
                String pro[] = request.getParameter("item").split(",");
                String proCod=pro[0];
                if (proCod.length() > 0) {

                    List<Kardex> registros = daoUsu.getAll(proCod);

                    request.setAttribute("registros", registros);
                }

                List<EnP2mProducto> listaProd = prodDao.getAllActive();
                request.setAttribute("productos", listaProd);
                request.getRequestDispatcher("/WEB-INF/compras/kardex.jsp").forward(request, response);
            }

        } catch (ServletException | IOException ex) {
            Logger.getLogger(KardexController.class.getName()).log(Level.SEVERE, null, ex);

        }

    }
}
