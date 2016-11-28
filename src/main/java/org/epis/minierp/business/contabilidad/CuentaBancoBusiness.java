package org.epis.minierp.business.contabilidad;

import org.epis.minierp.dao.contabilidad.BancoDao;
import org.epis.minierp.dao.contabilidad.CuentaBancoDao;
import org.epis.minierp.model.EnP3mCuenta;
import org.epis.minierp.model.EnP3mCuentaBanco;
import org.epis.minierp.model.TaGzzBanco;

public class CuentaBancoBusiness
{
    CuentaBancoDao cuentaBancoDao;
    
    public CuentaBancoBusiness() {
        cuentaBancoDao = new CuentaBancoDao();
    }
    
    public void create(int createBanCod, String createCueBanNum, String createCueNum) {
        CuentaBusiness cuentaBusiness = new CuentaBusiness();
        BancoDao bancoDao = new BancoDao();
        EnP3mCuentaBanco cb = new EnP3mCuentaBanco();
        TaGzzBanco banco = bancoDao.getById(createBanCod);
        cb.setTaGzzBanco(banco);
        cb.setCueBanNum(createCueBanNum);
        EnP3mCuenta cuenta = cuentaBusiness.create(434, 5, banco.getBanDet(), "1041" + createCueNum, "", "");
        cb.setEnP3mCuenta(cuenta);
        cb.setEstRegCod('A');
        cuentaBancoDao.save(cb);
    }

    public void update(int updateCueBanCod, int updateBanCod, String updateCueBanNum) {
        EnP3mCuentaBanco cuenta = cuentaBancoDao.getById(updateBanCod);
        BancoDao bancoDao = new BancoDao();
        cuenta.setTaGzzBanco(bancoDao.getById(updateBanCod));
        cuenta.setCueBanNum(updateCueBanNum);
        cuentaBancoDao.update(cuenta);
    }
    
    private void setEstRegCod(Integer cueBanCod, char estRegCod){
        EnP3mCuentaBanco cuentaBanco = cuentaBancoDao.getById(cueBanCod);
        cuentaBanco.setEstRegCod(estRegCod);
        cuentaBancoDao.update(cuentaBanco);
    }
    
    public void activate(Integer cueBanCod){
        setEstRegCod(cueBanCod, 'A');
    }
    
    public void disable(Integer cueBanCod){
        setEstRegCod(cueBanCod, 'I');
    }
    
    public void delete(Integer cueBanCod){
        setEstRegCod(cueBanCod, '*');
    }
}
