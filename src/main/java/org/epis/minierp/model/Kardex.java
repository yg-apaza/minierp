package org.epis.minierp.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedNativeQuery;
import javax.persistence.Temporal;
@Entity
    @NamedNativeQuery(name = "Kardex.findByProducto", query = "select * from kardex_prom_ponderado(?) as (fecha date,numero_factura varchar,producto varchar,cantidad_entrada double,precio_unitario_entrada double,precio_total_entrada double,cantidad_salida double,precio_unitario_salida double,precio_total_salida double,cantidad_saldo double,precio_total_saldo double,precio_unitario_saldo,tipo_operacion varchar);", resultClass =  Kardex.class)
public class Kardex implements Serializable {
    @Id
    @GeneratedValue
    private String numero_factura;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date fecha;
    
    private String producto;
    private BigDecimal cantidad_entrada;
    private BigDecimal precio_unitario_entrada;
    private BigDecimal precio_total_entrada;
    private BigDecimal cantidad_salida;
    private BigDecimal precio_unitario_salida;
    private BigDecimal precio_total_salida;
    private BigDecimal cantidad_saldo;
    private BigDecimal precio_total_saldo;
    private BigDecimal precio_unitario_saldo;
    private String tipo_operacion;

    public Kardex() {
    }

    public String getNumero_factura() {
        return numero_factura;
    }

    public void setNumero_factura(String numero_factura) {
        this.numero_factura = numero_factura;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public BigDecimal getCantidad_entrada() {
        return cantidad_entrada;
    }

    public void setCantidad_entrada(BigDecimal cantidad_entrada) {
        this.cantidad_entrada = cantidad_entrada;
    }

    public BigDecimal getPrecio_unitario_entrada() {
        return precio_unitario_entrada;
    }

    public void setPrecio_unitario_entrada(BigDecimal precio_unitario_entrada) {
        this.precio_unitario_entrada = precio_unitario_entrada;
    }

    public BigDecimal getPrecio_total_entrada() {
        return precio_total_entrada;
    }

    public void setPrecio_total_entrada(BigDecimal precio_total_entrada) {
        this.precio_total_entrada = precio_total_entrada;
    }

    public BigDecimal getCantidad_salida() {
        return cantidad_salida;
    }

    public void setCantidad_salida(BigDecimal cantidad_salida) {
        this.cantidad_salida = cantidad_salida;
    }

    public BigDecimal getPrecio_unitario_salida() {
        return precio_unitario_salida;
    }

    public void setPrecio_unitario_salida(BigDecimal precio_unitario_salida) {
        this.precio_unitario_salida = precio_unitario_salida;
    }

    public BigDecimal getPrecio_total_salida() {
        return precio_total_salida;
    }

    public void setPrecio_total_salida(BigDecimal precio_total_salida) {
        this.precio_total_salida = precio_total_salida;
    }

    public BigDecimal getCantidad_saldo() {
        return cantidad_saldo;
    }

    public void setCantidad_saldo(BigDecimal cantidad_saldo) {
        this.cantidad_saldo = cantidad_saldo;
    }

    public BigDecimal getPrecio_total_saldo() {
        return precio_total_saldo;
    }

    public void setPrecio_total_saldo(BigDecimal precio_total_saldo) {
        this.precio_total_saldo = precio_total_saldo;
    }

    public BigDecimal getPrecio_unitario_saldo() {
        return precio_unitario_saldo;
    }

    public void setPrecio_unitario_saldo(BigDecimal precio_unitario_saldo) {
        this.precio_unitario_saldo = precio_unitario_saldo;
    }

    public String getTipo_operacion() {
        return tipo_operacion;
    }

    public void setTipo_operacion(String tipo_operacion) {
        this.tipo_operacion = tipo_operacion;
    }
    
    

}
