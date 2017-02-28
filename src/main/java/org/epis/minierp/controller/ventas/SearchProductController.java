package org.epis.minierp.controller.ventas;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.ventas.EnP2mPrecioUnitarioDao;
import org.epis.minierp.model.EnP1mListaPreciosUsuarios;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP2mPrecioUnitario;
import org.epis.minierp.model.EnP2mPrecioUnitarioId;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.TaGzzListaPrecios;

public class SearchProductController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String selectProcCod = request.getParameter("proCod");
        String proDet = request.getParameter("proDet");
        EnP2mProducto product = null;

        HttpSession session = request.getSession(false);
        EnP1mUsuario usuario = (EnP1mUsuario) session.getAttribute("usuario");
        TaGzzListaPrecios lista = usuario.getTaGzzListaPrecios();
        EnP1mListaPreciosUsuarios temp;
        double canUsuPorAdd;
        try {
            canUsuPorAdd = usuario.getTaGzzCanalUsuario().getCanUsuPorAdd();
        } catch (Exception e) {
            canUsuPorAdd = 1;
        }

        if (!selectProcCod.isEmpty()) {
            StringTokenizer st = new StringTokenizer(selectProcCod, "-");
            EnP2mProductoId productId = new EnP2mProductoId();
            if (st.hasMoreTokens()) {
                productId.setClaProCod(st.nextToken());
                if (st.hasMoreTokens()) {
                    productId.setSubClaProCod(st.nextToken());
                    if (st.hasMoreTokens()) {
                        productId.setProCod(st.nextToken());
                        product = (new EnP2mProductoDao()).getByIdActive(productId);
                    }
                }
            }
        } else {
            product = (new EnP2mProductoDao()).getByDescription(proDet);
        }

        Map<String, Object> data = new HashMap<String, Object>();

        if (product != null) {

            EnP2mPrecioUnitarioDao preUniDao = new EnP2mPrecioUnitarioDao();
            String claProCod = product.getId().getClaProCod();
            String subClaProCod = product.getId().getSubClaProCod();
            String proCod = product.getId().getProCod();

            EnP2mPrecioUnitario precioUni = preUniDao.getById(
                    new EnP2mPrecioUnitarioId(proCod, subClaProCod, claProCod, lista.getLisPreCod()));

            data.put("proCod", product.getId().getClaProCod() + "-" + product.getId().getSubClaProCod() + "-" + product.getId().getProCod());
            data.put("proDet", product.getProDet());
            data.put("proStk", product.getProStk() - product.getProStkPreVen());
            data.put("proPreUni", precioUni.getPreUniVen() * canUsuPorAdd);
            data.put("proUnit", product.getTaGzzUnidadMed().getUniMedSim());
        }
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));
    }
}
