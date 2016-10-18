package org.epis.minierp.business.configuracion;

import org.epis.minierp.dao.ventas.EnP1mDocumentoUsuarioDao;
import org.epis.minierp.model.EnP1mDocumentoUsuario;
import org.epis.minierp.model.EnP1mDocumentoUsuarioId;


public class EnP1mDocumentoUsuarioBusiness {
    EnP1mDocumentoUsuarioDao duDao;

    public EnP1mDocumentoUsuarioBusiness() {
        duDao = new EnP1mDocumentoUsuarioDao();
    }

    public void create(String usuCod, int tipDocUsuCod, String docUsuNum, char estRegCod) {
        EnP1mDocumentoUsuario docUsu = new EnP1mDocumentoUsuario();
        docUsu.setId(new EnP1mDocumentoUsuarioId(usuCod, tipDocUsuCod));
        docUsu.setDocUsuNum(docUsuNum);
        docUsu.setEstRegCod(estRegCod);
        duDao.save(docUsu);
    }
    
    public void update(String usuCod, int tipDocUsuCod, String docUsuNum) {
        EnP1mDocumentoUsuario docUsu = duDao.getById(new EnP1mDocumentoUsuarioId(usuCod, tipDocUsuCod));
        docUsu.setDocUsuNum(docUsuNum);
        duDao.update(docUsu);
    }

    private void setEstRegCod(String usuCod, int tipDocUsuCod, char estRegCod){
        EnP1mDocumentoUsuarioId key = new EnP1mDocumentoUsuarioId(usuCod, tipDocUsuCod);
        EnP1mDocumentoUsuario docUsu = duDao.getById(key);
        docUsu.setEstRegCod(estRegCod);
        duDao.update(docUsu);
    }
    
    public void activate(String usuCod, int tipDocUsuCod){
        setEstRegCod(usuCod, tipDocUsuCod, 'A');
    }
    
    public void disable(String usuCod, int tipDocUsuCod) {
        setEstRegCod(usuCod, tipDocUsuCod, 'I');
    }

    public void delete(String usuCod, int tipDocUsuCod){
        setEstRegCod(usuCod, tipDocUsuCod, '*');
    } 
}
