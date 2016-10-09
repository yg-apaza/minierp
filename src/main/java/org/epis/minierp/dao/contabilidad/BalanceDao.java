package org.epis.minierp.dao.contabilidad;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class BalanceDao {
    private Session session;
    
    public BalanceDao(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<LibroDiario> getAll(){
        Query query = session.createQuery("FROM LibroDiario");
        /*Atributos*/
        int NumeroCuenta = 0;
        List<LibroDiario> libros = query.list();
        double[] sumas = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
        
        /*Ordenando la lista de libros por el numero de cuenta*/
        Collections.sort(libros, new Comparator<LibroDiario>(){

            @Override
            public int compare(LibroDiario o1, LibroDiario o2) {
                return new Integer(o1.getCueNum().substring(0,1)).compareTo(new Integer(o2.getCueNum().substring(0,1)));
            }
            
        });
        LibroDiario libro = new LibroDiario();
        for(int i = 0; i < libros.size(); i++)
        {
            libro = libros.get(i);
            NumeroCuenta = new Integer(libro.getCueNum().substring(0, 1));
            switch(NumeroCuenta){
                /*Debe(+) Haber(-)*/
                case 1:
                case 2:
                case 3:
                case 6:
                case 9:
                    if(libro.isAsiDetDebHab()) //Debe = 1, Haber = 0
                        sumas[NumeroCuenta] += libro.getAsiDetMon();
                    else
                        sumas[NumeroCuenta] -= libro.getAsiDetMon();
                    break;
                /*Debe(-) Haber(+)*/
                case 4:
                case 5:
                case 7:
                case 8:
                case 0:
                    if(libro.isAsiDetDebHab()) //Debe = 1, Haber = 0
                        sumas[NumeroCuenta] -= libro.getAsiDetMon();
                    else
                        sumas[NumeroCuenta] += libro.getAsiDetMon();
                    break;
            }
        }
        return libros;
    }
    
    public String getCueDesNivel(String id){
        Query query = session.createQuery("SELECT C.cueDes FROM EnP3mCuenta C where C.cueNum = :id and C.cueNiv = 1");
        String cueDesNiv1 = query.toString();
        return cueDesNiv1;
    }
}
