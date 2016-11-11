
package org.epis.minierp.business.logistica;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.logistica.EnP2mInventarioCabDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP2mAlmacen;
import org.epis.minierp.model.EnP2mInventarioCab;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.EnP2mSubclaseProductoId;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzUnidadMed;


public class EnP2mProductoBusiness {

    EnP2mProductoDao proDao; 
    EnP2mInventarioCabDao invDao;
    
    
    public EnP2mProductoBusiness() {
        proDao = new EnP2mProductoDao();
        
    }
    
    public void create(String claProCod, String subClaProCod, String proCod, 
            String proCodBar, String almCod, String proDet, int uniMedCod, 
            double proPreUniCom, double proPreUniMar, double proPreUniFle, 
            int monCod, double proStk, double volUniAlm, double proStkMin, 
            double proStkMax, String proObs, double proPesNet, char estRegCod){
        
        EnP2mProductoId id = new EnP2mProductoId(proCod, subClaProCod, claProCod);
        
        EnP2mSubclaseProducto enP2mSubclaseProducto = new EnP2mSubclaseProducto();
        enP2mSubclaseProducto.setId(new EnP2mSubclaseProductoId(subClaProCod, claProCod));
        
        EnP2mAlmacen enP2mAlmacen = new EnP2mAlmacen();
        enP2mAlmacen.setAlmCod(almCod);
        
        TaGzzMoneda taGzzMoneda = new TaGzzMoneda();
        taGzzMoneda.setMonCod(monCod);
        
        TaGzzUnidadMed taGzzUnidadMed = new TaGzzUnidadMed();
        taGzzUnidadMed.setUniMedCod(uniMedCod);
        
        //rellenar producto
        EnP2mProducto producto = new EnP2mProducto();
        producto.setId(id);
        producto.setEnP2mSubclaseProducto(enP2mSubclaseProducto);
        producto.setEnP2mAlmacen(enP2mAlmacen);
        producto.setTaGzzMoneda(taGzzMoneda);
        producto.setTaGzzUnidadMed(taGzzUnidadMed);
        producto.setProCodBar(proCodBar);
        producto.setProDet(proDet);
        producto.setProPreUniCom(proPreUniCom);
        producto.setProPreUniMar(proPreUniMar);
        producto.setProPreUniFle(proPreUniFle);
        producto.setProPreUniVen(proPreUniCom+proPreUniMar+proPreUniFle);
        producto.setProStk(proStk);
        producto.setProStkRea(proStk); //Real = a stock al crear el item
        producto.setProStkPreVen(0); //nada prevendido
        producto.setVolUniAlm(volUniAlm);
        producto.setProStkMin(proStkMin);
        producto.setProStkMax(proStkMax);
        producto.setProObs(proObs);
        producto.setProPesNet(proPesNet);
        producto.setEstRegCod(estRegCod);
        
        proDao.save(producto);
        
        
    }
    
    /**
     * Por este medio no se modifica stocks 
     * @param claProCod
     * @param subClaProCod
     * @param proCod
     * @param proCodBar
     * @param almCod
     * @param proDet
     * @param uniMedCod
     * @param proPreUniCom
     * @param proPreUniMar
     * @param proPreUniFle
     * @param monCod
     * @param volUniAlm
     * @param proStkMin
     * @param proStkMax
     * @param proObs
     * @param proPesNet
     */
    public void update(String claProCod, String subClaProCod, String proCod, 
            String proCodBar, String almCod, String proDet, int uniMedCod, 
            double proPreUniCom, double proPreUniMar, double proPreUniFle, 
            int monCod, double volUniAlm, double proStkMin, double proStkMax, 
            String proObs, double proPesNet){
        
        EnP2mProductoId id = new EnP2mProductoId(proCod, subClaProCod, claProCod);
        
        EnP2mAlmacen enP2mAlmacen = new EnP2mAlmacen();
        enP2mAlmacen.setAlmCod(almCod);
        
        TaGzzMoneda taGzzMoneda = new TaGzzMoneda();
        taGzzMoneda.setMonCod(monCod);
        
        TaGzzUnidadMed taGzzUnidadMed = new TaGzzUnidadMed();
        taGzzUnidadMed.setUniMedCod(uniMedCod);
        
        //rellenar producto
        EnP2mProducto producto = proDao.getById(id);
        producto.setEnP2mAlmacen(enP2mAlmacen);
        producto.setTaGzzMoneda(taGzzMoneda);
        producto.setTaGzzUnidadMed(taGzzUnidadMed);
        producto.setProCodBar(proCodBar);
        producto.setProDet(proDet);
        producto.setProPreUniCom(proPreUniCom);
        producto.setProPreUniMar(proPreUniMar);
        producto.setProPreUniFle(proPreUniFle);
        producto.setProPreUniVen(proPreUniCom+proPreUniMar+proPreUniFle);
        producto.setVolUniAlm(volUniAlm);
        producto.setProStkMin(proStkMin);
        producto.setProStkMax(proStkMax);
        producto.setProObs(proObs);
        producto.setProPesNet(proPesNet);
        proDao.update(producto);
    }
    
    /**
     * No asepta numeros negativos en la cantidad de items
     * @param claProCod
     * @param subClaProCod
     * @param proCod
     * @param numItems 
     */
    public void addItems2Stk(String claProCod, String subClaProCod, String proCod, double numItems){
        if(numItems > 0){
            EnP2mProducto producto = proDao.getById(new EnP2mProductoId(proCod, subClaProCod, claProCod));
            double myStk = producto.getProStk();
            producto.setProStk(myStk + numItems);
            producto.setProStkRea(myStk + numItems);
            proDao.update(producto);
        }
        
    }
    
    /**
     * No realiza la operacion si el valor de los items es negativo o no hay 
     * suficiente stock para satisfacer la demanda
     * @param claProCod
     * @param subClaProCod
     * @param proCod
     * @param numItems 
     */
    public void removeItems2Stk(String claProCod, String subClaProCod, String proCod, double numItems){
        if(numItems > 0){
            EnP2mProducto producto = proDao.getById(new EnP2mProductoId(proCod, subClaProCod, claProCod));
            double myStk = producto.getProStk();
            if(myStk >= numItems){
                producto.setProStk(myStk - numItems);
                producto.setProStkRea(myStk - numItems);
                proDao.update(producto);
            }
        }
    }
    
    /**
     * No asepta numeros negativos en la cantidad de items, ni tampoco cantidades q superen el stock
     * @param claProCod
     * @param subClaProCod
     * @param proCod
     * @param numItems 
     */
    public void addItems2PreVen(String claProCod, String subClaProCod, String proCod, double numItems){
        if(numItems > 0){
            EnP2mProducto producto = proDao.getById(new EnP2mProductoId(proCod, subClaProCod, claProCod));
            double myStk = producto.getProStk();
            double myPreVen = producto.getProStkPreVen();
            if(myStk >= myPreVen + numItems){
                producto.setProStkPreVen(myPreVen + numItems);
                proDao.update(producto);
            }   
        }
    }
    
    /**
     * No realiza la operacion si el valor de los items es negativo o no hay 
     * suficiente stock en preventa para satisfacer la demanda
     * No Modifica el stock normal ProStk
     * @param claProCod
     * @param subClaProCod
     * @param proCod
     * @param numItems 
     */
    public void removeItems2PreVen(String claProCod, String subClaProCod, String proCod, double numItems){
        if(numItems > 0){
            EnP2mProducto producto = proDao.getById(new EnP2mProductoId(proCod, subClaProCod, claProCod));
            double myPreVen = producto.getProStkPreVen();
            if(myPreVen >= numItems){
                producto.setProStkPreVen(myPreVen - numItems);
                proDao.update(producto);
            }   
        }
    }   
    
    /**
     * Funcion que quita stock tanto al stock normal como al stock de preventa
     * Utilizar cuando un stock de preventa se transforma en venta formal
     * @param claProCod
     * @param subClaProCod
     * @param proCod
     * @param numItems 
     */
    public void removeItems2PreVen_Ven(String claProCod, String subClaProCod, String proCod, double numItems){
        if(numItems > 0){
            EnP2mProducto producto = proDao.getById(new EnP2mProductoId(proCod, subClaProCod, claProCod));
            double myStk = producto.getProStk();
            double myPreVen = producto.getProStkPreVen();
            if(myPreVen >= numItems){
                producto.setProStkPreVen(myPreVen - numItems);
                producto.setProStk(myStk - numItems);
                proDao.update(producto);
            }   
        }
    }  
    
    private void setEstRegCod(String claProCod, String subClaProCod, String proCod, char estRegCod){
        EnP2mProducto producto = proDao.getById(new EnP2mProductoId(proCod, subClaProCod, claProCod));
        producto.setEstRegCod(estRegCod);
        proDao.update(producto);
    }
    
    public void activate(String claProCod, String subClaProCod, String proCod){
        setEstRegCod(claProCod, subClaProCod, proCod,'A');
    }
    
    public void disable(String claProCod, String subClaProCod, String proCod){
        setEstRegCod(claProCod, subClaProCod, proCod,'I');
    }
    
    public void delete(String claProCod, String subClaProCod, String proCod){
        setEstRegCod(claProCod, subClaProCod, proCod,'*');
    }
    
    public void cantidad2Stock(String proCod, String proCan){
        EnP2mProducto producto = proDao.getById(proCod);
        producto.setProStk(Double.parseDouble(proCan));
        
     //   producto.setProObs("-"+obs.substring(0,obs.length()-4)+"-");
        proDao.save(producto);
    }
    
    public void CabeceraInventario() throws ParseException
    {
        //EnP1mUsuarioDao usuDao = new EnP1mUsuarioDao();
        //EnP1mUsuario usuario = usuDao.getById("4");
        
        DateFormat formatoDelTexto = new SimpleDateFormat("yyyy-MM-dd");
        Date fecha = formatoDelTexto.parse("2016-11-10");
        EnP2mInventarioCab invent = new EnP2mInventarioCab();
        invent.setInvCabCod("1002");
        invent.setEnP1mUsuario((new EnP1mUsuarioDao()).getById("1"));
        invent.setInvCabFec(fecha);
        invent.setInvCabEst(true);
        invent.setEstRegCod('A');
        invDao.save(invent);
    }
    
    @SuppressWarnings("empty-statement")
    public void actualizarInventario(String[] proCod, String[] proCan, List<EnP2mProducto> productos) throws ParseException{
        //Creando Inventario Cab
         CabeceraInventario();
        
        int size = proCod.length;
        for (int i = 0; i < size; i++) {
            if(proCan[i].equals("0"))
                continue;
            if(proCan[i].substring(proCan[i].length()-1).equals(">"))
                proCan[i] = proCan[i].substring(0,proCan[i].length()-4);
            cantidad2Stock(proCod[i], proCan[i]);
        }
    }
    
}
