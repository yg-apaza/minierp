package org.epis.minierp.dao.compras;

import java.text.SimpleDateFormat;
import org.apache.commons.beanutils.BeanUtils;
import org.epis.minierp.dto.FacturaCompraCabeceraDto;
import org.epis.minierp.model.FacturaCompraCabecera;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Session;

public class FacturaCompraCabeceraDao {
    private SimpleDateFormat dt = new SimpleDateFormat("yyyy/MM/dd");
    private Session session;
    
    public FacturaCompraCabeceraDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    /*public FacturaCompraCabeceraDto getById(String id) {
        EstadoFacturaDao daoEstFac = new EstadoFacturaDao();
        MetodoPagoFacturaDao daoMetFac = new MetodoPagoFacturaDao();
        MonedaDao daoMon = new MonedaDao();
        ProveedorDao daoPro = new ProveedorDao();
        UsuarioDao daoUsu = new UsuarioDao();
        
        FacturaCompraCabecera facturaCompraCabecera = null;
        FacturaCompraCabeceraDto newFacturaCompraCabeceraDto = new FacturaCompraCabeceraDto();
        try {
            facturaCompraCabecera = (FacturaCompraCabecera)session.load(FacturaCompraCabecera.class, id);
            BeanUtils.copyProperties(newFacturaCompraCabeceraDto, facturaCompraCabecera);
            newFacturaCompraCabeceraDto.setProDes(daoPro.getById(facturaCompraCabecera.getProCod()));
            newFacturaCompraCabeceraDto.setUsuDes();
            newFacturaCompraCabeceraDto.setMetPagDes();
            newFacturaCompraCabeceraDto.setTipPagDes();
            newFacturaCompraCabeceraDto.setTipMonDes();
        } catch {
            
        }
        
        
        TipoUsuarioDao daoTipUsu = new TipoUsuarioDao();
        EstadoCivilDao daoEstCiv = new EstadoCivilDao();
        
        Usuario usuario = null;
        UsuarioDto newUsuario = new UsuarioDto();
        
        try {
            usuario =  (Usuario)session.load(Usuario.class, id);
            BeanUtils.copyProperties(newUsuario, usuario);
            newUsuario.setTipUsuDet(daoTipUsu.getById(usuario.getTipUsuCod()).getTipUsuDet());
            newUsuario.setEstCivDet(daoEstCiv.getById(usuario.getEstCivCod()).getEstCivDet());
        } catch(ObjectNotFoundException e) {
            return null;
        } catch (IllegalAccessException | InvocationTargetException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return newUsuario;
    }
    
    public UsuarioDto getByIdActive(String id)
    {
        TipoUsuarioDao daoTipUsu = new TipoUsuarioDao();
        EstadoCivilDao daoEstCiv = new EstadoCivilDao();
        Usuario usuario = null;
        UsuarioDto newUsuario = new UsuarioDto();
        Query query = session.createQuery("from Usuario U where U.usuCod = :id and U.estRegCod = 'A'");
        query.setParameter("id", id);
        query.setMaxResults(1);
        try {
            List<Usuario> usuarios = query.list();
            usuario =  usuarios.get(0);
            BeanUtils.copyProperties(newUsuario, usuario);
            newUsuario.setTipUsuDet(daoTipUsu.getById(usuario.getTipUsuCod()).getTipUsuDet());
            newUsuario.setEstCivDet(daoEstCiv.getById(usuario.getEstCivCod()).getEstCivDet());
        } catch (IllegalAccessException | InvocationTargetException | IndexOutOfBoundsException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return newUsuario;
    }
    
    public UsuarioDto getByUsername(String username)
    {
        TipoUsuarioDao daoTipUsu = new TipoUsuarioDao();
        EstadoCivilDao daoEstCiv = new EstadoCivilDao();
        Usuario usuario = null;
        UsuarioDto newUsuario = new UsuarioDto();
        Query query = session.createQuery("from Usuario U where U.usuLog = :id and U.estRegCod = 'A'");
        query.setParameter("id", username);
        query.setMaxResults(1);
        try {
            List<Usuario> usuarios = query.list();
            usuario =  usuarios.get(0);
            BeanUtils.copyProperties(newUsuario, usuario);
            newUsuario.setTipUsuDet(daoTipUsu.getById(usuario.getTipUsuCod()).getTipUsuDet());
            newUsuario.setEstCivDet(daoEstCiv.getById(usuario.getEstCivCod()).getEstCivDet());
        } catch (IllegalAccessException | InvocationTargetException | IndexOutOfBoundsException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return newUsuario;
    }
    
    public List<UsuarioDto> getAll()
    {
        TipoUsuarioDao daoTipUsu = new TipoUsuarioDao();
        EstadoCivilDao daoEstCiv = new EstadoCivilDao();
        
        Query query = session.createQuery("from Usuario");
        List<Usuario> usuarios =  query.list();
        List<UsuarioDto> nuevos = new ArrayList<UsuarioDto>();
        
        for(int i = 0; i < usuarios.size(); i++)
        {
            try {
                UsuarioDto nuevo = new UsuarioDto();
                BeanUtils.copyProperties(nuevo, usuarios.get(i));
                nuevo.setTipUsuDet(daoTipUsu.getById(nuevo.getTipUsuCod()).getTipUsuDet());
                nuevo.setEstCivDet(daoEstCiv.getById(nuevo.getEstCivCod()).getEstCivDet());
                nuevos.add(nuevo);
            } catch (IllegalAccessException | InvocationTargetException ex) {
                return null;
            }
        }
        
        return nuevos;
    }
    
    public void save(Usuario usuario) {
        session.save(usuario);     
    }*/
}
