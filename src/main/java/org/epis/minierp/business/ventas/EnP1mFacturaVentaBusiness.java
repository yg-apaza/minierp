package org.epis.minierp.business.ventas;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemRemitenteDao;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemTransportistaDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.ventas.EnP1cDevolucionVentasDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.dao.ventas.EnP1mPagosCuotasCabDao;
import org.epis.minierp.dao.ventas.EnP1tFacturaVentaDetDao;
import org.epis.minierp.model.EnP1cDevolucionVentas;
import org.epis.minierp.model.EnP1mCatalogoRuta;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mPagosCuotasCab;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP1tFacturaVentaDetId;
import org.epis.minierp.model.EnP2mGuiaRemRemitente;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.TaGzzEstadoFactura;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzTipoDescuento;
import org.epis.minierp.model.TaGzzTipoPagoFactura;
import org.epis.minierp.util.BigDecimalUtil;
import org.epis.minierp.util.DateUtil;

public class EnP1mFacturaVentaBusiness {

    EnP1mFacturaVentaCabDao facVenCabDao;
    EnP2mGuiaRemRemitenteDao guiRemRemDao;
    EnP2mGuiaRemTransportistaDao guiRemTraDao;
    EnP1mPagosCuotasCabDao pagCuoDao;
    EnP1cDevolucionVentasDao devVenDao;
    EnP2mProductoDao proDao;
    EnP1tFacturaVentaDetDao facVenDetDao;
    EnP1mPagosCuotasBusiness pagosCuoBusiness;
    EnP1mEmpresaDao empDao;
    int empNumDec;

    public EnP1mFacturaVentaBusiness() {
        facVenCabDao = new EnP1mFacturaVentaCabDao();
        guiRemRemDao = new EnP2mGuiaRemRemitenteDao();
        guiRemTraDao = new EnP2mGuiaRemTransportistaDao();
        pagCuoDao = new EnP1mPagosCuotasCabDao();
        devVenDao = new EnP1cDevolucionVentasDao();
        proDao = new EnP2mProductoDao();
        facVenDetDao = new EnP1tFacturaVentaDetDao();
        pagosCuoBusiness = new EnP1mPagosCuotasBusiness();
        empDao = new EnP1mEmpresaDao();
        empNumDec = empDao.getById(01).getEmpNumDec();
    }

    public void devolucionParcial(int facVenCabCod, String facVenNewNum, List<String> proCods,
            List<String> proPris, List<String> proAmosOld, List<String> proAmosNew, double facVenSubTot, double facVenTot) {
        EnP1mFacturaVentaCab cabFacVen = facVenCabDao.getById(facVenCabCod);

        //Cancela guia de remision remitente (estRegCod = I)
        EnP2mGuiaRemRemitente guiRemRem = cabFacVen.getEnP2mGuiaRemRemitente();
        if (guiRemRem != null) {
            guiRemRem.setEstRegCod('I');
            guiRemRemDao.update(guiRemRem);
        }

        //Cancela guia de remision transportista (estRegCod = I)
        EnP2mGuiaRemTransportista guiRemTra = cabFacVen.getEnP2mGuiaRemTransportista();
        if (guiRemTra != null) {
            guiRemTra.setEstRegCod('I');
            guiRemTraDao.update(guiRemTra);
        }

        //Inhabilita el registro de pagos por cuotas si este tiene uno (estRegCod = I)
        EnP1mPagosCuotasCab pagCuo = cabFacVen.getEnP1mPagosCuotasCab();
        if (pagCuo != null) {
            pagCuo.setEstRegCod('I');
            pagCuoDao.update(pagCuo);
        }

        //Creando una nueva factura desde todos los datos de la antigua factura de venta
        int newCodFacCab = facVenCabDao.getMaxFacCabCod();
        EnP1mFacturaVentaCab cabNewFac = new EnP1mFacturaVentaCab();
        cabNewFac.setFacVenCabCod(newCodFacCab);
        cabNewFac.setFacVenCabNum(facVenNewNum);
        cabNewFac.setEnP1mCliente(cabFacVen.getEnP1mCliente());
        cabNewFac.setEnP1mUsuario(cabFacVen.getEnP1mUsuario());
        cabNewFac.setFacVenCabFecEmi(cabFacVen.getFacVenCabFecEmi());
        cabNewFac.setFacVenCabFecVen(cabFacVen.getFacVenCabFecVen());
        cabNewFac.setFacVenPorDes(cabFacVen.getFacVenPorDes());
        cabNewFac.setFacVenCabSubTot(BigDecimalUtil.get(facVenSubTot, empNumDec));
        cabNewFac.setFacVenCabTot(BigDecimalUtil.get(facVenTot, empNumDec));
        cabNewFac.setFacVenCabIgv(cabFacVen.getFacVenCabIgv());
        cabNewFac.setFacVenCabObs(cabFacVen.getFacVenCabObs());
        cabNewFac.setTaGzzEstadoFactura(cabFacVen.getTaGzzEstadoFactura());
        cabNewFac.setTaGzzMetodoPagoFactura(cabFacVen.getTaGzzMetodoPagoFactura());
        cabNewFac.setTaGzzTipoPagoFactura(cabFacVen.getTaGzzTipoPagoFactura());
        cabNewFac.setTaGzzMoneda(cabFacVen.getTaGzzMoneda());
        cabNewFac.setTaGzzTipoDescuento(cabFacVen.getTaGzzTipoDescuento());
        cabNewFac.setFacVenCabModVen(cabFacVen.getFacVenCabModVen());
        cabNewFac.setEstRegCod('A');

        facVenCabDao.save(cabNewFac);

        int counter = 0;

        //Devolviendo el stock a cada producto del detalle       
        for (int i = 0; i < proCods.size(); i++) {
            StringTokenizer st = new StringTokenizer(proCods.get(i), "-");

            //Obteniendo producto
            EnP2mProductoId productId = new EnP2mProductoId();
            productId.setClaProCod(st.nextToken());
            productId.setSubClaProCod(st.nextToken());
            productId.setProCod(st.nextToken());
            EnP2mProducto product = proDao.getById(productId);

            //Actualizando stock = ACTUAL + (VENTA_OLD_CANT - VENTA_NEW_CANT)
            product.setProStk(product.getProStk() + (Double.parseDouble(proAmosOld.get(i)) - Double.parseDouble(proAmosNew.get(i))));
            proDao.update(product);

            //Sólo si no se ha devuelto toda la cantidad del producto, se agrega un nuevo detalle a la nueva factura
            if (Double.parseDouble(proAmosNew.get(i)) > 0) {
                EnP1tFacturaVentaDet det = new EnP1tFacturaVentaDet();

                EnP1tFacturaVentaDetId detId = new EnP1tFacturaVentaDetId();
                detId.setFacVenCabCod(newCodFacCab);
                detId.setFacVenDetCod(counter);
                det.setId(detId);
                det.setEnP1mFacturaVentaCab(cabNewFac);
                det.setEnP2mProducto(product);
                det.setFacVenDetCan(BigDecimalUtil.get(proAmosNew.get(i), empNumDec));
                det.setFacVenDetValUni(BigDecimalUtil.get(proPris.get(i), empNumDec));

                facVenDetDao.save(det);
                counter++;
            }
        }

        //Se cambia el estado de registro a la factura de venta antigua (estRegCod = I)
        cabFacVen.setEstRegCod('I');
        facVenCabDao.update(cabFacVen);

        //Se crea la entidad de devolución
        EnP1cDevolucionVentas devVen = new EnP1cDevolucionVentas();
        devVen.setEnP1mFacturaVentaCabByFacVenCabCod(cabFacVen);
        devVen.setFacVenCabCod(facVenCabCod);
        devVen.setEnP1mFacturaVentaCabByDevVenNewFac(cabNewFac);
        devVen.setDevVenDet("Devolucion parcial de la Factura y sus productos");
        devVen.setDevVenFec(DateUtil.getthisDate());
        devVen.setDevVenMon(cabFacVen.getFacVenCabTot());
        devVenDao.save(devVen);
    }

    public void devolucionTotal(int facVenCabCod) {
        EnP1mFacturaVentaCab cabFacVen = facVenCabDao.getById(facVenCabCod);

        //Cancela guia de remision remitente (estRegCod = I)
        EnP2mGuiaRemRemitente guiRemRem = cabFacVen.getEnP2mGuiaRemRemitente();
        if (guiRemRem != null) {
            guiRemRem.setEstRegCod('I');
            guiRemRemDao.update(guiRemRem);
        }

        //Cancela guia de remision transportista (estRegCod = I)
        EnP2mGuiaRemTransportista guiRemTra = cabFacVen.getEnP2mGuiaRemTransportista();
        if (guiRemTra != null) {
            guiRemTra.setEstRegCod('I');
            guiRemTraDao.update(guiRemTra);
        }

        //Inhabilita el registro de pagos por cuotas si este tiene uno (estRegCod = I)
        EnP1mPagosCuotasCab pagCuo = cabFacVen.getEnP1mPagosCuotasCab();
        if (pagCuo != null) {
            pagCuo.setEstRegCod('I');
            pagCuoDao.update(pagCuo);
        }

        //Se crea la entidad de devolución
        EnP1cDevolucionVentas devVen = new EnP1cDevolucionVentas();
        devVen.setEnP1mFacturaVentaCabByFacVenCabCod(cabFacVen);
        devVen.setFacVenCabCod(facVenCabCod);
        devVen.setEnP1mFacturaVentaCabByDevVenNewFac(null); //No hay nueva factura ya que es una devolucion total
        devVen.setDevVenDet("Devolucion Total de la Factura y sus productos");
        devVen.setDevVenFec(DateUtil.getthisDate()); //Fecha actual
        devVen.setDevVenMon(cabFacVen.getFacVenCabTot());
        devVenDao.save(devVen);

        //Listando todos los detalles
        List<EnP1tFacturaVentaDet> detFacVen = new ArrayList<>(cabFacVen.getEnP1tFacturaVentaDets());

        //Devolviendo el stock a cada producto del detalle
        EnP2mProducto temp = null;
        for (EnP1tFacturaVentaDet detalle : detFacVen) {
            temp = detalle.getEnP2mProducto();
            //Insertar aqui parte contable por producto
            temp.setProStk(temp.getProStk() + BigDecimalUtil.get(detalle.getFacVenDetCan(), empNumDec));
            proDao.update(temp);
        }

        //Se cambia su estado de registros (estRegCod = I)
        cabFacVen.setEstRegCod('I');
        facVenCabDao.update(cabFacVen);
    }

    /**
     * Guias y las Rutas se Agregan despues de la creacion, la canidad de cuotas
     * solo se agrega si se presenta pagos por cuotas
     *
     * @param facVenCabCod
     * @param cliCod
     * @param usuCod
     * @param facVenCabModVen Modalidad de Venta (Factura = F, Boleta = B)
     * @param facVenCabFecEmi
     * @param facVenCabFecVen
     * @param facVenCabTot
     * @param tipDesCod
     * @param facVenPorDes
     * @param facVenCabSubTot
     * @param facVenCabIGV
     * @param facVenCabObs
     * @param estFacCod
     * @param metPagFac
     * @param tipPagCod
     * @param monCod
     * @param pagCuoNum si pagos por cuotas no esta activo valor = 0
     * @param estRegCod
     */
    private void createFacVenCab(int facVenCabCod, String facVenCabNum, String cliCod, String usuCod, char facVenCabModVen,
            Date facVenCabFecEmi, Date facVenCabFecVen, BigDecimal facVenCabTot, int tipDesCod,
            int facVenPorDes, BigDecimal facVenCabSubTot, int facVenCabIGV, String facVenCabObs,
            int estFacCod, int metPagCod, int tipPagCod, int monCod, int pagCuoNum, char estRegCod) {

        EnP1mCliente c = new EnP1mCliente();
        c.setCliCod(cliCod);

        EnP1mUsuario u = new EnP1mUsuario();
        u.setUsuCod(usuCod);

        TaGzzTipoDescuento td = new TaGzzTipoDescuento();
        td.setTipDesCod(tipDesCod);

        TaGzzEstadoFactura ef = new TaGzzEstadoFactura();
        ef.setEstFacCod(estFacCod);

        TaGzzMetodoPagoFactura mpf = new TaGzzMetodoPagoFactura();
        mpf.setMetPagCod(metPagCod);

        TaGzzTipoPagoFactura tpf = new TaGzzTipoPagoFactura();
        tpf.setTipPagCod(tipPagCod);

        TaGzzMoneda m = new TaGzzMoneda();
        m.setMonCod(monCod);

        //creacion de la factura
        EnP1mFacturaVentaCab fvc = new EnP1mFacturaVentaCab();
        fvc.setFacVenCabCod(facVenCabCod);
        fvc.setFacVenCabNum(facVenCabNum);
        fvc.setEnP1mCliente(c);
        fvc.setEnP1mUsuario(u);
        fvc.setFacVenCabModVen(facVenCabModVen);
        fvc.setFacVenCabFecEmi(facVenCabFecEmi);
        fvc.setFacVenCabFecVen(facVenCabFecVen);
        fvc.setFacVenCabTot(facVenCabTot);
        fvc.setTaGzzTipoDescuento(td);
        fvc.setFacVenPorDes(facVenPorDes);
        fvc.setFacVenCabSubTot(facVenCabSubTot);
        fvc.setFacVenCabIgv(facVenCabIGV);
        fvc.setFacVenCabObs(facVenCabObs);
        fvc.setTaGzzEstadoFactura(ef);
        fvc.setTaGzzMetodoPagoFactura(mpf);
        fvc.setTaGzzTipoPagoFactura(tpf);
        fvc.setTaGzzMoneda(m);
        fvc.setEstRegCod(estRegCod);

        facVenCabDao.save(fvc);

        //si es pago por cuotas
        if (tipPagCod == 2) {
            //es pago por cuotas
            pagosCuoBusiness.create(facVenCabCod, pagCuoNum, facVenCabSubTot, facVenCabFecEmi);
        }

    }

    private void createFacVenDet(int facVenCabCod, int facVenDetCod, String claProCod,
            String subClaProCod, String proCod, BigDecimal facVenDetCan, BigDecimal facVenDetValUni) {

        EnP2mProductoId pId = new EnP2mProductoId(proCod, subClaProCod, claProCod);
        EnP2mProducto p = proDao.getById(pId);

        EnP1tFacturaVentaDet fvd = new EnP1tFacturaVentaDet();
        fvd.setId(new EnP1tFacturaVentaDetId(facVenDetCod, facVenCabCod));
        fvd.setEnP2mProducto(p);
        fvd.setFacVenDetCan(facVenDetCan);
        fvd.setFacVenDetValUni(facVenDetValUni);

        //actualizando stoks
        double proStk = p.getProStk();

        p.setProStk(proStk - BigDecimalUtil.get(facVenDetCan, empNumDec));
        proDao.update(p);

        //crear detalle
        facVenDetDao.save(fvd);
    }

    private void createFacVenDet(EnP1tFacturaVentaDet facVenDet) {
        String proCod = facVenDet.getEnP2mProducto().getId().getProCod();
        String subClaProCod = facVenDet.getEnP2mProducto().getId().getSubClaProCod();
        String claProCod = facVenDet.getEnP2mProducto().getId().getClaProCod();
        double facVenDetCan = BigDecimalUtil.get(facVenDet.getFacVenDetCan(), empNumDec);

        //actualizando stoks
        EnP2mProductoId pId = new EnP2mProductoId(proCod, subClaProCod, claProCod);
        EnP2mProducto p = proDao.getById(pId);

        //actualizando stoks
        double proStk = p.getProStk();

        p.setProStk(proStk - facVenDetCan);
        proDao.update(p);

        //crear detalle
        facVenDetDao.save(facVenDet);
    }

    private void reducirproStkPreVen(String claProCod, String subClaProCod, String proCod, double value) {
        EnP2mProductoId pId = new EnP2mProductoId(proCod, subClaProCod, claProCod);
        EnP2mProducto p = proDao.getById(pId);

        double proStkPreVen = p.getProStkPreVen();
        p.setProStkPreVen(proStkPreVen - value);
        proDao.update(p);
    }

    /**
     * Guias y las Rutas se Agregan despues de la creacion, la canidad de cuotas
     * solo se agrega si se presenta pagos por cuotas, caso contrario colocar 0
     *
     * @param facVenCabNum
     * @param cliCod
     * @param usuCod
     * @param facVenCabModVen Modalidad de Venta (Factura = F, Boleta = B)
     * @param facVenCabFecEmi
     * @param facVenCabFecVen
     * @param tipDesCod
     * @param facVenPorDes
     * @param facVenCabIGV
     * @param facVenCabObs
     * @param estFacCod
     * @param metPagFac
     * @param tipPagCod
     * @param monCod
     * @param pagCuoNum si pagos por cuotas no esta activo valor = 0
     * @param estRegCod
     * @param detalles
     * @param maxDet4FacVen cantidad maxima de detalles por factura de venta
     */
    public void create(String facVenCabNum, String cliCod, String usuCod, char facVenCabModVen,
            Date facVenCabFecEmi, Date facVenCabFecVen, int tipDesCod, int facVenPorDes,
            int facVenCabIGV, String facVenCabObs, int estFacCod, int metPagFac, int tipPagCod,
            int monCod, int pagCuoNum, char estRegCod,
            List<EnP1tFacturaVentaDet> detalles, int maxDet4FacVen) {

        //se calcula el numero de facturas totales
        int size = detalles.size(); //cantidad de detalles insertados;
        int numFacs = size / maxDet4FacVen;
        if (size % maxDet4FacVen > 0 || size < maxDet4FacVen) {
            numFacs++;
        }

        EnP1tFacturaVentaDet tempFvd;
        String tempFacVenCabNum;
        int tempDets = 0;
        BigDecimal tempFacVenCabValNet;
        BigDecimal tempFacVenCabValIGV;
        BigDecimal tempFacVenCabValTot = BigDecimal.ZERO;
        BigDecimal tempPreUniAddIGV;
        int newFacCabCod;
        BigDecimal temp100AddIGV = BigDecimalUtil.get(((100.0 + (double) facVenCabIGV) / 100.0), empNumDec);
        BigDecimal tempPorDes = BigDecimalUtil.get(((100.0 - (double) facVenPorDes) / 100.0), empNumDec);
        BigDecimal tempPorIGV = BigDecimalUtil.get((((double) facVenCabIGV) / 100.0), empNumDec);

        for (int j = 0; j < numFacs; j++) {
            //creando cabecera facVenCabTot= 0 y facVenCabSubTot = 0
            tempFacVenCabNum = GenerateFacVenCabNum(facVenCabNum, j);
            newFacCabCod = facVenCabDao.getMaxFacCabCod();
            createFacVenCab(newFacCabCod, tempFacVenCabNum, cliCod, usuCod, facVenCabModVen, facVenCabFecEmi,
                    facVenCabFecVen, BigDecimal.ZERO, tipDesCod, facVenPorDes, BigDecimal.ZERO,
                    facVenCabIGV, facVenCabObs, estFacCod, metPagFac, tipPagCod, monCod,
                    pagCuoNum, estRegCod);

            String claProCod;
            String subClaProCod;
            String proCod;
            switch (facVenCabModVen) {
                case 'F': {
                    for (int i = 0; i < maxDet4FacVen && tempDets < size; i++) {
                        tempFvd = detalles.get(tempDets);
                        claProCod = tempFvd.getEnP2mProducto().getId().getClaProCod();
                        subClaProCod = tempFvd.getEnP2mProducto().getId().getSubClaProCod();
                        proCod = tempFvd.getEnP2mProducto().getId().getProCod();

                        //Precio de producto para el conseguir un detalle con IGV agregado
                        tempPreUniAddIGV = BigDecimalUtil.multiplicar(tempFvd.getFacVenDetValUni(), temp100AddIGV, empNumDec);

                        createFacVenDet(newFacCabCod, i + 1, claProCod, subClaProCod, proCod,
                                tempFvd.getFacVenDetCan(), tempFvd.getFacVenDetValUni());

                        tempDets++;
                        tempFacVenCabValTot = BigDecimalUtil.sumar(tempFacVenCabValTot, BigDecimalUtil.multiplicar(tempPreUniAddIGV, tempFvd.getFacVenDetCan(), empNumDec));

                    }
                    //aplicando descuento
                    tempFacVenCabValTot = BigDecimalUtil.multiplicar(tempFacVenCabValTot, tempPorDes, empNumDec);

                    //calculando Neto y IGV
                    tempFacVenCabValNet = BigDecimalUtil.dividir(tempFacVenCabValTot, tempPorIGV, empNumDec);
                    tempFacVenCabValIGV = BigDecimalUtil.multiplicar(tempFacVenCabValNet, tempPorIGV, empNumDec);

                    //cambiando los valores de total y subtotal con respecto a sus detalles
                    setFacVenCabTot(newFacCabCod, tempFacVenCabValNet);
                    setFacVenCabSubTot(newFacCabCod, tempFacVenCabValIGV);
                    break;
                }
                case 'B': {
                    for (int i = 0; i < maxDet4FacVen && tempDets < size; i++) {
                        tempFvd = detalles.get(tempDets);
                        claProCod = tempFvd.getEnP2mProducto().getId().getClaProCod();
                        subClaProCod = tempFvd.getEnP2mProducto().getId().getSubClaProCod();
                        proCod = tempFvd.getEnP2mProducto().getId().getProCod();

                        //Precio de producto para el conseguir un detalle con IGV agregado
                        tempPreUniAddIGV = BigDecimalUtil.multiplicar(tempFvd.getFacVenDetValUni(), temp100AddIGV, empNumDec);

                        createFacVenDet(newFacCabCod, i + 1, claProCod, subClaProCod, proCod,
                                tempFvd.getFacVenDetCan(), tempPreUniAddIGV);

                        tempDets++;
                        tempFacVenCabValTot = BigDecimalUtil.sumar(tempFacVenCabValTot, BigDecimalUtil.multiplicar(tempPreUniAddIGV, tempFvd.getFacVenDetCan(), empNumDec));

                    }
                    //aplicando descuento
                    tempFacVenCabValTot = BigDecimalUtil.multiplicar(tempFacVenCabValTot, tempPorDes, empNumDec);

                    //calculando Neto y IGV
                    tempFacVenCabValNet = BigDecimalUtil.dividir(tempFacVenCabValTot, tempPorIGV, empNumDec);
                    tempFacVenCabValIGV = BigDecimalUtil.multiplicar(tempFacVenCabValNet, tempPorIGV, empNumDec);

                    //cambiando los valores de total y subtotal con respecto a sus detalles
                    setFacVenCabTot(newFacCabCod, tempFacVenCabValNet);
                    setFacVenCabSubTot(newFacCabCod, tempFacVenCabValIGV);
                    break;
                }
                case 'N': {
                    for (int i = 0; i < maxDet4FacVen && tempDets < size; i++) {
                        tempFvd = detalles.get(tempDets);
                        claProCod = tempFvd.getEnP2mProducto().getId().getClaProCod();
                        subClaProCod = tempFvd.getEnP2mProducto().getId().getSubClaProCod();
                        proCod = tempFvd.getEnP2mProducto().getId().getProCod();

                        //Precio de producto para el conseguir un detalle con IGV agregado
                        tempPreUniAddIGV = BigDecimalUtil.multiplicar(tempFvd.getFacVenDetValUni(), temp100AddIGV, empNumDec);

                        createFacVenDet(newFacCabCod, i + 1, claProCod, subClaProCod, proCod,
                                tempFvd.getFacVenDetCan(), tempFvd.getFacVenDetValUni());

                        tempDets++;
                        tempFacVenCabValTot = BigDecimalUtil.sumar(tempFacVenCabValTot, BigDecimalUtil.multiplicar(tempPreUniAddIGV, tempFvd.getFacVenDetCan(), empNumDec));

                    }
                    //aplicando descuento
                    tempFacVenCabValTot = BigDecimalUtil.multiplicar(tempFacVenCabValTot, tempPorDes, empNumDec);

                    //calculando Neto y IGV
                    tempFacVenCabValNet = BigDecimalUtil.dividir(tempFacVenCabValTot, tempPorIGV, empNumDec);
                    tempFacVenCabValIGV = BigDecimalUtil.multiplicar(tempFacVenCabValNet, tempPorIGV, empNumDec);

                    //cambiando los valores de total y subtotal con respecto a sus detalles
                    setFacVenCabTot(newFacCabCod, tempFacVenCabValNet);
                    setFacVenCabSubTot(newFacCabCod, tempFacVenCabValIGV);
                    break;
                }
            }

            //reinicianod variables
            tempFacVenCabValNet = BigDecimal.ZERO;
            tempFacVenCabValTot = BigDecimal.ZERO;
        }
    }

    public void create4Preventa(String facVenCabNum, String cliCod, String usuCod, char facVenCabModVen,
            Date facVenCabFecEmi, Date facVenCabFecVen, int tipDesCod, int facVenPorDes,
            int facVenCabIGV, String facVenCabObs, int estFacCod, int metPagFac, int tipPagCod,
            int monCod, int pagCuoNum, char estRegCod,
            List<EnP1tFacturaVentaDet> detalles, int maxDet4FacVen) {

        //se calcula el numero de facturas totales
        int size = detalles.size(); //cantidad de detalles insertados;
        int numFacs = size / maxDet4FacVen;
        if (size % maxDet4FacVen > 0 || size < maxDet4FacVen) {
            numFacs++;
        }

        EnP1tFacturaVentaDet tempFvd;
        String tempFacVenCabNum;
        int tempDets = 0;
        BigDecimal tempFacVenCabValNet;
        BigDecimal tempFacVenCabValIGV;
        BigDecimal tempFacVenCabValTot = BigDecimal.ZERO;
        BigDecimal tempPreUniAddIGV;
        int newFacCabCod;
        BigDecimal temp100AddIGV = BigDecimalUtil.get(((100.0 + (double) facVenCabIGV) / 100.0), empNumDec);
        BigDecimal tempPorDes = BigDecimalUtil.get(((100.0 - (double) facVenPorDes) / 100.0), empNumDec);
        BigDecimal tempPorIGV = BigDecimalUtil.get(((double) facVenCabIGV / 100.0), empNumDec);
        BigDecimal tempValPro = BigDecimal.ZERO;

        for (int j = 0; j < numFacs; j++) {
            //creando cabecera facVenCabTot= 0 y facVenCabSubTot = 0
            tempFacVenCabNum = GenerateFacVenCabNum(facVenCabNum, j);
            newFacCabCod = facVenCabDao.getMaxFacCabCod();
            createFacVenCab(newFacCabCod, tempFacVenCabNum, cliCod, usuCod, facVenCabModVen, facVenCabFecEmi,
                    facVenCabFecVen, BigDecimal.ZERO, tipDesCod, facVenPorDes, BigDecimal.ZERO,
                    facVenCabIGV, facVenCabObs, estFacCod, metPagFac, tipPagCod, monCod,
                    pagCuoNum, estRegCod);

            String claProCod;
            String subClaProCod;
            String proCod;
            switch (facVenCabModVen) {
                case 'F': {
                    for (int i = 0; i < maxDet4FacVen && tempDets < size; i++) {
                        tempFvd = detalles.get(tempDets);
                        claProCod = tempFvd.getEnP2mProducto().getId().getClaProCod();
                        subClaProCod = tempFvd.getEnP2mProducto().getId().getSubClaProCod();
                        proCod = tempFvd.getEnP2mProducto().getId().getProCod();

                        //Precio de producto para el conseguir un detalle con IGV agregado
                        tempPreUniAddIGV = BigDecimalUtil.multiplicar(tempFvd.getFacVenDetValUni(), temp100AddIGV, empNumDec);

                        createFacVenDet(newFacCabCod, i + 1, claProCod, subClaProCod, proCod,
                                tempFvd.getFacVenDetCan(), tempFvd.getFacVenDetValUni());

                        reducirproStkPreVen(claProCod, subClaProCod, proCod, BigDecimalUtil.get(tempFvd.getFacVenDetCan(), empNumDec));
                        tempDets++;

                        tempValPro = BigDecimalUtil.multiplicar(tempPreUniAddIGV, tempFvd.getFacVenDetCan(), empNumDec);
                        tempFacVenCabValTot = BigDecimalUtil.sumar(tempFacVenCabValTot, tempValPro, empNumDec);

                    }
                    //aplicando descuento
                    tempFacVenCabValTot = BigDecimalUtil.multiplicar(tempFacVenCabValTot, tempPorDes, empNumDec);

                    //calculando Neto y IGV
                    tempFacVenCabValNet = BigDecimalUtil.dividir(tempFacVenCabValTot, temp100AddIGV, empNumDec);
                    tempFacVenCabValIGV = BigDecimalUtil.multiplicar(tempFacVenCabValNet, tempPorIGV, empNumDec);

                    //cambiando los valores de total y subtotal con respecto a sus detalles
                    setFacVenCabTot(newFacCabCod, tempFacVenCabValNet);
                    setFacVenCabSubTot(newFacCabCod, tempFacVenCabValIGV);
                    break;
                }
                case 'B': {
                    for (int i = 0; i < maxDet4FacVen && tempDets < size; i++) {
                        tempFvd = detalles.get(tempDets);
                        claProCod = tempFvd.getEnP2mProducto().getId().getClaProCod();
                        subClaProCod = tempFvd.getEnP2mProducto().getId().getSubClaProCod();
                        proCod = tempFvd.getEnP2mProducto().getId().getProCod();

                        //Precio de producto para el conseguir un detalle con IGV agregado
                        tempPreUniAddIGV = BigDecimalUtil.multiplicar(tempFvd.getFacVenDetValUni(), temp100AddIGV, empNumDec);

                        createFacVenDet(newFacCabCod, i + 1, claProCod, subClaProCod, proCod,
                                tempFvd.getFacVenDetCan(), tempPreUniAddIGV);

                        reducirproStkPreVen(claProCod, subClaProCod, proCod, BigDecimalUtil.get(tempFvd.getFacVenDetCan(), empNumDec));
                        tempDets++;
                        tempFacVenCabValTot = BigDecimalUtil.sumar(tempFacVenCabValTot, BigDecimalUtil.multiplicar(tempPreUniAddIGV, tempFvd.getFacVenDetCan(), empNumDec));

                    }
                    //aplicando descuento
                    tempFacVenCabValTot = BigDecimalUtil.multiplicar(tempFacVenCabValTot, tempPorDes, empNumDec);

                    //calculando Neto y IGV
                    tempFacVenCabValNet = BigDecimalUtil.dividir(tempFacVenCabValTot, tempPorIGV, empNumDec);
                    tempFacVenCabValIGV = BigDecimalUtil.multiplicar(tempFacVenCabValNet, tempPorIGV, empNumDec);

                    //cambiando los valores de total y subtotal con respecto a sus detalles
                    setFacVenCabTot(newFacCabCod, tempFacVenCabValNet);
                    setFacVenCabSubTot(newFacCabCod, tempFacVenCabValIGV);
                    break;
                }
                case 'N': {
                    for (int i = 0; i < maxDet4FacVen && tempDets < size; i++) {
                        tempFvd = detalles.get(tempDets);
                        claProCod = tempFvd.getEnP2mProducto().getId().getClaProCod();
                        subClaProCod = tempFvd.getEnP2mProducto().getId().getSubClaProCod();
                        proCod = tempFvd.getEnP2mProducto().getId().getProCod();

                        //Precio de producto para el conseguir un detalle con IGV agregado
                        tempPreUniAddIGV = BigDecimalUtil.multiplicar(tempFvd.getFacVenDetValUni(), temp100AddIGV, empNumDec);

                        createFacVenDet(newFacCabCod, i + 1, claProCod, subClaProCod, proCod,
                                tempFvd.getFacVenDetCan(), tempFvd.getFacVenDetValUni());

                        reducirproStkPreVen(claProCod, subClaProCod, proCod, BigDecimalUtil.get(tempFvd.getFacVenDetCan(), empNumDec));
                        tempDets++;
                        tempFacVenCabValTot = BigDecimalUtil.sumar(tempFacVenCabValTot, BigDecimalUtil.multiplicar(tempPreUniAddIGV, tempFvd.getFacVenDetCan(), empNumDec));

                    }
                    //aplicando descuento
                    tempFacVenCabValTot = BigDecimalUtil.multiplicar(tempFacVenCabValTot, tempPorDes, empNumDec);

                    //calculando Neto y IGV
                    tempFacVenCabValNet = BigDecimalUtil.dividir(tempFacVenCabValTot, tempPorIGV, empNumDec);
                    tempFacVenCabValIGV = BigDecimalUtil.multiplicar(tempFacVenCabValNet, tempPorIGV, empNumDec);

                    //cambiando los valores de total y subtotal con respecto a sus detalles
                    setFacVenCabTot(newFacCabCod, tempFacVenCabValNet);
                    setFacVenCabSubTot(newFacCabCod, tempFacVenCabValIGV);
                    break;
                }
            }

            //reinicianod variables
            tempFacVenCabValTot = BigDecimal.ZERO;
        }
    }

    public void setGuiRemRemNum(int facVenCabCod, String guiRemRemNum) {
        EnP2mGuiaRemRemitente grr = new EnP2mGuiaRemRemitente();
        grr.setGuiRemRemNum(guiRemRemNum);
        EnP1mFacturaVentaCab fvc = facVenCabDao.getById(facVenCabCod);
        fvc.setEnP2mGuiaRemRemitente(grr);
        facVenCabDao.update(fvc);
    }

    public void setGuiRemTraNum(int facVenCabCod, String guiRemTraNum) {
        EnP2mGuiaRemTransportista grt = new EnP2mGuiaRemTransportista();
        grt.setGuiRemTraNum(guiRemTraNum);
        EnP1mFacturaVentaCab fvc = facVenCabDao.getById(facVenCabCod);
        fvc.setEnP2mGuiaRemTransportista(grt);
        facVenCabDao.update(fvc);
    }

    public void setCatRutCod(int facVenCabCod, int catRutCod) {
        EnP1mCatalogoRuta cr = new EnP1mCatalogoRuta();
        cr.setCatRutCod(catRutCod);
        EnP1mFacturaVentaCab fvc = facVenCabDao.getById(facVenCabCod);
        fvc.setEnP1mCatalogoRuta(cr);
        facVenCabDao.update(fvc);
    }

    /**
     * Agrega un adicional al codigo de la factura 001-000001 -> 001-000002
     * add=1
     *
     * @param facVenCabCod
     * @param add
     * @return
     */
    public String GenerateFacVenCabNum(String facVenCabCod, int add) {
        int last6digits = Integer.parseInt(facVenCabCod.substring(4));
        last6digits = last6digits + add;
        String lote = facVenCabCod.substring(0, 4); //lote xxx-
        String code = String.format("%06d", last6digits); //formato de 6 digitos con 0s a la izquierda
        return lote + code;
    }

    private void setFacVenCabTot(int facVenCabCod, BigDecimal value) {
        EnP1mFacturaVentaCab fvc = facVenCabDao.getById(facVenCabCod);
        fvc.setFacVenCabTot(value);
        facVenCabDao.update(fvc);
    }

    private void setFacVenCabSubTot(int facVenCabCod, BigDecimal value) {
        EnP1mFacturaVentaCab fvc = facVenCabDao.getById(facVenCabCod);
        fvc.setFacVenCabSubTot(value);
        facVenCabDao.update(fvc);
    }

    public List<EnP1tFacturaVentaDet> agruparFacVenDets(int[] cods) {

        List<EnP1tFacturaVentaDet> result = new ArrayList<>();
        EnP1mFacturaVentaCab fvc;
        boolean flag = false;
        int index = -1;
        BigDecimal oldValue;
        for (int codFactura : cods) {
            fvc = facVenCabDao.getById(codFactura);
            if (fvc != null) {
                for (EnP1tFacturaVentaDet detalle : (Set<EnP1tFacturaVentaDet>) fvc.getEnP1tFacturaVentaDets()) {
                    for (int i = 0; i < result.size(); i++) {
                        if (result.get(i).getEnP2mProducto().getId().getClaProCod().equals(
                                detalle.getEnP2mProducto().getId().getClaProCod())) {
                            flag = true;
                            index = i;
                            break;
                        }
                    }
                    if (flag) {
                        oldValue = result.get(index).getFacVenDetCan();
                        result.get(index).setFacVenDetCan(
                                BigDecimalUtil.sumar(oldValue, detalle.getFacVenDetCan()));
                    } else {
                        result.add(detalle);
                    }
                    flag = false;
                    index = -1;
                }
            }
        }
        return result;
    }

    public List<EnP1tFacturaVentaDet> agruparFacVenDets(Set<EnP1mFacturaVentaCab> cabs) {
        List<EnP1mFacturaVentaCab> facVenCabs = new ArrayList<>();
        facVenCabs.addAll(cabs);

        List<EnP1tFacturaVentaDet> result = new ArrayList<>();

        boolean flag = false;
        int index = -1;
        BigDecimal oldValue;
        BigDecimal newValue;
        List<EnP1tFacturaVentaDet> temp = new ArrayList<>();

        for (int i = 0; i < facVenCabs.size(); i++) {
            temp.addAll(facVenCabs.get(i).getEnP1tFacturaVentaDets());
            for (int j = 0; j < temp.size(); j++) {
                for (int k = 0; k < result.size(); k++) {
                    if (result.get(k).getEnP2mProducto().getId().getProCod().equals(
                            temp.get(j).getEnP2mProducto().getId().getProCod())
                            && result.get(k).getEnP2mProducto().getId().getClaProCod().equals(
                            temp.get(j).getEnP2mProducto().getId().getClaProCod())
                            && result.get(k).getEnP2mProducto().getId().getSubClaProCod().equals(
                            temp.get(j).getEnP2mProducto().getId().getSubClaProCod())) {

                        flag = true;
                        index = k;
                    }
                }
                if (flag) {
                    oldValue = result.get(index).getFacVenDetCan();
                    newValue = BigDecimalUtil.sumar(oldValue, temp.get(j).getFacVenDetCan());
                    result.get(index).setFacVenDetCan(newValue);
                } else {
                    EnP1tFacturaVentaDet tempDet = new EnP1tFacturaVentaDet();
                    BigDecimal cantidad = temp.get(j).getFacVenDetCan();
                    BigDecimal precio = temp.get(j).getFacVenDetValUni();
                    tempDet.setEnP2mProducto(temp.get(j).getEnP2mProducto());
                    tempDet.setFacVenDetCan(cantidad);
                    tempDet.setFacVenDetValUni(precio);
                    result.add(tempDet);
                }
                flag = false;
                index = -1;
            }
            temp.clear();
        }
        return result;
    }

    public List<String[]> agruparFacVenDetsString(Set<EnP1mFacturaVentaCab> cabs) {
        List<EnP1mFacturaVentaCab> facVenCabs = new ArrayList<>();
        for (EnP1mFacturaVentaCab cab : cabs) {
            facVenCabs.add(cab);
        }

        List<String[]> result = new ArrayList<>();

        boolean flag = false;
        int index = -1;
        BigDecimal oldValue;
        BigDecimal newValue;
        List<EnP1tFacturaVentaDet> temp = new ArrayList<>();

        for (int i = 0; i < facVenCabs.size(); i++) {
            temp.addAll(facVenCabs.get(i).getEnP1tFacturaVentaDets());
            for (int j = 0; j < temp.size(); j++) {
                for (int k = 0; k < result.size(); k++) {
                    if (result.get(k)[0].equals(temp.get(j).getEnP2mProducto().getId().getProCod())) {
                        flag = true;
                        index = k;
                    }
                }
                if (flag) {
                    oldValue = BigDecimalUtil.get(result.get(index)[1]);
                    newValue = BigDecimalUtil.sumar(oldValue, temp.get(j).getFacVenDetCan(), 2);
                    result.get(index)[1] = newValue.toString();
                } else {
                    String[] tempItm = new String[4];
                    tempItm[0] = temp.get(j).getEnP2mProducto().getId().getProCod();
                    tempItm[1] = temp.get(j).getFacVenDetCan().toString();
                    tempItm[2] = temp.get(j).getEnP2mProducto().getTaGzzUnidadMed().getUniMedSim();
                    tempItm[3] = temp.get(j).getEnP2mProducto().getProDet();
                    result.add(tempItm);
                }
                flag = false;
                index = -1;
            }
            temp.clear();
        }
        return result;
    }

}
