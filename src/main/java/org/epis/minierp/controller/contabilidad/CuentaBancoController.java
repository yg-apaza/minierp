package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.contabilidad.CuentaBancoBusiness;
import org.epis.minierp.dao.contabilidad.BancoDao;
import org.epis.minierp.dao.contabilidad.CuentaBancoDao;

public class CuentaBancoController extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CuentaBancoDao dao = new CuentaBancoDao();
        BancoDao bancoDao = new BancoDao();
        request.setAttribute("cuentasbanco", dao.getAllActive());
        request.setAttribute("bancos", bancoDao.getAllActive());
        request.getRequestDispatcher("/WEB-INF/contabilidad/cuentaBanco.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        CuentaBancoBusiness business = new CuentaBancoBusiness();
        
        switch(action) {
            case "create":
                int createBanCod = Integer.parseInt(request.getParameter("banCod"));
                String createCueBanNum = request.getParameter("cueBanNum");
                String createCueNum = request.getParameter("cueNum");
                business.create(createBanCod, createCueBanNum, createCueNum);
                break;
            case "update":
                int updateCueBanCod = Integer.parseInt(request.getParameter("cueBanCod"));
                int updateBanCod = Integer.parseInt(request.getParameter("banCod"));
                String updateCueBanNum = request.getParameter("cueBanNum");
                business.update(updateCueBanCod, updateBanCod, updateCueBanNum);
                break;
            case "delete":
                int deleteCueBanCod = Integer.parseInt(request.getParameter("cueBanCod"));
                business.delete(deleteCueBanCod);
                break;
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/contabilidad/cuentabancaria");
    }
}
