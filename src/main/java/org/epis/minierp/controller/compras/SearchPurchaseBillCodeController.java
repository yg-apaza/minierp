package org.epis.minierp.controller.compras;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.compras.EnP4mFacturaCompraCabDao;
import org.epis.minierp.model.EnP4mFacturaCompraCab;

public class SearchPurchaseBillCodeController extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facComCabCod = request.getParameter("facComCabCod");
        EnP4mFacturaCompraCab bill = (new EnP4mFacturaCompraCabDao()).getById(facComCabCod);
        
        if(bill == null)
            response.getWriter().print(true);
        else 
            response.getWriter().print(false);
    }
}
