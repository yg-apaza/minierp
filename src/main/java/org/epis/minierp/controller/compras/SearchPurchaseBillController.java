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
import org.epis.minierp.dao.compras.EnP4mFacturaCompraCabDao;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP4mFacturaCompraCab;
import org.epis.minierp.model.EnP4tFacturaCompraDet;
import org.epis.minierp.util.BigDecimalUtil;

public class SearchPurchaseBillController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mEmpresa empresa = (new EnP1mEmpresaDao()).getById(01);
        int empNumDec = empresa.getEmpNumDec();
        String facComCabCod = request.getParameter("facComCabCod");
        EnP4mFacturaCompraCab bill = (new EnP4mFacturaCompraCabDao()).getById(facComCabCod);
        JsonObject data = new JsonObject();

        data.addProperty("cod", bill.getFacComCabCod());
        data.addProperty("pvrNomCom", bill.getEnP4mProveedor().getPrvNomCom());
        data.addProperty("usuNom", bill.getEnP1mUsuario().getUsuNom());

        JsonArray detailList = new JsonArray();
        List<EnP4tFacturaCompraDet> details = new ArrayList<>(bill.getEnP4tFacturaCompraDets());

        for (EnP4tFacturaCompraDet detail : details) {
            JsonObject detailObject = new JsonObject();
            detailObject.addProperty("detCan", detail.getFacComDetCan());
            detailObject.addProperty("proDet", detail.getEnP2mProducto().getProDet());
            detailObject.addProperty("valUni", detail.getFacComDetValUni());
            detailObject.addProperty("detImp", BigDecimalUtil.multiplicar(detail.getFacComDetCan(), detail.getFacComDetValUni(), empNumDec));
            detailList.add(detailObject);
        }

        data.add("detailList", detailList);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));
    }
}
