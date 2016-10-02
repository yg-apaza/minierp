package org.epis.minierp.dao.general;

import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.beanutils.BeanUtils;
import org.epis.minierp.dto.UsuarioDto;
import org.epis.minierp.model.Usuario;
import org.epis.minierp.util.SessionUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class UsuarioDao
{
    private static UsuarioDao usuarioDao;
    private SimpleDateFormat dt = new SimpleDateFormat("yyyy/MM/dd");

    public static UsuarioDao getInstance()
    {
        if (usuarioDao == null){
            usuarioDao = new UsuarioDao();
        }
        return usuarioDao;
    }
    
    public UsuarioDto getById(String id)
    {
        Session session = SessionUtil.getSession();
        Usuario usuario = null;
        UsuarioDto newUsuario = new UsuarioDto();
        try {
            usuario =  (Usuario)session.load(Usuario.class, id);
            BeanUtils.copyProperties(newUsuario, usuario);
            newUsuario.setTipUsuDet(TipoUsuarioDao.getInstance().getById(usuario.getTipUsuCod()).getTipUsuDet());
            newUsuario.setEstCivDet(EstadoCivilDao.getInstance().getById(usuario.getEstCivCod()).getEstCivDet());
        } catch(ObjectNotFoundException e) {
            return null;
        } catch (IllegalAccessException | InvocationTargetException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        session.close();
        return newUsuario;
    }
    
    public UsuarioDto getByIdActive(String id)
    {
        Session session = SessionUtil.getSession();
        Usuario usuario = null;
        UsuarioDto newUsuario = new UsuarioDto();
        Query query = session.createQuery("from Usuario U where U.usuCod = :id and U.estRegCod = 'A'");
        query.setParameter("id", id);
        query.setMaxResults(1);
        try {
            List<Usuario> usuarios = query.list();
            usuario =  usuarios.get(0);
            BeanUtils.copyProperties(newUsuario, usuario);
            newUsuario.setTipUsuDet(TipoUsuarioDao.getInstance().getById(usuario.getTipUsuCod()).getTipUsuDet());
            newUsuario.setEstCivDet(EstadoCivilDao.getInstance().getById(usuario.getEstCivCod()).getEstCivDet());
        } catch (IllegalAccessException | InvocationTargetException | IndexOutOfBoundsException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        session.close();
        return newUsuario;
    }
    
    public List<UsuarioDto> getAll()
    {
        Session session = SessionUtil.getSession();
        Query query = session.createQuery("from Usuario");
        List<Usuario> usuarios =  query.list();
        List<UsuarioDto> nuevos = new ArrayList<UsuarioDto>();
        for(int i = 0; i < usuarios.size(); i++)
        {
            try {
                UsuarioDto nuevo = new UsuarioDto();
                BeanUtils.copyProperties(nuevo, usuarios.get(i));
                nuevo.setTipUsuDet(TipoUsuarioDao.getInstance().getById(nuevo.getTipUsuCod()).getTipUsuDet());
                nuevo.setEstCivDet(EstadoCivilDao.getInstance().getById(nuevo.getEstCivCod()).getEstCivDet());
                nuevos.add(nuevo);
            } catch (IllegalAccessException ex) {
                return null;
            } catch (InvocationTargetException ex) {
                return null;
            }
        }
        session.close();
        return nuevos;
    }
}
