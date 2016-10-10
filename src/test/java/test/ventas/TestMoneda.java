/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test.ventas;

import java.util.List;
import org.apache.commons.codec.digest.DigestUtils;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.SessionFactory;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Christian
 */
public class TestMoneda {
    SessionFactory sf = HibernateUtil.getSessionFactory();
    public TestMoneda() {
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
    public void hello() {
        TaGzzMonedaDao moneda = new TaGzzMonedaDao();
        List<TaGzzMoneda> items = moneda.getAll();
        for (int i = 0; i < items.size(); i++) {
            System.out.println(items.get(i).toString());
        }
        
         //hibernate
        sf.getCurrentSession().getTransaction().commit();
    }
    
    
}
