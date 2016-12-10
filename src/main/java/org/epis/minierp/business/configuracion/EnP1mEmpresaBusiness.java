package org.epis.minierp.business.configuracion;

import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.model.EnP1mEmpresa;

public class EnP1mEmpresaBusiness {
    
    EnP1mEmpresaDao empDao;

    public EnP1mEmpresaBusiness() {
        empDao = new EnP1mEmpresaDao();
    }

    public void create(int empCod, String empRazSoc, String empNomCom, 
            String empDomFis, String empDes, String empDir, String empTel, 
            String empEmail, double empIGV, double empTipCamCom, 
            double empTipCamVen, String  empRUC, int empLot, String EmpImgURL,
            int empNumDetGuiRemTra, int empNumDetFacVen, int empNumDetBolVen) {
        
        EnP1mEmpresa e = new EnP1mEmpresa();
        e.setEmpCod(empCod);
        e.setEmpRazSoc(empRazSoc);
        e.setEmpNomCom(empNomCom);
        e.setEmpDomFis(empDomFis);
        e.setEmpDes(empDes);
        e.setEmpDir(empDir);
        e.setEmpTel(empTel);
        e.setEmpEmail(empEmail);
        e.setEmpIgv(empIGV);
        e.setEmpTipCamCom(empTipCamCom);
        e.setEmpTipCamVen(empTipCamVen);
        e.setEmpRuc(empRUC);
        e.setEmpLot(empLot);
        e.setEmpImgUrl(EmpImgURL);
        e.setEmpNumDetGuiRemTra(empNumDetGuiRemTra);
        e.setEmpNumDetFacVen(empNumDetFacVen);
        e.setEmpNumDetBolVen(empNumDetBolVen);
        empDao.save(e);
    }
    
    public void update(int empCod, String empRazSoc, String empNomCom, 
            String empDomFis, String empDes, String empDir, String empTel, 
            String empEmail, double empIGV, double empTipCamCom, 
            double empTipCamVen, String  empRUC, int empLot, String EmpImgURL,
            int empNumDetGuiRemTra, int empNumDetFacVen, int empNumDetBolVen) {
        
        EnP1mEmpresa e = empDao.getById(empCod);
        e.setEmpRazSoc(empRazSoc);
        e.setEmpNomCom(empNomCom);
        e.setEmpDomFis(empDomFis);
        e.setEmpDes(empDes);
        e.setEmpDir(empDir);
        e.setEmpTel(empTel);
        e.setEmpEmail(empEmail);
        e.setEmpIgv(empIGV);
        e.setEmpTipCamCom(empTipCamCom);
        e.setEmpTipCamVen(empTipCamVen);
        e.setEmpRuc(empRUC);
        e.setEmpLot(empLot);
        e.setEmpImgUrl(EmpImgURL);
        e.setEmpNumDetGuiRemTra(empNumDetGuiRemTra);
        e.setEmpNumDetFacVen(empNumDetFacVen);
        e.setEmpNumDetBolVen(empNumDetBolVen);
        empDao.update(e);
    }

    public void saveOrUpdate(int empCod, String empRazSoc, String empNomCom, 
            String empDomFis, String empDes, String empDir, String empTel, 
            String empEmail, double empIGV, double empTipCamCom, 
            double empTipCamVen, String  empRUC, int empLot, String EmpImgURL,
            int empNumDetGuiRemTra, int empNumDetFacVen, int empNumDetBolVen) {
        
        EnP1mEmpresa e = empDao.getById(empCod);
        e.setEmpRazSoc(empRazSoc);
        e.setEmpNomCom(empNomCom);
        e.setEmpDomFis(empDomFis);
        e.setEmpDes(empDes);
        e.setEmpDir(empDir);
        e.setEmpTel(empTel);
        e.setEmpEmail(empEmail);
        e.setEmpIgv(empIGV);
        e.setEmpTipCamCom(empTipCamCom);
        e.setEmpTipCamVen(empTipCamVen);
        e.setEmpRuc(empRUC);
        e.setEmpLot(empLot);
        if(EmpImgURL != null && !EmpImgURL.equals(""))
            e.setEmpImgUrl(EmpImgURL);
        e.setEmpNumDetGuiRemTra(empNumDetGuiRemTra);
        e.setEmpNumDetFacVen(empNumDetFacVen);
        e.setEmpNumDetBolVen(empNumDetBolVen);
        empDao.saveOrUpdate(e);
    }    
}
