package test.ventas;

import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.TaGzzEstadoCivil;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.SessionFactory;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;


public class TestCliente {
    EnP1mCliente clienteStd;
    EnP1mClienteDao clienteStdDao;
    
    SessionFactory sf = HibernateUtil.getSessionFactory();
    
    public TestCliente() {
        //hiberante
        sf.getCurrentSession().beginTransaction();
        
        TaGzzEstadoCivil soltero = new TaGzzEstadoCivil();
        soltero.setEstCivCod(01);
        soltero.setEstCivDet("Soltero");
        soltero.setEstRegCod('A');
        
        clienteStd = new EnP1mCliente();
        clienteStd.setCliCod("79343510");
        clienteStd.setCliNom("Ernesto");
        clienteStd.setCliApePat("Cuadros");
        clienteStd.setCliApeMat("Vargas");
        clienteStd.setCliSex('M');
        clienteStd.setCliDir("Yanahuara 103");
        clienteStd.setCliTelFij("124578");
        clienteStd.setCliTelCel("959145222");
        clienteStd.setCliEmail("Ernesto@gmail.com");
        clienteStd.setEstRegCod('A');
        clienteStd.setTaGzzEstadoCivil(soltero);
        
        clienteStdDao = new EnP1mClienteDao();
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
    public void save() {
        clienteStdDao.save(clienteStd);
        //hibernate
        sf.getCurrentSession().getTransaction().commit();
    }
}
