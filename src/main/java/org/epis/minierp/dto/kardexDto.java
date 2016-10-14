package org.epis.minierp.dto;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

public class kardexDto implements Serializable {

    private Double precioUnitarioEntrada;
    private Double precioUnitarioSalida;
    private Double cantidadEntrada;
    private Double cantidadSalida;
    private Double precioTotalEntrada;
    private Double precioTotalSalida;
    private Date fecha;

    private String factura;

    private String producto;
    private Double cantidadSaldo;
    private Double precioUniSaldo;
    private Double precioTotSaldo;

    public kardexDto() {
    }

    public Double getPrecioUnitarioEntrada() {
        return precioUnitarioEntrada;
    }

    public void setPrecioUnitarioEntrada(Double precioUnitarioEntrada) {
        this.precioUnitarioEntrada = precioUnitarioEntrada;
    }

    public Double getPrecioUnitarioSalida() {
        return precioUnitarioSalida;
    }

    public void setPrecioUnitarioSalida(Double precioUnitarioSalida) {
        this.precioUnitarioSalida = precioUnitarioSalida;
    }

    public Double getCantidadEntrada() {
        return cantidadEntrada;
    }

    public void setCantidadEntrada(Double cantidadEntrada) {
        this.cantidadEntrada = cantidadEntrada;
    }

    public Double getCantidadSalida() {
        return cantidadSalida;
    }

    public void setCantidadSalida(Double cantidadSalida) {
        this.cantidadSalida = cantidadSalida;
    }

    public Double getPrecioTotalEntrada() {
        return precioTotalEntrada;
    }

    public void setPrecioTotalEntrada(Double precioTotalEntrada) {
        this.precioTotalEntrada = precioTotalEntrada;
    }

    public Double getPrecioTotalSalida() {
        return precioTotalSalida;
    }

    public void setPrecioTotalSalida(Double precioTotalSalida) {
        this.precioTotalSalida = precioTotalSalida;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getFactura() {
        return factura;
    }

    public void setFactura(String factura) {
        this.factura = factura;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public Double getCantidadSaldo() {
        return cantidadSaldo;
    }

    public void setCantidadSaldo(Double cantidadSaldo) {
        this.cantidadSaldo = cantidadSaldo;
    }

    public Double getPrecioUniSaldo() {
        return precioUniSaldo;
    }

    public void setPrecioUniSaldo(Double precioUniSaldo) {
        this.precioUniSaldo = precioUniSaldo;
    }

    public Double getPrecioTotSaldo() {
        return precioTotSaldo;
    }

    public void setPrecioTotSaldo(Double precioTotSaldo) {
        this.precioTotSaldo = precioTotSaldo;
    }

}
