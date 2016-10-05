package org.epis.minierp.dao.compras;

import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.beanutils.BeanUtils;
import org.epis.minierp.dao.general.UsuarioDao;
import org.epis.minierp.dto.FacturaCompraCabeceraDto;
import org.epis.minierp.model.FacturaCompraCabecera;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class FacturaCompraCabeceraDao {
    private Session session;
    
    public FacturaCompraCabeceraDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public FacturaCompraCabeceraDto getById(String id) {
        EstadoFacturaDao daoEstFac = new EstadoFacturaDao();
        MetodoPagoFacturaDao daoMetPagFac = new MetodoPagoFacturaDao();
        MonedaDao daoMon = new MonedaDao();
        TipoPagoFacturaDao daoTipPagFac = new TipoPagoFacturaDao();
        ProveedorDao daoPro = new ProveedorDao();
        UsuarioDao daoUsu = new UsuarioDao();
        
        FacturaCompraCabecera facturaCompraCabecera = null;
        FacturaCompraCabeceraDto newFacturaCompraCabeceraDto = new FacturaCompraCabeceraDto();
        try {
            facturaCompraCabecera = (FacturaCompraCabecera)session.load(FacturaCompraCabecera.class, id);
            BeanUtils.copyProperties(newFacturaCompraCabeceraDto, facturaCompraCabecera);
            newFacturaCompraCabeceraDto.setProDes(daoPro.getById(facturaCompraCabecera.getProCod()).getProDet());
            newFacturaCompraCabeceraDto.setUsuDes(daoUsu.getById(facturaCompraCabecera.getUsuCod()).getUsuNom());
            newFacturaCompraCabeceraDto.setMetPagDes(daoMetPagFac.getById(facturaCompraCabecera.getMetPagCod()).getMetPagDet());
            newFacturaCompraCabeceraDto.setTipPagDes(daoTipPagFac.getById(facturaCompraCabecera.getTipPagCod()).getTipPagDet());
            newFacturaCompraCabeceraDto.setMonDes(daoMon.getById(facturaCompraCabecera.getMonCod()).getMonDet());
            newFacturaCompraCabeceraDto.setEstFacDes(daoEstFac.getById(facturaCompraCabecera.getEstFacCod()).getEstFacDet());
        } catch(ObjectNotFoundException e) {
            return null;
        } catch (IllegalAccessException | InvocationTargetException ex) {
            Logger.getLogger(FacturaCompraCabeceraDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
        return newFacturaCompraCabeceraDto;
    }
    
    public FacturaCompraCabeceraDto getByIdActive(String id) {
        EstadoFacturaDao daoEstFac = new EstadoFacturaDao();
        MetodoPagoFacturaDao daoMetPagFac = new MetodoPagoFacturaDao();
        MonedaDao daoMon = new MonedaDao();
        TipoPagoFacturaDao daoTipPagFac = new TipoPagoFacturaDao();
        ProveedorDao daoPro = new ProveedorDao();
        UsuarioDao daoUsu = new UsuarioDao();
        
        FacturaCompraCabecera facturaCompraCabecera = null;
        FacturaCompraCabeceraDto newFacturaCompraCabeceraDto = new FacturaCompraCabeceraDto();
        Query query = session.createQuery("from FacturaCompraCabecera U where U.facComCabCod = :id and U.estRegCod = 'A'");
        query.setParameter("id", id);
        query.setMaxResults(1);
        try {
            List <FacturaCompraCabecera> facturasCompraCabecera = query.list();
            facturaCompraCabecera =  facturasCompraCabecera.get(0);
            BeanUtils.copyProperties(newFacturaCompraCabeceraDto, facturaCompraCabecera);
            newFacturaCompraCabeceraDto.setProDes(daoPro.getById(facturaCompraCabecera.getProCod()).getProDet());
            newFacturaCompraCabeceraDto.setUsuDes(daoUsu.getById(facturaCompraCabecera.getUsuCod()).getUsuNom());
            newFacturaCompraCabeceraDto.setMetPagDes(daoMetPagFac.getById(facturaCompraCabecera.getMetPagCod()).getMetPagDet());
            newFacturaCompraCabeceraDto.setTipPagDes(daoTipPagFac.getById(facturaCompraCabecera.getTipPagCod()).getTipPagDet());
            newFacturaCompraCabeceraDto.setMonDes(daoMon.getById(facturaCompraCabecera.getMonCod()).getMonDet());
            newFacturaCompraCabeceraDto.setEstFacDes(daoEstFac.getById(facturaCompraCabecera.getEstFacCod()).getEstFacDet());
        } catch(ObjectNotFoundException e) {
            return null;
        } catch (IllegalAccessException | InvocationTargetException | IndexOutOfBoundsException ex) {
            Logger.getLogger(FacturaCompraCabeceraDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return newFacturaCompraCabeceraDto;
    }
    
    public List <FacturaCompraCabeceraDto> getAll() {
        EstadoFacturaDao daoEstFac = new EstadoFacturaDao();
        MetodoPagoFacturaDao daoMetPagFac = new MetodoPagoFacturaDao();
        MonedaDao daoMon = new MonedaDao();
        TipoPagoFacturaDao daoTipPagFac = new TipoPagoFacturaDao();
        ProveedorDao daoPro = new ProveedorDao();
        UsuarioDao daoUsu = new UsuarioDao();
        
        Query query = session.createQuery("from FacturaCompraCabecera");        
        List <FacturaCompraCabecera> facturaCompraCabecera =  query.list();
        List <FacturaCompraCabeceraDto> newsFacturaCompraCabeceraDto = new ArrayList <FacturaCompraCabeceraDto>();
        
        for(int i = 0; i < facturaCompraCabecera.size(); i++) {
            try {
                FacturaCompraCabeceraDto newFacturaCompraCabeceraDto = new FacturaCompraCabeceraDto();
                BeanUtils.copyProperties(newFacturaCompraCabeceraDto, facturaCompraCabecera.get(i));
                
                newFacturaCompraCabeceraDto.setProDes(daoPro.getById(newFacturaCompraCabeceraDto.getProCod()).getProDet());
                newFacturaCompraCabeceraDto.setUsuDes(daoUsu.getById(newFacturaCompraCabeceraDto.getUsuCod()).getUsuNom());
                newFacturaCompraCabeceraDto.setMetPagDes(daoMetPagFac.getById(newFacturaCompraCabeceraDto.getMetPagCod()).getMetPagDet());
                newFacturaCompraCabeceraDto.setTipPagDes(daoTipPagFac.getById(newFacturaCompraCabeceraDto.getTipPagCod()).getTipPagDet());
                newFacturaCompraCabeceraDto.setMonDes(daoMon.getById(newFacturaCompraCabeceraDto.getMonCod()).getMonDet());
                newFacturaCompraCabeceraDto.setEstFacDes(daoEstFac.getById(newFacturaCompraCabeceraDto.getEstFacCod()).getEstFacDet());
                newsFacturaCompraCabeceraDto.add(newFacturaCompraCabeceraDto);
            } catch (IllegalAccessException | InvocationTargetException ex) {
                return null;
            }
        }
        
        return newsFacturaCompraCabeceraDto;
    }
    
    public void save(FacturaCompraCabecera facturaCompraCabecera) {
        session.save(facturaCompraCabecera);     
    }
}
