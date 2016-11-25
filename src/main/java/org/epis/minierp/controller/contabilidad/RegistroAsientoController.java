package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.contabilidad.RegistroAsientosBusiness;
import org.epis.minierp.dao.contabilidad.AsientoCabDao;
import org.epis.minierp.dao.contabilidad.AsientoDetDao;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoComprobanteDao;
import org.epis.minierp.model.EnP3mAsientoCab;
import org.epis.minierp.model.EnP3mAsientoCabId;
import org.epis.minierp.model.EnP3mCuenta;
import org.epis.minierp.model.EnP3tAsientoDet;
import org.epis.minierp.model.EnP3tAsientoDetId;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzTipoComprobante;

public class RegistroAsientoController  extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        TaGzzTipoComprobanteDao comDao = new TaGzzTipoComprobanteDao();
        request.setAttribute("comprobantes", comDao.getAllActive());
        TaGzzMonedaDao monDao = new TaGzzMonedaDao();
        request.setAttribute("monedas", monDao.getAllActive());
        request.setAttribute("libDiaCod", 1);
        request.getRequestDispatcher("/WEB-INF/contabilidad/registroAsientos.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        AsientoCabDao daoAsientoCab = new AsientoCabDao();
        AsientoDetDao daoAsientoDet = new AsientoDetDao();
        
        try {
            EnP3mAsientoCab asiCab = new EnP3mAsientoCab();
            int libDiaCod = Integer.parseInt(request.getParameter("libDiaCod"));
            int asiCabCod = Integer.parseInt(request.getParameter("asiCabCod"));
            char asiCabTip = 'M';
            String asiCabGlo = request.getParameter("asiCabGlo");
            Date asiCabFec = format.parse(request.getParameter("asiCabFec"));
            Integer tipComCod = Integer.parseInt(request.getParameter("tipComCod"));
            String asiCabNumCom = request.getParameter("asiCabNumCom");
            int monCod = Integer.parseInt(request.getParameter("monCod"));
            TaGzzMoneda taGzzMoneda = (new TaGzzMonedaDao()).getById(monCod);
            TaGzzTipoComprobante taGzzTipoComprobante = null;
            if(tipComCod != 0)
                taGzzTipoComprobante = (new TaGzzTipoComprobanteDao()).getById(tipComCod);
        
            EnP3mAsientoCabId asientoCabId = new EnP3mAsientoCabId();
            asientoCabId.setAsiCabCod(asiCabCod);
            asientoCabId.setLibDiaCod(libDiaCod);
            
            asiCab.setId(asientoCabId);
            asiCab.setAsiCabTip(asiCabTip);
            asiCab.setAsiCabGlo(asiCabGlo);
            asiCab.setAsiCabFec(asiCabFec);
            asiCab.setTaGzzTipoComprobante(taGzzTipoComprobante);
            asiCab.setAsiCabNumCom(asiCabNumCom);
            asiCab.setTaGzzMoneda(taGzzMoneda);
            asiCab.setEstRegCod('A');
            daoAsientoCab.save(asiCab);

            String[] cueNum = request.getParameterValues("cueNum");
            String[] asiDetDebHab = request.getParameterValues("asiDetDebHab");
            String[] asiDetMon = request.getParameterValues("asiDetMon");
            
            CuentaDao cuentaDao = new CuentaDao();
            
            for(int i = 0; i < cueNum.length; i++){
                EnP3tAsientoDet asiDet = new EnP3tAsientoDet();
                EnP3tAsientoDetId idDet = new EnP3tAsientoDetId();
                
                EnP3mCuenta cuenta = cuentaDao.getByNumActive(cueNum[i]);
                idDet.setLibDiaCod(libDiaCod);
                idDet.setAsiCabCod(asiCabCod);
                idDet.setAsiDetCod(i + 1);
                asiDet.setId(idDet);
                asiDet.setEnP3mCuenta(cuenta);
                asiDet.setAsiDetDebHab(asiDetDebHab[i].equals("DEBE"));
                asiDet.setAsiDetMon(Double.parseDouble(asiDetMon[i]));
                daoAsientoDet.save(asiDet); 
            }
            
            RegistroAsientosBusiness regBusiness = new RegistroAsientosBusiness();
            System.out.println("detalles: " + asiCab.getEnP3tAsientoDets().size());
            regBusiness.generarAsientosAmarre(asiCab);
        } catch (ParseException ex) {
        }
        response.sendRedirect(request.getContextPath() + "/secured/contabilidad/asientos");
    }
}
