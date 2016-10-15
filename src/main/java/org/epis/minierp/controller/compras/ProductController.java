package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzUnidadMedDao;
import org.epis.minierp.dao.logistica.EnP2mAlmacenDao;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;
import org.epis.minierp.model.EnP2mAlmacen;
import org.epis.minierp.model.EnP2mClaseProducto;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzUnidadMed;

public class ProductController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<EnP2mProducto> productos = (new EnP2mProductoDao()).getAll();
        List<EnP2mClaseProducto> clases = (new EnP2mClaseProductoDao()).getAll();
        List<EnP2mSubclaseProducto> subclases = (new EnP2mSubclaseProductoDao()).getAll();
        List<EnP2mAlmacen> almacenes = (new EnP2mAlmacenDao()).getAll();
        List<TaGzzMoneda> monedas = (new TaGzzMonedaDao()).getAll();
        List<TaGzzUnidadMed> medidas = (new TaGzzUnidadMedDao()).getAll();

        request.setAttribute("productos", productos);
        request.setAttribute("clases", clases);
        request.setAttribute("subclases", subclases);
        request.setAttribute("almacenes", almacenes);
        request.setAttribute("monedas", monedas);
        request.setAttribute("medidas", medidas);
        request.getRequestDispatcher("/WEB-INF/compras/products.jsp").forward(request, response);
    }
}
