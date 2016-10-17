/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.business.configuracion;

import org.epis.minierp.dao.general.EnP1mSucursalDao;
import org.epis.minierp.model.EnP1mSucursal;



/**
 *
 * @author User
 */
public class EnP1mSucursalBusiness {
    
    EnP1mSucursalDao sucursal;

    public EnP1mSucursalBusiness() {
        sucursal = new EnP1mSucursalDao();
    }

    public void create(String sucDes, String sucDir) {
        
        EnP1mSucursal s = new EnP1mSucursal();
        s.setSucDes(sucDes);
        s.setSucDir(sucDir);
        s.setEstRegCod('A');
        sucursal.save(s);
    }
    
    public void update(int updateSucCod, String updateSucDes, String updateSucDir) {
         EnP1mSucursal s = new EnP1mSucursal();
         s.setSucCod(updateSucCod);
         s.setSucDes(updateSucDes);
         s.setSucDir(updateSucDir);
         s.setEstRegCod('A');
         sucursal.update(s);
    }

    private void setEstRegCod(int sucCod, char estRegCod){
       //Esto manda a EnP1mSucursalDao el metodo eliminar recibe los parametros y hace un update 
       sucursal.delete(sucCod,estRegCod);
    }
    
    public void activate(int sucCod){
        setEstRegCod(sucCod,'A');
    }
    
    public void disable(int sucCod) {
        setEstRegCod(sucCod,'I');
    }

    public void delete(int sucCod){
        setEstRegCod(sucCod,'*');
    } 
}
