package org.epis.minierp.controller.general;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.general.Reporte;

public class ReporteController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileType = request.getParameter("type");
        String report = request.getParameter("report");
        String jdbc = request.getParameter("jdbc");
        String value = request.getParameter("value");
        String key = request.getParameter("key");
        Reporte generador = null;
        if (jdbc.equals("true")) {
            generador = new Reporte(true, key, value);
        } else {
            //generador = new Reporte(false, key, value);
            generador = new Reporte();
        }
        switch (fileType) {
            case "pdf":
                response.setContentType("application/pdf");
                break;
            case "xls":
                response.setContentType("application/vnd.ms-excel");
                break;
            case "doc":
                response.setContentType("application/msword");
                break;
        }

        String path = getServletContext().getRealPath("/WEB-INF/");
        String fileGenerated = "";

        switch (report) {
            //Reportes de Contabilidad
            case "plancontable":
                path = path + "reportes/contabilidad/planContable.jasper";
                fileGenerated = generador.report(path, "PlanContable_", fileType);
                break;
            case "cuentabancaria":
                path = path + "reportes/contabilidad/cuentaBancaria.jasper";
                fileGenerated = generador.report(path, "CuentaBancaria_", fileType);
                break;

            //Reportes de Ventas
            case "registroventas":
                path = path + "reportes/ventas/registroVentas.jasper";
                fileGenerated = generador.report(path, "RegistroDeVentas_", fileType);
                break;
            case "clientes":
                path = path + "reportes/ventas/clientes.jasper";
                fileGenerated = generador.report(path, "Clientes_", fileType);
                break;
            case "puntodeventa":
                path = path + "reportes/ventas/puntoVenta.jasper";
                fileGenerated = generador.report(path, "PuntoDeVenta_", fileType);
                break;
            case "flujoefectivo":
                path = path + "reportes/ventas/subreporte_flujo_efectivo.jasper";
                fileGenerated = generador.report(path, "FlujoEfectivoAnual", fileType);
                break;
            case "factura":
                path = path + "reportes/ventas/factura_cab.jasper";
                fileGenerated = generador.report(path, "Factura "+value, fileType);
                break;
            //Reportes de Logística
            case "kardexfisico":
                path = path + "reportes/logistica/reporte_kardex_fisico.jasper";
                fileGenerated = generador.report(path, "KardexFisico_", fileType);
                break;
            case "kardexvalorizado":
                path = path + "reportes/logistica/reporte_kardex_valorizado.jasper";
                fileGenerated = generador.report(path, "KardexValorizado", fileType);
                break;
            case "proveedores":
                path = path + "reportes/logistica/reporte_proveedor.jasper";
                fileGenerated = generador.report(path, "Proveedores_", fileType);
                break;
            case "inventario":
                path = path + "reportes/logistica/inventario.jasper";
                fileGenerated = generador.report(path, "Inventario_", fileType);
                break;
        }

        File file = new File(fileGenerated);
        response.addHeader("Content-Disposition", "attachment; filename=" + file.getName());
        response.setContentLength((int) file.length());
        FileInputStream fileInputStream = new FileInputStream(file);
        OutputStream responseOutputStream = response.getOutputStream();
        int bytes;
        while ((bytes = fileInputStream.read()) != -1) {
            responseOutputStream.write(bytes);
        }
    }
}
