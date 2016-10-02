package org.epis.minierp.dao.general;

import java.lang.reflect.InvocationTargetException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.beanutils.BeanUtils;
import org.epis.minierp.dto.UsuarioDto;
import org.epis.minierp.model.Usuario;
import org.epis.minierp.util.SessionUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Session;

public class UsuarioDao
{
    public static UsuarioDto getUsuario(String id)
    {
        Session session = SessionUtil.getSession();
        Usuario usuario = null;
        UsuarioDto newUsuario = new UsuarioDto();
        try {
            usuario =  (Usuario)session.load(Usuario.class, id);
            BeanUtils.copyProperties(newUsuario, usuario);
            newUsuario.setTipUsuDet(TipoUsuarioDao.getTipo(usuario.getTipUsuCod()).getTipUsuDet());
            newUsuario.setEstCivDet("");
        } catch(ObjectNotFoundException e) {
            return null;
        } catch (IllegalAccessException | InvocationTargetException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return newUsuario;
    }
}
