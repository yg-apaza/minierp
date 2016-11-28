package org.epis.minierp.business.contabilidad;

import com.google.gson.JsonObject;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.dao.contabilidad.LibroDiarioViewDao;
import org.epis.minierp.model.contabilidad.LibroDiarioView;

public class HojaTrabajoBusiness {
    Map<String, String> cuentas = new TreeMap<>(); /*Map<CueNum, CueDes> de cuentas sin repertir*/
    Map<Double, Double> debeHaber = new LinkedHashMap<>(); /*Map<debe, haber> de cuentas*/
    Map<String, Double> saldo = new LinkedHashMap<>();
    Map<String, Map> hojaT = new LinkedHashMap<>();
    JsonObject hojaTrab = new JsonObject();
    
    public Map<String, String> cuentas(){
        List<LibroDiarioView> libros = new LibroDiarioViewDao().getAll();
        String tempCuenta = null;
        for(LibroDiarioView l : libros) {
            tempCuenta = l.getCueNum().substring(0, 2);
            cuentas.put(tempCuenta, new CuentaDao().getByNumActive(tempCuenta).getCueDes());
        }
        return cuentas;
    }
    
    public Map<Double, Double> hoja(){
        cuentas = cuentas();
        for (Entry<String, String> cuenta : cuentas.entrySet()){
            /*hojaTrab.addProperty("cueNum", cuenta.getKey());
            hojaTrab.addProperty("cueDes", cuenta.getValue());*/
            Map<String, Double> sumasCuenta = new LibroMayorBusiness().getTotal(cuenta.getKey());
            double valorDebe = sumasCuenta.get("debe"), valorHaber = sumasCuenta.get("haber");
            debeHaber.put(valorDebe, valorHaber);
            /*hojaTrab.addProperty("debe", valorDebe);
            hojaTrab.addProperty("haber", valorHaber);
            if(valorDebe > valorHaber){
                saldo.put("debe", valorDebe);
                hojaTrab.addProperty("flag", true);
                hojaTrab.addProperty("saldo", valorDebe - valorHaber);
            }
            else{
                saldo.put("haber", valorHaber);
                hojaTrab.addProperty("flag", false);
                hojaTrab.addProperty("saldo", valorHaber - valorDebe);
            }
        }
        hojaT.put("cuenta", cuentas);
        hojaT.put("debeHaber", debeHaber);*/
        }
        return debeHaber;
    }
    
}
