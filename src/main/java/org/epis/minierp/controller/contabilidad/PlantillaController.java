package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.dao.contabilidad.PlantillaCabDao;
import org.epis.minierp.dao.contabilidad.PlantillaDetDao;
import org.epis.minierp.model.EnP3mCuenta;
import org.epis.minierp.model.EnP3mPlantillaCab;
import org.epis.minierp.model.EnP3tPlantillaDet;
import org.epis.minierp.model.EnP3tPlantillaDetId;

public class PlantillaController extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PlantillaCabDao dao = new PlantillaCabDao();
        request.setAttribute("plantillas", dao.getAllActive());
        request.getRequestDispatcher("/WEB-INF/contabilidad/plantilla.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String action = request.getParameter("accion");
        PlantillaCabDao dao = new PlantillaCabDao();
        switch(action) {
            case "create":
                String plaDet = request.getParameter("plaDet");
                String plaGlo = request.getParameter("plaGlo");
                String[] cueNum = request.getParameterValues("cueNum");
                String[] plaDetDebHab = request.getParameterValues("plaDetDebHab");
                String[] plaDetPor = request.getParameterValues("plaDetPor");
                
                EnP3mPlantillaCab nuevo = new EnP3mPlantillaCab();
                nuevo.setPlaDet(plaDet);
                nuevo.setPlaGlo(plaGlo);
                nuevo.setPlaHab(true);
                nuevo.setEstRegCod('A');
                dao.save(nuevo);
                PlantillaDetDao detalleDao = new PlantillaDetDao();
                for(int i = 0; i < cueNum.length; i++)
                {
                    EnP3tPlantillaDet det = new EnP3tPlantillaDet();
                    det.setId(new EnP3tPlantillaDetId(i + 1, nuevo.getPlaCod()));
                    EnP3mCuenta cuenta = new CuentaDao().getByNumActive(cueNum[i]);
                    det.setEnP3mCuenta(cuenta);
                    det.setPlaDetDebHab(plaDetDebHab[i].equals("DEBE"));
                    det.setPlaDetPor(Double.parseDouble(plaDetPor[i]));
                    detalleDao.save(det);
                }
                break;
            case "delete":
                int deletePlaCod = Integer.parseInt(request.getParameter("plaCod"));
                dao.delete(deletePlaCod);
                break;
        }
        response.sendRedirect(request.getContextPath() + "/secured/contabilidad/plantilla");
    }
}
