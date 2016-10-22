package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.CajaDAO;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.contabilidad.Caja;
import org.epis.minierp.model.contabilidad.CajaView;

public class CajaController extends HttpServlet{
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CajaDAO cajaDAO = new CajaDAO();
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        
        EnP1mEmpresa empresa = empDao.getAll().get(0);
        Iterator <CajaView> diario = cajaDAO.getView().iterator();
        Set <Caja> caja = new HashSet <> ();
         while(diario.hasNext()) {
            CajaView asiento = diario.next();
            Caja nuevo = new Caja(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueDes(),asiento.getCueNum(),asiento.getDebe(),asiento.getHaber());
            if("0".equals(asiento.getEstado()))
                nuevo.setHaber(""); 
            else nuevo.setDebe(""); 
            caja.add(nuevo);
        }

        request.setAttribute("operaciones",caja);
        request.setAttribute("empresa", empresa);
        request.getRequestDispatcher("/WEB-INF/contabilidad/cajaBancos/caja.jsp").forward(request, response);
    }
}

