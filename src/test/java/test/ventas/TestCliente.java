package test.ventas;

import java.util.List;
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
        clienteStd.setCliCod("72343510");
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

    //@Test
    public void save() {
        clienteStdDao.save(clienteStd);
        //hibernate
        sf.getCurrentSession().getTransaction().commit();
    }
    
    @Test
    public void getAll() {
        List temp = clienteStdDao.getAll();
        int j;
        for(int i = 0; i<temp.size(); i++){
            j = i+1;
            System.out.println("Elemento "+j+": "+temp.get(i).toString());
        }
        //hibernate
        sf.getCurrentSession().getTransaction().commit();
    }
    
    @Test
    public void getAllActive(){
        List temp = clienteStdDao.getAllActive();
        int j;
        for(int i = 0; i<temp.size(); i++){
            j = i+1;
            System.out.println("Elemento Activo "+j+": "+temp.get(i).toString());
        }
        //hibernate
        sf.getCurrentSession().getTransaction().commit();
    }
    
    @Test
    public void getById(){
        //verificar que exista el cliente en la bd
        EnP1mCliente cliente = clienteStdDao.getById("72343510");
        System.out.println("Cliente por ID: "+cliente.toString());
 
        //hibernate
        sf.getCurrentSession().getTransaction().commit();
    }
    
    @Test
    public void update(){
        clienteStd.setCliApePat("Virgolio");
        clienteStdDao.update(clienteStd);
        
        //hibernate
        sf.getCurrentSession().getTransaction().commit();
    }
    
    @Test
    public void saveOrUpdate(){
        clienteStd.setCliCod("26154875");
        clienteStd.setCliApePat("PapaNoel");
        clienteStdDao.saveOrUpdate(clienteStd);
        
        //hibernate
        sf.getCurrentSession().getTransaction().commit();
    }
    
    
}
