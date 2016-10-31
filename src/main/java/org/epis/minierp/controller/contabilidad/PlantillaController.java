package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PlantillaController extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        request.getRequestDispatcher("/WEB-INF/contabilidad/plantilla.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String action = request.getParameter("accion");
        switch(action) {
            case "create":
                String plaDet = request.getParameter("plaDet");
                String plaGlo = request.getParameter("plaGlo");
                String[] cueNum = request.getParameterValues("cueNum");
                String[] plaDetDebHab = request.getParameterValues("plaDetDebHab");
                String[] plaDetPor = request.getParameterValues("plaDetPor");
                
                /*
                System.out.println("-------------------------------------------------");
                System.out.println("CABECERA DE PLANTILLA");
                System.out.println("-------------------------------------------------");
                System.out.println("plaDet: " + plaDet);
                System.out.println("plaGlo: " + plaGlo);
                
                System.out.println("-------------------------------------------------");
                System.out.println("DETALLE DE PLANTILLA");
                
                for(int i = 0; i < cueNum.length; i++)
                {
                    System.out.println("-------------------------------------------------");
                    System.out.println("cueNum: " + cueNum[i] + "\t");
                    System.out.println("plaDetDebHab: " + plaDetDebHab[i] + "\t");
                    System.out.println("plaDetPor: " + plaDetPor[i] + "\t");
                }
                System.out.println("-------------------------------------------------");
                */
                break;
            case "delete":
                break;
        }
        response.sendRedirect(request.getContextPath() + "/secured/contabilidad/plantilla");
    }
}
