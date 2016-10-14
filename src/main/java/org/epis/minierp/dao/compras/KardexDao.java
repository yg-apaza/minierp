package org.epis.minierp.dao.compras;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.epis.minierp.dto.ProductoDto;

import org.epis.minierp.dto.KardexDto;
import org.epis.minierp.util.DateUtil;
import org.epis.minierp.util.DbUtil;
import org.epis.minierp.util.HibernateUtil;

import org.hibernate.Session;

public class KardexDao {

    private static KardexDao _kardexDao;
    private SimpleDateFormat dt = new SimpleDateFormat("yyyy/MM/dd");
    private Connection session;

    public KardexDao() {
        session = DbUtil.getConnection();
    }

    public List<KardexDto> getAll(String codProd) {

        List<KardexDto> resultados = new ArrayList<>();
        try {
            String simpleProc = "{call kardex_prom_ponderado(?)}";
            CallableStatement cs = session.prepareCall(simpleProc);
 
            cs.setString(1, codProd);
           

            ResultSet rs = cs.executeQuery();
            KardexDto obj = null;

            while (rs.next()) {
                obj = new KardexDto();
                obj.setFecha(rs.getDate("fecha"));
                obj.setFactura(rs.getString("numero_factura"));
                obj.setProducto(rs.getString("producto"));
                obj.setCantidadEntrada(rs.getDouble("cantidad_entrada"));
                obj.setPrecioUnitarioEntrada(rs.getDouble("precio_unitario_entrada"));
                obj.setPrecioTotalEntrada(rs.getDouble("precio_total_entrada"));
                obj.setCantidadSalida(rs.getDouble("cantidad_salida"));
                obj.setPrecioUnitarioSalida(rs.getDouble("precio_unitario_salida"));
                obj.setPrecioTotalSalida(rs.getDouble("precio_total_salida"));
                obj.setCantidadSaldo(rs.getDouble("cantidad_saldo"));
                obj.setPrecioUniSaldo(rs.getDouble("precio_unitario_saldo"));
                obj.setPrecioTotSaldo(rs.getDouble("precio_total_saldo"));
                resultados.add(obj);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return resultados;

    }

    public List<ProductoDto> listarProducto() {

        List<ProductoDto> resultados = new ArrayList<>();
        try {
            StringBuffer SQL = new StringBuffer();
            SQL.append("SELECT * FROM en_p2m_producto");
            PreparedStatement pst = session.prepareStatement(SQL.toString());
            ResultSet rs = pst.executeQuery();
            ProductoDto obj = null;

            while (rs.next()) {
               obj = new ProductoDto();
               obj.setClaseCod(rs.getString("ClaProCod"));
               obj.setSubclaseCod(rs.getString("SubClaProCod"));
               obj.setCodigo(rs.getString("ProCod"));
               obj.setDetalle(rs.getString("ProDet"));
               obj.setUnidadMedidaCod(rs.getInt("UniMedCod"));
               obj.setPrecioUnitario(rs.getDouble("ProPreUni"));
               obj.setMonedaCodigo(rs.getInt("MonCod"));
               obj.setStock(rs.getDouble("ProStk"));
               obj.setStockPreventa(rs.getDouble("ProStkPreVen"));
               obj.setAlmacenCod(rs.getString("AlmCod"));
               obj.setVolumenUnitarioAlmmacen(rs.getDouble("VolUniAlm"));
               obj.setStockMinimo(rs.getDouble("ProStkMin"));
               obj.setObservacion(rs.getString("ProObs"));
               obj.setEstadoRegistro(rs.getString("EstRegCod"));
               resultados.add(obj);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return resultados;

    }
}
