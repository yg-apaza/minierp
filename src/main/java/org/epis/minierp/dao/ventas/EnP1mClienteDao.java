package org.epis.minierp.dao.ventas;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.epis.minierp.model.EnP1mCarteraClientes;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1tPreventaDet;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mClienteDao {

    private Session session;

    public EnP1mClienteDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mCliente> getAll() {
        Query query = session.createQuery("from EnP1mCliente");
        List<EnP1mCliente> estados = query.list();
        return estados;
    }

    public List<EnP1mCliente> getAllActive() {
        Query query = session.createQuery("from EnP1mCliente E where E.estRegCod = 'A'");
        List<EnP1mCliente> estados = query.list();
        return estados;
    }
    
    public List<EnP1mCliente> getAllInactives() {
        Query query = session.createQuery("from EnP1mCliente E where E.estRegCod = 'I'");
        List<EnP1mCliente> estados = query.list();
        return estados;
    }
    
    public EnP1mCliente getById(String id) {
        EnP1mCliente estado;
        try {
            estado = (EnP1mCliente) session.get(EnP1mCliente.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public EnP1mCliente getByCodigoTipoCliente(int id, String cliCod) {
        Query query = session.createQuery("from EnP1mCliente C where C.cliCod = :code and C.taGzzTipoCliente.tipCliCod = :id and C.estRegCod = 'A'");
        query.setParameter("id", id);
        query.setParameter("code", cliCod);
        List <EnP1mCliente> clientes = query.list();
        if(clientes.size() == 0)
            return null;
        return clientes.get(0);
    }
    
    public List<EnP1mCliente> getByTipoCliente(int id) {
        Query query = session.createQuery("from EnP1mCliente C where C.taGzzTipoCliente.tipCliCod = :id and C.estRegCod = 'A'");
        query.setParameter("id", id);
        List <EnP1mCliente> clientes = query.list();
        return clientes;
    }
    
    public EnP1mCliente getByRazonSocial(String razSoc) {
        Query query = session.createQuery("from EnP1mCliente C where C.cliRazSoc = :id and C.estRegCod = 'A'");
        query.setParameter("id", razSoc);
        List <EnP1mCliente> clientes = query.list();
        if(clientes.size() == 0)
            return null;
        return clientes.get(0);
    }
    
    public EnP1mCliente getByNombreComercial(String nomCom) {
        Query query = session.createQuery("from EnP1mCliente C where C.cliNomCom = :id and C.estRegCod = 'A'");
        query.setParameter("id", nomCom);
        List <EnP1mCliente> clientes = query.list();
        if(clientes.size() == 0)
            return null;
        return clientes.get(0);
    }
    
    public List<EnP1mCliente> getByTipoCliente_UsuCod(int tipCliCod, String usuCod){       
        Query query = session.createQuery("from EnP1mCarteraClientes U "
                + "where U.id.usuCod = :usucod and U.usuCliEstReg = 'A' and "
                + "U.enP1mCliente.taGzzTipoCliente.tipCliCod = :tipclicod");
        query.setParameter("usucod", usuCod);
        query.setParameter("tipclicod", tipCliCod);
        
        List<EnP1mCarteraClientes> cartera = query.list();
        List<EnP1mCliente> clientes = new ArrayList<>();
        for (EnP1mCarteraClientes iter : cartera) {
            clientes.add(iter.getEnP1mCliente());
        }
        return clientes;
    }
    
    public EnP1mCliente getByTipoCliente_CliCod_UsuCod(int tipCliCod, String usuCod, String cliCod){       
        Query query = session.createQuery("from EnP1mCarteraClientes U "
                + "where U.id.usuCod = :usucod and U.usuCliEstReg = 'A' and "
                + "U.enP1mCliente.taGzzTipoCliente.tipCliCod = :tipclicod and "
                + "U.enP1mCliente.cliCod = :clicod");
        query.setParameter("usucod", usuCod);
        query.setParameter("tipclicod", tipCliCod);
        query.setParameter("clicod", cliCod);
        
        List<EnP1mCarteraClientes> cartera = query.list();
        List<EnP1mCliente> clientes = new ArrayList<>();
        for (EnP1mCarteraClientes iter : cartera) {
            clientes.add(iter.getEnP1mCliente());
        }
        if(clientes.size() == 0)
            return null;
        return clientes.get(0);
    }
    
    public EnP1mCliente getByRazonSocial_UsuCod(String cliRazSoc, String usuCod){       
        Query query = session.createQuery("from EnP1mCarteraClientes U "
                + "where U.id.usuCod = :usucod and U.usuCliEstReg = 'A' and "
                + "U.enP1mCliente.cliRazSoc = :clirazsoc");
        query.setParameter("usucod", usuCod);
        query.setParameter("clirazsoc", cliRazSoc);
        
        List<EnP1mCarteraClientes> cartera = query.list();
        List<EnP1mCliente> clientes = new ArrayList<>();
        for (EnP1mCarteraClientes iter : cartera) {
            clientes.add(iter.getEnP1mCliente());
        }
        if(clientes.size() == 0)
            return null;
        return clientes.get(0);
    }
    
    public EnP1mCliente getByNombreComercial_UsuCod(String cliNomCom, String usuCod){       
        Query query = session.createQuery("from EnP1mCarteraClientes U "
                + "where U.id.usuCod = :usucod and U.usuCliEstReg = 'A' and "
                + "U.enP1mCliente.cliNomCom = :clinomcom");
        query.setParameter("usucod", usuCod);
        query.setParameter("clinomcom", cliNomCom);
        
        List<EnP1mCarteraClientes> cartera = query.list();
        List<EnP1mCliente> clientes = new ArrayList<>();
        for (EnP1mCarteraClientes iter : cartera) {
            clientes.add(iter.getEnP1mCliente());
        }
        if(clientes.size() == 0)
            return null;
        return clientes.get(0);
    }

    public int getNextCliCod(){//Maximo codigo de CLiente + 1
        Query query = session.createQuery("from EnP1mCliente");
        List<EnP1mCliente> estados = query.list();
        try {
            Set<Integer> lista = new HashSet<>();
            String temp;
            for(int i=0; i<estados.size(); i++){
                temp = estados.get(i).getCliCod();
                lista.add(Integer.parseInt(temp));
            }
            return Collections.max(lista)+1;
        } catch (Exception e) {
            return 1;
        }
    }
    
    public void save(EnP1mCliente cliente) {
        session.save(cliente);     
    }
    
    public void update(EnP1mCliente cliente){
        session.update(cliente);
    }
    
    public void saveOrUpdate(EnP1mCliente cliente){
        session.saveOrUpdate(cliente);
    }
    
    public void delete(EnP1mCliente cliente){
        session.delete(cliente);
    }
    
}
