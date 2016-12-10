package org.epis.minierp.security;

import java.io.File;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.SessionFactory;
import org.hibernate.StaleObjectStateException;

public class HibernateSessionRequestFilter implements Filter
{
    private static Log log = LogFactory.getLog(HibernateSessionRequestFilter.class);  
    private SessionFactory sf;  
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException
    {
        try {
            sf.getCurrentSession().beginTransaction();
            // Encoding
            request.setCharacterEncoding("UTF-8");
            // Set Logo
            EnP1mEmpresaDao empDAO = new EnP1mEmpresaDao();
            EnP1mEmpresa emp = empDAO.getById(1);
            File af;
            if(emp.getEmpImgUrl() != null )
            {
                String empImg = emp.getEmpImgUrl();
                af = new File(request.getRealPath("/img"), empImg);
                if(af.exists())
                    request.setAttribute("empImg", empImg);
                else request.setAttribute("empImg", "default_logo.png");
            }
            else
                request.setAttribute("empImg", "default_logo.png");
            chain.doFilter(request, response);
            sf.getCurrentSession().getTransaction().commit();

        } catch (StaleObjectStateException staleEx) {
            log.error("This interceptor does not implement optimistic concurrency control!");
            log.error("Your application will not work until you add compensation actions!");
            throw staleEx;
        } catch (Throwable ex) {
            // Rollback only
            ex.printStackTrace();
            try {
                if (sf.getCurrentSession().getTransaction().isActive()) {
                    log.debug("Trying to rollback database transaction after exception");
                    sf.getCurrentSession().getTransaction().rollback();
                }
            } catch (Throwable rbEx) {
                log.error("Could not rollback transaction after exception!", rbEx);
            }
            
            throw new ServletException(ex);
        }
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException
    {
        log.debug("Initializing filter...");
        log.debug("Obtaining SessionFactory from static HibernateUtil singleton");
        sf = HibernateUtil.getSessionFactory();
    }

    @Override
    public void destroy() {}
}