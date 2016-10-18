package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.dao.ventas.EnP1mPagosCuotasCabDao;
import org.epis.minierp.model.EnP1mPagosCuotasCab;

public class PagosController extends HttpServlet {
         private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mPagosCuotasCabDao pagosDao=new EnP1mPagosCuotasCabDao();
        List<EnP1mPagosCuotasCab> pagos=pagosDao.getAll();
        request.setAttribute("pagos",pagos);
        request.getRequestDispatcher("/WEB-INF/ventas/pagos/pagos.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        EnP1mPagosCuotasCabDao pagosDao=new EnP1mPagosCuotasCabDao();
        String action = request.getParameter("accion");
        if(action!=null){
            switch(action){
               case "update":{
                   break;
               }
               case "pagar":{
                   String cod=request.getParameter("monPag");
                   
                   System.out.println("Monto pag"+cod);
                   
                   
                   break;
               }
            }
        }else{
            if(request.getParameter("buscarFactura")!=null){
                EnP1mPagosCuotasCab p=pagosDao.getById(request.getParameter("CodCabFac"));
                List<EnP1mPagosCuotasCab> pagos=new ArrayList<EnP1mPagosCuotasCab>();
                pagos.add(p);
                request.setAttribute("pagos",pagos);
                request.getRequestDispatcher("/WEB-INF/ventas/pagos/pagos.jsp").forward(request, response);
            }else if(request.getParameter("todos")!=null){
                List<EnP1mPagosCuotasCab> pagos=pagosDao.getAll();
                request.setAttribute("pagos",pagos);
                request.getRequestDispatcher("/WEB-INF/ventas/pagos/pagos.jsp").forward(request, response);
            }
        }               
    }
}
