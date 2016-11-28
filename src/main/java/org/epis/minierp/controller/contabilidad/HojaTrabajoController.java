package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.contabilidad.HojaTrabajoBusiness;

public class HojaTrabajoController extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HojaTrabajoBusiness hojas = new HojaTrabajoBusiness();
        request.setAttribute("hojaT", hojas.rellenarHojaAjustes());
        request.setAttribute("totales", hojas.totales());
        request.getRequestDispatcher("/WEB-INF/contabilidad/hojaTrabajo/hojaTrabajo.jsp").forward(request, response);   
    }
}
