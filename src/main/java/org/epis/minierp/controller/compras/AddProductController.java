package org.epis.minierp.controller.compras;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.business.contabilidad.CuentaBusiness;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzUnidadMedDao;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;
import org.epis.minierp.dao.ventas.EnP2mPrecioUnitarioDao;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP2mClaseProducto;
import org.epis.minierp.model.EnP2mPrecioUnitario;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.EnP3mCuenta;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzUnidadMed;

public class AddProductController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        JsonObject data = null;

        switch (action) {
            case "getData":
                data = new JsonObject();

                JsonArray productsClasses = new JsonArray();
                List<EnP2mClaseProducto> clasesProductos = (new EnP2mClaseProductoDao()).getAllActive();

                for (EnP2mClaseProducto claseProducto : clasesProductos) {
                    JsonObject productClass = new JsonObject();
                    productClass.addProperty("claProCod", claseProducto.getClaProCod());
                    productClass.addProperty("claProDet", claseProducto.getClaProDet());
                    productsClasses.add(productClass);
                }

                data.add("claDet", productsClasses);

                JsonArray coins = new JsonArray();
                List<TaGzzMoneda> monedas = (new TaGzzMonedaDao()).getAllActive();

                for (TaGzzMoneda moneda : monedas) {
                    JsonObject coin = new JsonObject();
                    coin.addProperty("monCod", moneda.getMonCod());
                    coin.addProperty("monDet", moneda.getMonDet());
                    coins.add(coin);
                }

                data.add("monDet", coins);

                JsonArray measureUnits = new JsonArray();
                List<TaGzzUnidadMed> unidadesMedidas = (new TaGzzUnidadMedDao()).getAllActive();

                for (TaGzzUnidadMed unidadMedida : unidadesMedidas) {
                    JsonObject measureUnit = new JsonObject();
                    measureUnit.addProperty("uniMedCod", unidadMedida.getUniMedCod());
                    measureUnit.addProperty("uniMedDet", unidadMedida.getUniMedDet());
                    measureUnits.add(measureUnit);
                }

                data.add("meaUnitDet", measureUnits);

                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));
                break;

            case "getSubClass":
                String claProCodSearch = request.getParameter("claProCod");
                data = new JsonObject();

                JsonArray productsSubclasses = new JsonArray();
                List<EnP2mSubclaseProducto> subclasesProductos = (new EnP2mSubclaseProductoDao()).getByClass(claProCodSearch);

                for (EnP2mSubclaseProducto subclaseProductos : subclasesProductos) {
                    JsonObject productSubclass = new JsonObject();
                    productSubclass.addProperty("subClaProCod", subclaseProductos.getId().getSubClaProCod());
                    productSubclass.addProperty("subClaProDet", subclaseProductos.getSubClaProDet());
                    productsSubclasses.add(productSubclass);
                }

                data.add("subDet", productsSubclasses);

                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));
                break;

            case "saveProduct":
                String claProCod = request.getParameter("claProCod");
                String subClaProCod = request.getParameter("subClaProCod");
                String proCod = request.getParameter("proCod");
                int monCod = Integer.parseInt(request.getParameter("monCod"));
                int uniMedCod = Integer.parseInt(request.getParameter("uniMedCod"));
                String proDet = request.getParameter("proDet");

                EnP2mProductoId productId = new EnP2mProductoId();
                productId.setClaProCod(claProCod);
                productId.setSubClaProCod(subClaProCod);
                productId.setProCod(proCod);

                CuentaBusiness cuentaBusiness = new CuentaBusiness();
                ArrayList<EnP3mCuenta> cuentasProducto = cuentaBusiness.getCuenta4Producto(claProCod, subClaProCod, proDet);

                EnP2mProducto product = new EnP2mProducto();
                product.setId(productId);
                product.setProDet(proDet);
                product.setTaGzzUnidadMed((new TaGzzUnidadMedDao()).getById(uniMedCod));
                product.setTaGzzMoneda((new TaGzzMonedaDao()).getById(monCod));
                product.setProStk(0);
                product.setProStkPreVen(0);
                product.setEnP3mCuentaByCueComCod(cuentasProducto.get(0));
                product.setEnP3mCuentaByCueComCod(cuentasProducto.get(1));
                product.setEstRegCod('A');
                product.setProObs("");

                EnP2mProductoDao producto = new EnP2mProductoDao();
                producto.save(product);

                EnP2mPrecioUnitarioDao preUniDao = new EnP2mPrecioUnitarioDao();
                EnP2mPrecioUnitario precio;
                aaagregar el producto a todas las listas de precios

                data = new JsonObject();
                JsonArray products = new JsonArray();
                List<EnP2mProducto> productos = producto.getAllActive();

                for (EnP2mProducto productoNew : productos) {
                    JsonObject productNew = new JsonObject();
                    productNew.addProperty("proCod", productoNew.getId().getClaProCod() + "-" + productoNew.getId().getSubClaProCod() + "-" + productoNew.getId().getProCod());
                    productNew.addProperty("proDes", productoNew.getProDet());
                    products.add(productNew);
                }

                data.add("proDet", products);

                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));
                break;
        }
    }
}
