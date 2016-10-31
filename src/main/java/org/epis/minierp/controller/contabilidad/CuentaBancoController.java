package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.BancoDao;
import org.epis.minierp.dao.contabilidad.CuentaBancoDao;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.model.EnP3mCuenta;
import org.epis.minierp.model.EnP3mCuentaBanco;
import org.epis.minierp.model.TaGzzBanco;

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
        CuentaDao cuentaDao = new CuentaDao();
        BancoDao bancoDao = new BancoDao();
        CuentaBancoDao dao = new CuentaBancoDao();
        
        switch(action) {
            case "create":
                int createBanCod = Integer.parseInt(request.getParameter("banCod"));
                String createCueBanNum = request.getParameter("cueBanNum");
                String createCueNum = request.getParameter("cueNum");
                
                EnP3mCuentaBanco cb = new EnP3mCuentaBanco();
                TaGzzBanco banco = bancoDao.getById(createBanCod);
                cb.setTaGzzBanco(banco);
                
                cb.setCueBanNum(createCueBanNum);
                
                EnP3mCuenta cuenta = new EnP3mCuenta();
                cuenta.setCueDes(banco.getBanDet());
                cuenta.setCueNiv(5);
                cuenta.setCueNum("1041" + createCueNum);
                cuenta.setEnP3mCuentaByCuePad(cuentaDao.getByIdActive(434));
                cuenta.setEstRegCod('A');
                cuentaDao.save(cuenta);
                cb.setEnP3mCuenta(cuenta);
                cb.setEstRegCod('A');
                dao.save(cb);
                break;
            case "update":
                int updateCueBanCod = Integer.parseInt(request.getParameter("cueBanCod"));
                int updateBanCod = Integer.parseInt(request.getParameter("banCod"));
                String updateCueBanNum = request.getParameter("cueBanNum");
                dao.update(updateCueBanCod, updateBanCod, updateCueBanNum);
                break;
            case "delete":
                int deleteCueBanCod = Integer.parseInt(request.getParameter("cueBanCod"));
                dao.delete(deleteCueBanCod);
                break;
        }
        response.sendRedirect(request.getContextPath() + "/secured/contabilidad/cuentabancaria");
    }
}
