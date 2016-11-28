package org.epis.minierp.business.contabilidad;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.dao.contabilidad.LibroDiarioViewDao;
import org.epis.minierp.model.contabilidad.HojaTrabajo;
import org.epis.minierp.model.contabilidad.LibroDiarioView;

public class HojaTrabajoBusiness {
    Map<String, String> cuentas = new TreeMap<>(); /*Map<CueNum, CueDes> de cuentas sin repertir*/
    List<HojaTrabajo> hojasTList = new ArrayList<>();
    Map<Integer, Integer> indicesAjuste = new TreeMap<>(); 
    /* indice 0 -> indice61         indice 1 -> indice69
       indice 2 -> indice79         indice 3 - n -> indice9*/
    
    public Map<String, String> cuentas(){
        List<LibroDiarioView> libros = new LibroDiarioViewDao().getAll();
        String tempCuenta = null;
        for(LibroDiarioView l : libros) {
            tempCuenta = l.getCueNum().substring(0, 2);
            cuentas.put(tempCuenta, new CuentaDao().getByNumActive(tempCuenta).getCueDes());
        }
        return cuentas;
    }
    
    public List<HojaTrabajo> rellenarHoja(){
        int indice = 0;
        int temp90 = 3;
        
        for (Entry<String, String> cuenta : cuentas().entrySet()){
            HojaTrabajo hojaTInd = new HojaTrabajo();
            hojaTInd.setCueNum(cuenta.getKey());       // CueNum
            hojaTInd.setCueDes(cuenta.getValue());      // CueDes
            
            int cuentaNumero = Integer.parseInt(cuenta.getKey());
            
            Map<String, Double> sumasCuenta = new LibroMayorBusiness().getTotal(cuenta.getKey());
            double valorDebe = sumasCuenta.get("debe"), valorHaber = sumasCuenta.get("haber");
            
            hojaTInd.setMayorDebe(valorDebe);          // MayorDebe
            hojaTInd.setMayorHaber(valorHaber);         // MayorHaber
            
            if(valorDebe > valorHaber){                 // FlagMayor & MayorSaldo
                hojaTInd.setFlagMayor(true);
                hojaTInd.setMayorSaldo(valorDebe - valorHaber);
            }
            else{
                hojaTInd.setFlagMayor(false);
                hojaTInd.setMayorSaldo(valorHaber - valorDebe);
            }
            
            if(cuentaNumero < 60){     // FlagBalance & BalanceMonto
                hojaTInd.setFlagBalance(hojaTInd.isFlagMayor());
                hojaTInd.setBalanceMonto(hojaTInd.getMayorSaldo());
            }
            /*else{
                hojaTInd.setFlagBalance(hojaTInd.isFlagMayor());
                hojaTInd.setBalanceMonto(-1);
            }*/
            
            if(cuentaNumero >= 69 && cuentaNumero != 79){ // FlagFuncion & FuncionMonto
                hojaTInd.setFlagFuncion(hojaTInd.isFlagMayor());
                hojaTInd.setFuncionMonto(hojaTInd.getMayorSaldo());
            }
            /*else{
                hojaTInd.setFlagFuncion(hojaTInd.isFlagMayor());
                hojaTInd.setFuncionMonto(-1);
            }*/
            
            if((cuentaNumero > 59) && (cuentaNumero < 79) && (cuentaNumero != 69)){ // FlagNaturaleza & NaturalezaMonto
                System.out.println("Entre a naturaleza");
                hojaTInd.setFlagNaturaleza(hojaTInd.isFlagMayor());
                hojaTInd.setNaturalezaMonto(hojaTInd.getMayorSaldo());
            }
            /*else{
                hojaTInd.setFlagNaturaleza(hojaTInd.isFlagMayor());
                hojaTInd.setNaturalezaMonto(-1);
            }*/
            
            if(cuentaNumero == 61) indicesAjuste.put(0, indice);
            if(cuentaNumero == 69) indicesAjuste.put(1, indice);
            if(cuentaNumero == 79) indicesAjuste.put(2, indice);
            if(cuentaNumero >= 90) { indicesAjuste.put(temp90, indice);temp90++;}
            
            indice++;
            
            hojasTList.add(hojaTInd);
        }
        return hojasTList;
    }
    
    public List<HojaTrabajo> rellenarHojaAjustes(){
        rellenarHoja();
        if(!indicesAjuste.isEmpty()){
            if(indicesAjuste.containsKey(0) && indicesAjuste.containsKey(1)){
                boolean flag = hojasTList.get(indicesAjuste.get(1)).isFlagMayor(); // Flag 69
                boolean flag61 = hojasTList.get(indicesAjuste.get(0)).isFlagMayor(); // Flag 61
                double montoSaldo61 = hojasTList.get(indicesAjuste.get(0)).getMayorSaldo();
                hojasTList.get(indicesAjuste.get(0)).setFlagAjustes(flag); // Cta 61
                hojasTList.get(indicesAjuste.get(0)).setAjustesMonto(hojasTList.get(indicesAjuste.get(1)).getMayorSaldo());
                hojasTList.get(indicesAjuste.get(1)).setFlagAjustes(!flag); // Cta 69
                hojasTList.get(indicesAjuste.get(1)).setAjustesMonto(hojasTList.get(indicesAjuste.get(1)).getMayorSaldo());
                double montoAjuste61 = hojasTList.get(indicesAjuste.get(0)).getAjustesMonto();
                if( montoSaldo61 > montoAjuste61){
                    hojasTList.get(indicesAjuste.get(0)).setFlagNaturaleza(flag61);
                    hojasTList.get(indicesAjuste.get(0)).setNaturalezaMonto(montoSaldo61 - montoAjuste61);
                }
                else{
                    hojasTList.get(indicesAjuste.get(0)).setFlagNaturaleza(flag);
                    hojasTList.get(indicesAjuste.get(0)).setNaturalezaMonto(montoAjuste61 - montoSaldo61);
                }
            }
            if(indicesAjuste.containsKey(2) && indicesAjuste.containsKey(3)){ // Basta que haya una clave 3, significa que si hay 9
                boolean flag = hojasTList.get(indicesAjuste.get(2)).isFlagMayor(); // Flag 79
                hojasTList.get(indicesAjuste.get(2)).setFlagAjustes(!flag); // Cta 61
                hojasTList.get(indicesAjuste.get(2)).setAjustesMonto(hojasTList.get(indicesAjuste.get(2)).getMayorSaldo());
                for(int i = 3; i < indicesAjuste.size(); i++){
                    boolean flag9 = hojasTList.get(indicesAjuste.get(i)).isFlagMayor(); // Flag 9*
                    hojasTList.get(indicesAjuste.get(i)).setFlagAjustes(!flag9); // Cta 9*
                    hojasTList.get(indicesAjuste.get(i)).setAjustesMonto(hojasTList.get(indicesAjuste.get(i)).getMayorSaldo());
                }
            }
        }
        return hojasTList;
    }
    
    public List<Double> totales(){
        List<Double> totales = new ArrayList<>();
        Iterator hojas = hojasTList.iterator();
        double totalMayorDebe = 0.0, totalMayorHaber = 0.0;
        double totalSaldoDebe = 0.0, totalSaldoHaber = 0.0;
        double totalAjustesDebe = 0.0, totalAjustesHaber = 0.0;
        double totalBalanceActivo = 0.0, totalBalancePasivo = 0.0;
        double totalNaturalezaPierde = 0.0, totalNaturalezaGana = 0.0;
        double totalFuncionDebe = 0.0, totalFuncionHaber = 0.0;

        while(hojas.hasNext()){
            HojaTrabajo hojaInd = (HojaTrabajo) hojas.next();
            totalMayorDebe += hojaInd.getMayorDebe();
            totalMayorHaber += hojaInd.getMayorHaber();
            if(hojaInd.isFlagMayor()) totalSaldoDebe += hojaInd.getMayorSaldo();
            else totalSaldoHaber += hojaInd.getMayorSaldo();
            if(hojaInd.isFlagAjustes()) totalAjustesDebe += hojaInd.getAjustesMonto();
            else totalAjustesHaber += hojaInd.getAjustesMonto();
            if(hojaInd.isFlagBalance()) totalBalanceActivo += hojaInd.getBalanceMonto();
            else totalBalancePasivo += hojaInd.getBalanceMonto();
            if(hojaInd.isFlagNaturaleza()) totalNaturalezaPierde += hojaInd.getNaturalezaMonto();
            else totalNaturalezaGana += hojaInd.getNaturalezaMonto();
            if(hojaInd.isFlagFuncion()) totalFuncionDebe += hojaInd.getFuncionMonto();
            else totalFuncionHaber += hojaInd.getFuncionMonto();
        }
        totales.add(totalMayorDebe);
        totales.add(totalMayorHaber);
        totales.add(totalSaldoDebe);
        totales.add(totalSaldoHaber);
        totales.add(totalAjustesDebe);
        totales.add(totalAjustesHaber);
        totales.add(totalBalanceActivo);
        totales.add(totalBalancePasivo);
        totales.add(totalNaturalezaPierde);
        totales.add(totalNaturalezaGana);
        totales.add(totalFuncionDebe);
        totales.add(totalFuncionHaber);
        
        return totales;
    }
    
}
