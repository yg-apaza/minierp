package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.BancosDAO;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.contabilidad.Bancos;
import org.epis.minierp.model.contabilidad.BancosView;

public class BancosController extends HttpServlet{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BancosDAO bancosDAO = new BancosDAO();
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        
        EnP1mEmpresa empresa = empDao.getAll().get(0);
        Iterator <BancosView> diario = bancosDAO.getView().iterator();
        Set <Bancos> bancos = new HashSet <> ();
         while(diario.hasNext()) {
            BancosView asiento = diario.next();
            Bancos nuevo = new Bancos(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueBanNum(),asiento.getCueDes(),asiento.getCueNum(),asiento.getDebe(),asiento.getHaber());
            if("0".equals(asiento.getEstado()))
                nuevo.setHaber(""); 
            else nuevo.setDebe(""); 
            bancos.add(nuevo);
        }
        request.setAttribute("operaciones",bancos);
        request.setAttribute("empresa", empresa);
        request.getRequestDispatcher("/WEB-INF/contabilidad/cajaBancos/bancos.jsp").forward(request, response);
    }
}
