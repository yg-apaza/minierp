package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.compras.KardexDao;
import org.epis.minierp.dao.logistica.EnP2mInventarioCabDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP2mInventarioCab;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.compras.Kardex;

public class KardexController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP2mProductoDao daoProd = new EnP2mProductoDao();
        List<EnP2mProducto> listaProd = daoProd.getAllActive();
        request.setAttribute("productos", listaProd);
        
        EnP2mInventarioCabDao daoInv=new EnP2mInventarioCabDao();
        List<EnP2mInventarioCab> listaInv=daoInv.getAll();
         request.setAttribute("inventarios", listaInv);
        request.getRequestDispatcher("/WEB-INF/compras/kardex.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String button = request.getParameter("button");
            if ("btn_ver".equals(button)) {
                KardexDao daoUsu = new KardexDao();
                EnP2mProductoDao prodDao = new EnP2mProductoDao();
                String tipoKardex = request.getParameter("optradio");
                String pro[] = request.getParameter("item").split(",");
                String invt[] = request.getParameter("inv").split(",");
                String invCod=invt[0];
                String proCod=pro[0];
                if (proCod.length() > 0) {

                    List<Kardex> registros = daoUsu.getAll(proCod,tipoKardex,invCod);

                    request.setAttribute("registros", registros);
                }

                List<EnP2mProducto> listaProd = prodDao.getAllActive();
                request.setAttribute("productos", listaProd);
                
                EnP2mInventarioCabDao daoInv=new EnP2mInventarioCabDao();
                List<EnP2mInventarioCab> listaInv=daoInv.getAll();
                request.setAttribute("inventarios", listaInv);
                request.getRequestDispatcher("/WEB-INF/compras/kardex.jsp").forward(request, response);
            }

        } catch (ServletException | IOException ex) {
            Logger.getLogger(KardexController.class.getName()).log(Level.SEVERE, null, ex);

        }

    }
}
