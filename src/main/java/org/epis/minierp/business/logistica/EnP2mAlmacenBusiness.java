/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.business.logistica;

import org.epis.minierp.dao.logistica.EnP2mAlmacenDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP1mSucursal;
import org.epis.minierp.model.EnP2mAlmacen;

/**
 *
 * @author Ylnner
 */
public class EnP2mAlmacenBusiness {
    EnP2mAlmacenDao almacenDao;
    EnP2mProductoDao productoDao;
    
    public EnP2mAlmacenBusiness(){
        almacenDao=new EnP2mAlmacenDao();
        productoDao=new EnP2mProductoDao();        
    }
    public void create(String AlmCod, String AlmDet, int SucCod, 
            double AlmVolTot, String AlmObs, char EstRegCod){

        EnP1mSucursal sucursal=new EnP1mSucursal();
        sucursal.setSucCod(SucCod);
        
        EnP2mAlmacen almacen=new EnP2mAlmacen();
        almacen.setAlmCod(AlmCod);
        almacen.setAlmDet(AlmDet);
        
        almacen.setEnP1mSucursal(sucursal);
        almacen.setAlmVolTot(AlmVolTot);
        almacen.setAlmObs(AlmObs);
        almacen.setEstRegCod(EstRegCod);
        almacenDao.save(almacen);
    }
    public void update(String AlmCod, String AlmDet, int SucCod, 
            double AlmVolTot, String AlmObs, char EstRegCod){
        EnP1mSucursal sucursal=new EnP1mSucursal();
        sucursal.setSucCod(SucCod);
        
        EnP2mAlmacen almacen=almacenDao.getById(AlmCod);
        almacen.setAlmDet(AlmDet);
        
        almacen.setEnP1mSucursal(sucursal);
        almacen.setAlmVolTot(AlmVolTot);
        almacen.setAlmObs(AlmObs);
        almacen.setEstRegCod(EstRegCod);
        almacenDao.update(almacen);
    }
    
     private void setEstRegCod(String AlmCod, char estRegCod){
        EnP2mAlmacen almacen=almacenDao.getById(AlmCod);
        almacen.setEstRegCod(estRegCod);
        almacenDao.update(almacen);
    }
    
    public void activate(String AlmCod){
        setEstRegCod(AlmCod,'A');
    }
    
    public void disable(String AlmCod){
        setEstRegCod(AlmCod,'I');
    }
    
    public void delete(String AlmCod){
        setEstRegCod(AlmCod,'*');
    }
}
