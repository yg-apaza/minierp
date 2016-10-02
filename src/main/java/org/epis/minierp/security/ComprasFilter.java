package org.epis.minierp.security;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.dto.UsuarioDto;

@WebFilter("/secured/ventas/*")
public class ComprasFilter implements Filter
{
    @Override
    public void init(FilterConfig config) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException
    {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("usuario") == null)
        {
            response.sendRedirect(request.getContextPath() + "/");
        }
        else
        {
            UsuarioDto u = (UsuarioDto) session.getAttribute("usuario");
            if(u.getTipUsuCod() == 1 || u.getTipUsuCod() == 3)
                chain.doFilter(req, res);
            else
                response.sendRedirect(request.getContextPath() + "/");
        }
    }

    @Override
    public void destroy() {
    }
}
