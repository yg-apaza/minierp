package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuiaRemTransportistaController extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] codigos = request.getParameterValues("codigos");
        String guiTraLotTraNum = request.getParameter("guiTraLotTraNum");
        String guiTraLotTraDat = request.getParameter("guiTraLotTraDat");
        String guiTraLotNumPla = request.getParameter("guiTraLotNumPla");
        String guiTraLotRutDes = request.getParameter("guiTraLotRutDes");
        String guiTraLotTraDes = request.getParameter("guiTraLotTraDes");
        
        System.out.println("-------------------------");
        System.out.println("TEST");
        System.out.println("-------------------------");
        System.out.println("Guia Nro:" + guiTraLotTraNum);
        System.out.println("Codigo de Transportista: " + guiTraLotTraDat);
        System.out.println("Codigo de Unidad: " + guiTraLotNumPla);
        System.out.println("Codigo de Ruta: " + guiTraLotRutDes);
        System.out.println("Descripcion: " + guiTraLotTraDes);
        System.out.println("Codigo de Facturas:");
        for(int i = 0; i < codigos.length; i++)
            System.out.println(codigos[i]);
        System.out.println("-------------------------");
        
        response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");
    }
}
