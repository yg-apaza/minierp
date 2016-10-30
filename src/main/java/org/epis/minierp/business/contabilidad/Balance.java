package org.epis.minierp.business.contabilidad;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.dao.contabilidad.LibroDiarioViewDao;
import org.epis.minierp.model.contabilidad.LibroDiarioView;

public class Balance {
    public Map<String, Double> sumaBalance(){
        /*Atributos*/
        String numCuenta = null;
        double monto = 0.0;
        Iterator libros = new LibroDiarioViewDao().getAll().iterator();
        Map<String, Double> sumasByCuenta = new TreeMap<>(); /* Map<numCuenta, monto> */
        
        while(libros.hasNext())
        {
            LibroDiarioView libro = (LibroDiarioView) libros.next();
            if(comprobarActPas(libro.getCueNum()) != -1){ /* Cuentas Activo o Pasivo */
                if(libro.getCueNum().length() > 1) /* Se obtiene solo hasta el nivel 2 */
                    numCuenta = libro.getCueNum().substring(0, 2);
                monto = libro.getAsiDetMon();
                if(comprobarActPas(numCuenta) == 1){ /* Activo */
                    if(libro.isAsiDetDebHab()){ //Debe = 1, Haber = 0
                        if(sumasByCuenta.containsKey(numCuenta)) sumasByCuenta.put(numCuenta, sumasByCuenta.get(numCuenta) + monto);
                        else sumasByCuenta.put(numCuenta, monto);
                    }
                    else{ //Debe = 0, Haber = 1
                        if(sumasByCuenta.containsKey(numCuenta)) sumasByCuenta.put(numCuenta, sumasByCuenta.get(numCuenta) - monto);
                        else sumasByCuenta.put(numCuenta, monto);
                    }
                }
                else{ /* Pasivo */
                    if(libro.isAsiDetDebHab()){ //Debe = 1, Haber = 0
                        if(sumasByCuenta.containsKey(numCuenta)) sumasByCuenta.put(numCuenta, sumasByCuenta.get(numCuenta) - monto);
                        else sumasByCuenta.put(numCuenta, monto);
                    }
                    else{ //Debe = 0, Haber = 1
                        if(sumasByCuenta.containsKey(numCuenta)) sumasByCuenta.put(numCuenta, sumasByCuenta.get(numCuenta) + monto);
                        else sumasByCuenta.put(numCuenta, monto);
                    }
                }
            }
        }
        Iterator it = sumasByCuenta.keySet().iterator();
        while(it.hasNext()){
            String key = (String) it.next();
            System.out.println("Clave: " + key + " -> Valor: " + sumasByCuenta.get(key));
        }
        return sumasByCuenta;
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
            if(comprobarActPas(key) == 1){   // Activo
                if(key.length() > 1) nuevo.add(new CuentaDao().getByNumActive(key, 2).getCueDes());
                else nuevo.add(new CuentaDao().getByNumActive(key, 1).getCueDes());
                nuevo.add(sumas.get(key));
                sumaBalanceAct += sumas.get(key);
                Act.add(nuevo);
            }
            else if(comprobarActPas(key) == 0){ // Pasivo
                if(key.length() > 1) nuevo.add(new CuentaDao().getByNumActive(key, 2).getCueDes());
                else nuevo.add(new CuentaDao().getByNumActive(key, 1).getCueDes());
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
    public int comprobarActPas(String key){ /* Compara si es activo(1, 2, 3) o pasivo (4), patrimonio(5) */
        int flag;
        switch(key.charAt(0)){ /* Obtiene el primer caracter a comparar */
            /*Activos*/
            case '1': case '2': case '3':
                flag = 1; /* Si es activo: 1 */
                break;
            /*Pasivos y Patrimonios*/
            case '4': case '5':
                flag = 0; /* Si es pasivo o patrimonio: 0 */
                break;
            default:
                flag = -1;
                break;
        }
        return flag;
    }
}
