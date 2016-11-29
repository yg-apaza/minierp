package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.LibroDiarioDao;
import org.epis.minierp.dao.contabilidad.LibroDiarioViewDao;
import org.epis.minierp.model.EnP3mLibroDiario;
import org.epis.minierp.model.contabilidad.LibroDiarioView;

public class LibroDiarioController extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    List <EnP3mLibroDiario> libros = null;
    List <LibroDiarioView> operaciones = null;
    int libDiaCod = 0;
    int mes = 0;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {   
        DecimalFormat df = new DecimalFormat("#0.00"); 
        operaciones = (new LibroDiarioViewDao()).getAll();
        LibroDiarioDao libroDao = new LibroDiarioDao();
        libDiaCod = libroDao.getCurrent().getLibDiaCod();
        request.setAttribute("libDiaCod", libDiaCod);
        request.setAttribute("libDiaMes", mes);
        
        String temp = "";
        double m_debe = 0;
        double m_haber = 0;
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        SimpleDateFormat sdfM = new SimpleDateFormat("MM");
        
        for(int i = 0; i < operaciones.size(); i++){
            if(mes != 0 && Integer.parseInt(sdfM.format(operaciones.get(i).getAsiCabFec())) != mes)
                continue;
            temp += "<tr>";
            temp += "<td>" + operaciones.get(i).getIdPK().getAsiCabCod()+"</td>";
            temp += "<td>" + sdf.format(operaciones.get(i).getAsiCabFec())+"</td>";
            temp += "<td>" + operaciones.get(i).getAsiCabGlo() + "</td>";
            temp += "<td>" + operaciones.get(i).getAsiCabTip() + "</td>";
            temp += "<td>" + (operaciones.get(i).getAsiCabNumCom() == null?"":operaciones.get(i).getAsiCabNumCom()) + "</td>";
            temp += "<td>" + operaciones.get(i).getCueNum() + "</td>";
            temp += "<td>" + operaciones.get(i).getCueDes() + "</td>";
            if(operaciones.get(i).isAsiDetDebHab()){
                temp += "<td>" + df.format(operaciones.get(i).getAsiDetMon()) + "</td>";
                temp += "<td>" + df.format(0) + "</td>";
                m_debe += operaciones.get(i).getAsiDetMon();
            }
            else{
                temp += "<td>" + df.format(0) + "</td>";
                temp += "<td>" + df.format(operaciones.get(i).getAsiDetMon()) + "</td>";
                m_haber += operaciones.get(i).getAsiDetMon();
            }
            temp += "</tr>";
        }
        
        request.setAttribute("mDebe", df.format(m_debe));
        request.setAttribute("mHaber", df.format(m_haber));
        request.setAttribute("opera", temp);
        request.getRequestDispatcher("/WEB-INF/contabilidad/libroDiario/libroDiario_Principal.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LibroDiarioDao daoLibroDiario = new LibroDiarioDao();
        
        int operacion = Integer.parseInt(request.getParameter("operacion"));
        try {
            switch(operacion){
                case 1:
                    EnP3mLibroDiario miLibro = new EnP3mLibroDiario();
                    int libDiaCodo = Integer.parseInt(request.getParameter("libDiaCod"));
                    miLibro.setLibDiaCod(libDiaCodo);
                    String libDiaPer = request.getParameter("libDiaPer");
                    miLibro.setLibDiaPer(libDiaPer);
                    miLibro.setEstRegCod('A');
                    daoLibroDiario.save(miLibro);
                    break;
                case 4:
                    mes = Integer.parseInt(request.getParameter("mes"));
                    break;
                case 5:
                    if(libros != null)
                        for(int i=0;i<libros.size();i++){
                            if(libros.get(i).getLibDiaCod()==libDiaCod){
                                libros.get(i).setEstRegCod('B');
                                daoLibroDiario.update(libros.get(i));
                                libDiaCod = 0;
                                break;
                            }
                        }
                    
                    break;
            }
            response.sendRedirect(request.getContextPath() + "/secured/contabilidad/librodiario");
        } catch (Exception e) {
            
        }
    }          
}
