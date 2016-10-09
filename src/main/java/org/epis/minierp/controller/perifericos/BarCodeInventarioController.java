package org.epis.minierp.controller.perifericos;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.perifericos.ProductoDao;
import org.epis.minierp.model.EnP2mProducto;

public class BarCodeInventarioController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductoDao daoPro = new ProductoDao();
        List<EnP2mProducto> productos = daoPro.getAll();
        request.setAttribute("productos", productos);
        request.getRequestDispatcher("/WEB-INF/perifericos/barCodeInventario.jsp").forward(request, response);
    }
}