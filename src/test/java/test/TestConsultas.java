/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.util.Iterator;
import java.util.List;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.SessionFactory;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.epis.minierp.dao.logistica.*;
import org.epis.minierp.model.EnP2mProducto;

/**
 *
 * @author Christian
 */
public class TestConsultas {
    SessionFactory sf = HibernateUtil.getSessionFactory();
    public TestConsultas() {
        //hiberante
        sf.getCurrentSession().beginTransaction();
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    @Test
    public void consultasProductos() {
        EnP2mProductoDao productoDao = new EnP2mProductoDao();
        List<EnP2mProducto> productos = productoDao.getAll();
        System.out.println("------------------Todos los Productos----------------------------");
        System.out.println("Size Productos: "+productos.size());
        for (Iterator<EnP2mProducto> iter = productos.iterator(); iter.hasNext();) {
            EnP2mProducto next = iter.next();
            System.out.println(next.toString()); 
        }
        System.out.println("------------------Productos por Clase---------------");
        List<EnP2mProducto> productosClase = productoDao.get4Clase("01");
        System.out.println("Size Productos Clase: "+productosClase.size());
        for (Iterator<EnP2mProducto> iter = productosClase.iterator(); iter.hasNext();) {
            EnP2mProducto next = iter.next();
            System.out.println(next.toString()); 
        }
        System.out.println("------------------Productos por clase y subclase----------------------------");
        List<EnP2mProducto> productosSbClase = productoDao.get4ClaseAndSubClase("01", "02");
        System.out.println("Size Productos Clase y subClase: "+productosSbClase.size());
        for (Iterator<EnP2mProducto> iter = productosSbClase.iterator(); iter.hasNext();) {
            EnP2mProducto next = iter.next();
            System.out.println(next.toString()); 
        }
        
        System.out.println("------------------Productos por codigo----------------------------");
        List<EnP2mProducto> productosCodigo = productoDao.get4Code("77512");
        System.out.println("Size Productos Codigo: "+productosCodigo.size());
        for (Iterator<EnP2mProducto> iter = productosCodigo.iterator(); iter.hasNext();) {
            EnP2mProducto next = iter.next();
            System.out.println(next.toString()); 
        }
        
        //hibernate
        sf.getCurrentSession().getTransaction().commit();
    }
    
    
}
