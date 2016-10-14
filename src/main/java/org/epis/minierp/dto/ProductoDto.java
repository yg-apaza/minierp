/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dto;

import java.io.Serializable;

/**
 *
 * @author carlos
 */
public class ProductoDto implements Serializable{
    private String claseCod;
    private String subclaseCod;
    private String codigo;
    private String detalle;
    private Integer unidadMedidaCod;
    private Double precioUnitario;
    private Integer monedaCodigo;
    private Double stock;
    private Double stockPreventa;
    private String almacenCod;
    private Double volumenUnitarioAlmmacen;
    private Double stockMinimo;
    private String observacion;
    private String estadoRegistro;
    
    public ProductoDto() {
    }

    public String getClaseCod() {
        return claseCod;
    }

    public void setClaseCod(String claseCod) {
        this.claseCod = claseCod;
    }

    public String getSubclaseCod() {
        return subclaseCod;
    }

    public void setSubclaseCod(String subclaseCod) {
        this.subclaseCod = subclaseCod;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public Integer getUnidadMedidaCod() {
        return unidadMedidaCod;
    }

    public void setUnidadMedidaCod(Integer unidadMedidaCod) {
        this.unidadMedidaCod = unidadMedidaCod;
    }

    public Double getPrecioUnitario() {
        return precioUnitario;
    }

    public void setPrecioUnitario(Double precioUnitario) {
        this.precioUnitario = precioUnitario;
    }

    public Integer getMonedaCodigo() {
        return monedaCodigo;
    }

    public void setMonedaCodigo(Integer monedaCodigo) {
        this.monedaCodigo = monedaCodigo;
    }

    public Double getStock() {
        return stock;
    }

    public void setStock(Double stock) {
        this.stock = stock;
    }

    public Double getStockPreventa() {
        return stockPreventa;
    }

    public void setStockPreventa(Double stockPreventa) {
        this.stockPreventa = stockPreventa;
    }

    public String getAlmacenCod() {
        return almacenCod;
    }

    public void setAlmacenCod(String almacenCod) {
        this.almacenCod = almacenCod;
    }

    public Double getVolumenUnitarioAlmmacen() {
        return volumenUnitarioAlmmacen;
    }

    public void setVolumenUnitarioAlmmacen(Double volumenUnitarioAlmmacen) {
        this.volumenUnitarioAlmmacen = volumenUnitarioAlmmacen;
    }

    public Double getStockMinimo() {
        return stockMinimo;
    }

    public void setStockMinimo(Double stockMinimo) {
        this.stockMinimo = stockMinimo;
    }

    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    public String getEstadoRegistro() {
        return estadoRegistro;
    }

    public void setEstadoRegistro(String estadoRegistro) {
        this.estadoRegistro = estadoRegistro;
    }

  
    
    
}
