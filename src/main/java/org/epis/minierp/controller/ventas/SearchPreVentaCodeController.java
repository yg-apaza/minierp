package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.ventas.EnP1mPreventaCabDao;
import org.epis.minierp.model.EnP1mPreventaCab;

public class SearchPreVentaCodeController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String preVenCabCod = request.getParameter("preVenCabCod");
        EnP1mPreventaCab bill = (new EnP1mPreventaCabDao()).getById(preVenCabCod);
        
        if(bill == null)
            response.getWriter().print(true);
        else 
            response.getWriter().print(false);
    }
}
