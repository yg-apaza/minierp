package org.epis.minierp.dao;

import org.epis.minierp.model.Usuario;
import org.epis.minierp.util.SessionUtil;
import org.hibernate.Session;

public class UsuarioDao
{
    public static Usuario getUsuario(String id)
    {
        Session session = SessionUtil.getSession();    
        Usuario usuario =  (Usuario)session.load(Usuario.class, id);
        return usuario;
    }
}
