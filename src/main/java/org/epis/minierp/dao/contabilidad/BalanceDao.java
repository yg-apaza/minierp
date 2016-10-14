package org.epis.minierp.dao.contabilidad;

import org.epis.minierp.view.contabilidad.LibroDiarioView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class BalanceDao {
    private Session session;
    
    public BalanceDao(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<LibroDiarioView> getAll(){
        Query query = session.createQuery("FROM LibroDiario");
        return query.list();
    }
    
    public Map<String, Double> sumaBalance(){
        /*Atributos*/
        String NumeroCuenta = null;
        double monto = 0.0;
        List<LibroDiarioView> libros = getAll();
        Map<String, Double> sumas = new TreeMap<>();
        
        /*Ordenando la lista de libros por el numero de cuenta*/
        Collections.sort(libros, new Comparator<LibroDiarioView>(){

            @Override
            public int compare(LibroDiarioView o1, LibroDiarioView o2) {
                return new Integer(o1.getCueNum().substring(0,1)).compareTo(new Integer(o2.getCueNum().substring(0,1)));
            }
            
        });
        
        LibroDiarioView libro = new LibroDiarioView();
        for(int i = 0; i < libros.size(); i++)
        {
            libro = libros.get(i);
            if(libro.getCueNum().length() > 1)
                NumeroCuenta = libro.getCueNum().substring(0, 2);
            else
                NumeroCuenta = libro.getCueNum().substring(0, 1); 
            monto = libro.getAsiDetMon();
            if(comprobarActPas(NumeroCuenta)){
                if(libro.isAsiDetDebHab()){ //Debe = 1, Haber = 0
                    if(sumas.containsKey(NumeroCuenta)) sumas.put(NumeroCuenta, sumas.get(NumeroCuenta) + monto);
                    else sumas.put(NumeroCuenta, monto);
                }
                else{ //Debe = 0, Haber = 1
                    if(sumas.containsKey(NumeroCuenta)) sumas.put(NumeroCuenta, sumas.get(NumeroCuenta) - monto);
                    else sumas.put(NumeroCuenta, monto);
                }
            }
            else{
                if(libro.isAsiDetDebHab()){ //Debe = 1, Haber = 0
                    if(sumas.containsKey(NumeroCuenta)) sumas.put(NumeroCuenta, sumas.get(NumeroCuenta) - monto);
                    else sumas.put(NumeroCuenta, monto);
                }
                else{ //Debe = 0, Haber = 1
                    if(sumas.containsKey(NumeroCuenta)) sumas.put(NumeroCuenta, sumas.get(NumeroCuenta) + monto);
                    else sumas.put(NumeroCuenta, monto);
                }
            }
        }
        return sumas;
    }
    
    public String getCueDesNivel(String id, Integer niv){ // Solo nivel 2
        Query query = session.createQuery("SELECT C.cueDes FROM EnP3mCuenta C where C.cueNum = :id and C.cueNiv = :niv");
        query.setParameter("id", id);
        query.setParameter("niv", niv);
        List<String> cueDesNiv = query.list();
        
        return cueDesNiv.get(0);
    }
    
    public List<List<List>> balanceGeneralFormat(){
        List<List<List>> bg = new ArrayList<>();
        List<List> Act = new ArrayList<>();
        List<List> Pas = new ArrayList<>();
        List<List> Res = new ArrayList<>();
        List Temp = new ArrayList();
        double sumaBalanceAct = 0.0;
        double sumaBalancePas = 0.0;
        Map<String, Double> sumas = this.sumaBalance();
        Iterator<String> it = sumas.keySet().iterator();
        /*Descripcion - Monto*/
        while(it.hasNext()){
            List nuevo = new ArrayList();
            String key = it.next();
            if(comprobarActPas(key)){   // Activo
                if(key.length() > 1) nuevo.add(getCueDesNivel(key, 2));
                else nuevo.add(getCueDesNivel(key, 1));
                nuevo.add(sumas.get(key));
                sumaBalanceAct += sumas.get(key);
                Act.add(nuevo);
            }
            else { // Pasivo
                if(key.length() > 1) nuevo.add(getCueDesNivel(key, 2));
                else nuevo.add(getCueDesNivel(key, 1));
                nuevo.add(sumas.get(key));
                sumaBalancePas += sumas.get(key);
                Pas.add(nuevo);
            }
        }
        Temp.add(sumaBalanceAct);
        Temp.add(sumaBalancePas);
        Res.add(Temp);
        bg.add(0, Act);
        bg.add(1, Pas);
        bg.add(2, Res);
        return bg;
    }
    
    public boolean comprobarActPas(String key){
        boolean flag = true;
        switch(key.charAt(0)){
            /*Activos*/
            case '1': case '2': case '3': case '6': case '9':
                flag = true;
                break;
            /*Pasivos*/
            case '4': case '5': case '7': case '8': case '0':
                flag = false;
                break;
        }
        return flag;
    }
}
