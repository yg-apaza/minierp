package org.epis.minierp.business.compras;

import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP2mProducto;

public class EnP2mProductoBusiness {
    EnP2mProductoDao proDao;

    public EnP2mProductoBusiness() {
        proDao = new EnP2mProductoDao();
    }

    public void cantidad2Stock(String proCod, String proCan ){
        EnP2mProducto producto = proDao.getById(proCod);
        producto.setProStk(Double.parseDouble(proCan));
        proDao.save(producto);
    }
    
    public void actualizarInventario(String[] proCod, String[] proCan){
        int size = proCod.length;
        for (int i = 0; i < size; i++) {
            cantidad2Stock(proCod[i], proCan[i]);
        }
    }
    
}
