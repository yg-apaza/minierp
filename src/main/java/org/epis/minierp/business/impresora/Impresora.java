package org.epis.minierp.business.impresora;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.epis.minierp.business.ventas.EnP1mFacturaVentaBusiness;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.logistica.EnP2mDocumentoTransportistaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mDocumentoClienteDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mDocumentoCliente;
import org.epis.minierp.model.EnP1mDocumentoClienteId;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP2mDocumentoTransportistaId;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;
import org.epis.minierp.util.BigDecimalUtil;
import org.epis.minierp.util.DateUtil;
import static org.epis.minierp.util.NumberToLetterConverter.convertNumberToLetter;
import static org.epis.minierp.util.NumberToLetterConverter.convertNumberToLetter;

public class Impresora {

    String extension = ".prn";
    String path;
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
    DateFormat fecha = new SimpleDateFormat("dd/MM/yyyy");
    Date date = new Date();
    DecimalFormat df = new DecimalFormat("0.00");

    EnP1mEmpresaDao empDao;
    EnP1mClienteDao cliDao;
    EnP1mFacturaVentaBusiness facVenBuss;
    int tipCod = 1;
    String cliNom, cliDir, cliRuc, fecEmi;
    //Factura
    String cliCod, conPag, fecVen, venZon, numSec, dis, rut, traNom;
    String proCod;
    int proNum;
    String proUni, proDes, proDes1, proDes2;
    Double proCan, proValUni, proValNet;
    String totLet;
    Double neto, igv, total;
    //Boleta
    String venRut, pdv, obs;
    //Guia remisión
    String punPar, punLle;
    String traLic, traPla, cliRUC;
    String ven, zon, con, oc, facNum, hora, numInt;
    DateFormat converter;
    int empNumDec;

    public Impresora(String path) {
        this.path = path;
        empDao = new EnP1mEmpresaDao();
        cliDao = new EnP1mClienteDao();
        converter = new SimpleDateFormat("dd/MM/yyyy");
        converter.setTimeZone(TimeZone.getTimeZone("UTC"));
        facVenBuss = new EnP1mFacturaVentaBusiness();
        empNumDec = empDao.getById(01).getEmpNumDec();
    }

    public String generateFactura(int cod) {
        empDao = new EnP1mEmpresaDao();
        EnP1mEmpresa e = empDao.getById(01);

        String file = "Factura_" + sf.format(date.getTime()) + extension;
        ImpresoraMatricial fac = new ImpresoraMatricial(file, path, "factura");

        try {
            EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);

            String myDateEmi = converter.format(f.getFacVenCabFecEmi());
            String myDateVen = converter.format(f.getFacVenCabFecVen());

            cliNom = f.getEnP1mCliente().getCliNom();
            cliDir = f.getEnP1mCliente().getCliDir();
            cliCod = f.getEnP1mCliente().getCliCod();
            try {
                String tempRUC = (new EnP1mDocumentoClienteDao()).getById(new EnP1mDocumentoClienteId(cliCod, 2)).getDocCliNum();
                if (!tempRUC.trim().equals("")) {
                    cliRuc = "RUC: " + tempRUC;
                } else {
                    cliRuc = "-";
                }
            } catch (Exception e1) {
                cliRuc = "-";
            }

            fecEmi = myDateEmi;
            fac.writeFacSobCab(cliNom, cliDir, cliRuc, fecEmi);

            conPag = f.getTaGzzMetodoPagoFactura().getMetPagDet();
            fecVen = myDateVen;
            venZon = f.getEnP1mUsuario().getUsuNom();
            numSec = " ";
            dis = " ";
            try {
                rut = Integer.toString(f.getEnP1mCatalogoRuta().getCatRutCod());
            } catch (Exception e2) {
                rut = "-";
            }
            try {
                traNom = f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraNom();
            } catch (Exception e3) {
                traNom = "-";
            }

            fac.writeFacCabecera(cliCod, conPag, fecVen, venZon, numSec, dis, rut, traNom);

            proNum = 0;
            List<EnP1tFacturaVentaDet> detalles = (new EnP1mFacturaVentaCabDao()).getFacVenDets(cod);
            for (EnP1tFacturaVentaDet d : detalles) {
                proNum++;
                proCod = d.getEnP2mProducto().getId().getProCod();
                proCan = BigDecimalUtil.get(d.getFacVenDetCan());
                proUni = d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedSim();
                proDes = d.getEnP2mProducto().getProDet();
                proValUni = BigDecimalUtil.get(d.getFacVenDetValUni());
                proDes1 = Integer.toString(f.getFacVenPorDes()) + "%";
                proDes2 = "0%";
                proValNet = proCan * proValUni;
                fac.writeFacDetalle(tipCod, proNum, proCod, proCan, proUni, proDes, proValUni, proDes1, proDes2, df.format(proValNet));
            }
            fac.addLines(e.getEmpNumDetFacVen() - proNum - 1);
            neto = BigDecimalUtil.get(f.getFacVenCabTot());
            igv = BigDecimalUtil.get(BigDecimalUtil.multiplicar(f.getFacVenCabTot(), BigDecimalUtil.get(0.18, empNumDec), empNumDec));
            total = BigDecimalUtil.get(BigDecimalUtil.multiplicar(f.getFacVenCabTot(), new BigDecimal("1.18"), empNumDec));
            totLet = convertNumberToLetter(total);
            fac.writeFacLetras(totLet);

            fac.writeFacTotal(df.format(neto), df.format(igv), df.format(total));
            fac.close();
        } catch (IOException ex) {
            Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }
        return file;
    }

    public String[] generateFacturas(int[] cods) {
        empDao = new EnP1mEmpresaDao();
        EnP1mEmpresa e = empDao.getById(01);
        String file = "Facturas_" + sf.format(date.getTime()) + extension;
        ImpresoraMatricial fac = new ImpresoraMatricial(file, path, "factura");

        try {
            for (int cod : cods) {
                EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
                String myDateEmi = converter.format(f.getFacVenCabFecEmi());
                String myDateVen = converter.format(f.getFacVenCabFecVen());

                cliCod = f.getEnP1mCliente().getCliCod();
                try {
                    cliNom = f.getEnP1mCliente().getCliRazSoc();
                } catch (Exception fa) {
                    cliNom = "-";
                }
                try {
                    cliDir = f.getEnP1mCliente().getCliDir();
                } catch (Exception fa) {
                    cliDir = "-";
                }
                try {
                    String tempRUC = (new EnP1mDocumentoClienteDao()).getById(new EnP1mDocumentoClienteId(cliCod, 2)).getDocCliNum();
                    if (!tempRUC.trim().equals("")) {
                        cliRuc = "RUC: " + tempRUC;
                    } else {
                        cliRuc = "-";
                    }
                } catch (Exception fa) {
                    cliRuc = "-";
                }
                fecEmi = myDateEmi;
                fac.writeFacSobCab(cliNom, cliDir, cliRuc, fecEmi);

                conPag = f.getTaGzzMetodoPagoFactura().getMetPagDet();
                fecVen = myDateVen;
                venZon = f.getEnP1mUsuario().getUsuNom();
                numSec = " ";
                dis = " ";
                try {
                    rut = Integer.toString(f.getEnP1mCatalogoRuta().getCatRutCod());
                } catch (Exception e2) {
                    rut = "-";
                }
                try {
                    traNom = f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraNom();
                } catch (Exception e3) {
                    traNom = "-";
                }
                fac.writeFacCabecera(cliCod, conPag, fecVen, venZon, numSec, dis, rut, traNom);

                proNum = 0;
                List<EnP1tFacturaVentaDet> detalles = (new EnP1mFacturaVentaCabDao()).getFacVenDets(cod);
                for (EnP1tFacturaVentaDet d : detalles) {
                    proNum++;
                    proCod = d.getEnP2mProducto().getId().getProCod();
                    proCan = BigDecimalUtil.get(d.getFacVenDetCan());
                    proUni = d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedSim();
                    proDes = d.getEnP2mProducto().getProDet();
                    proValUni = BigDecimalUtil.get(d.getFacVenDetValUni());
                    proDes1 = Integer.toString(f.getFacVenPorDes()) + "%";
                    proDes2 = "0%";
                    proValNet = proCan * proValUni;
                    fac.writeFacDetalle(tipCod, proNum, proCod, proCan, proUni, proDes, proValUni, proDes1, proDes2, df.format(proValNet));
                }
                fac.addLines(e.getEmpNumDetFacVen() - proNum - 1);
                neto = BigDecimalUtil.get(f.getFacVenCabTot());
                igv = BigDecimalUtil.get(BigDecimalUtil.multiplicar(f.getFacVenCabTot(), BigDecimalUtil.get(0.18, empNumDec), empNumDec));
                total = BigDecimalUtil.get(BigDecimalUtil.multiplicar(f.getFacVenCabTot(), new BigDecimal("1.18"), empNumDec));
                totLet = convertNumberToLetter(total);
                fac.writeFacLetras(totLet);
                fac.writeFacTotal(df.format(neto), df.format(igv), df.format(total));
            }
            fac.close();
        } catch (IOException ex) {
            Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }
        String params[] = {file, fac.getName()};
        return params;
    }

    public String[] generateBoletas(int[] cods) {
        empDao = new EnP1mEmpresaDao();
        EnP1mEmpresa e = empDao.getById(01);
        String cliDni;
        String file = "Boletas_" + sf.format(date.getTime()) + extension;
        ImpresoraMatricial bol = new ImpresoraMatricial(file, path, "boleta");

        try {
            for (int cod : cods) {
                EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
                String myDateEmi = converter.format(f.getFacVenCabFecEmi());
                String myDateVen = converter.format(f.getFacVenCabFecVen());

                cliNom = f.getEnP1mCliente().getCliRazSoc();
                cliDir = f.getEnP1mCliente().getCliDir();
                fecEmi = myDateEmi;
                bol.writeBolSobCab(cliNom, cliDir, fecEmi);

                cliCod = f.getEnP1mCliente().getCliCod();
                conPag = f.getTaGzzMetodoPagoFactura().getMetPagDet();
                fecVen = myDateVen;

                try {
                    venRut = Integer.toString(f.getEnP1mCatalogoRuta().getCatRutCod());
                } catch (Exception e2) {
                    venRut = "-";
                }

                pdv = " ";

                try {
                    String tempDNI = (new EnP1mDocumentoClienteDao()).getById(new EnP1mDocumentoClienteId(cliCod, 1)).getDocCliNum();
                    if (!tempDNI.trim().equals("")) {
                        cliDni = "DNI: " + tempDNI;
                    } else {
                        cliDni = "";
                    }

                } catch (Exception ee) {
                    cliDni = "-";
                }
                obs = f.getFacVenCabObs() + cliDni;

                bol.writeBolCabecera(cliCod, conPag, fecVen, venRut, pdv, obs);

                proNum = 0;
                List<EnP1tFacturaVentaDet> detalles = (new EnP1mFacturaVentaCabDao()).getFacVenDets(cod);
                double tempValorTotal = 0;
                for (EnP1tFacturaVentaDet d : detalles) {
                    proNum++;
                    proCod = d.getEnP2mProducto().getId().getProCod();
                    proCan = BigDecimalUtil.get(d.getFacVenDetCan());
                    proUni = d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedSim();
                    proDes = d.getEnP2mProducto().getProDet();
                    proValUni = BigDecimalUtil.get(d.getFacVenDetValUni());
                    proDes1 = Integer.toString(f.getFacVenPorDes());
                    proValNet = BigDecimalUtil.get(BigDecimalUtil.multiplicar(proCan, proValUni, empNumDec));
                    tempValorTotal = tempValorTotal + proValNet;
                    bol.writeBolDetalle(tipCod, proNum, proCod, proCan, proUni, proDes, proValUni, proDes1, df.format(proValNet));
                }
                bol.addLines(e.getEmpNumDetBolVen() - proNum);
                total = tempValorTotal;
                bol.writeBolTotal(df.format(total));
            }
            bol.close();
        } catch (IOException ex) {
            Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }
        String params[] = {file, bol.getName()};
        return params;
    }

    public String[] generateGuiaRemision(int[] cods) {
        empDao = new EnP1mEmpresaDao();
        EnP1mEmpresa e = empDao.getById(01);
        String file = "Remision_" + sf.format(date.getTime()) + extension;
        ImpresoraMatricial rem = new ImpresoraMatricial(file, path, "remision");
        try {
            for (int cod : cods) {

                EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
                EnP2mGuiaRemTransportista guiaTra = f.getEnP2mGuiaRemTransportista();
                String myDateEmi = converter.format(f.getFacVenCabFecEmi());
                String myDateVen = converter.format(f.getFacVenCabFecVen());
                punPar = empDao.getAll().get(0).getEmpDomFis();

                if (guiaTra == null) {
                    traNom = " ";
                    traLic = " ";
                    traPla = " ";
                    cliCod = " ";
                    cliNom = " ";
                    punLle = " ";
                } else {
                    traNom = f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraNom() + " "
                            + f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraApePat() + " "
                            + f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraApeMat();

                    EnP1mCliente cli = cliDao.getById(f.getEnP2mGuiaRemTransportista().getGuiRemTraDes());
                    cliCod = cli.getCliCod();
                    try {
                        String tempRUC = (new EnP1mDocumentoClienteDao()).getById(new EnP1mDocumentoClienteId(cliCod, 2)).getDocCliNum();
                        if (!tempRUC.trim().equals("")) {
                            cliRUC = "RUC: " + tempRUC + "\n";
                        } else {
                            cliRUC = "-\n";
                        }
                    } catch (Exception ee) {
                        cliRUC = "-\n";
                    }
                    cliNom = cli.getCliRazSoc();
                    punLle = cli.getCliDir();

                    String traCod = f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraCod();
                    try {
                        traLic = (new EnP2mDocumentoTransportistaDao()).getById(new EnP2mDocumentoTransportistaId(3, traCod)).getDocTraNum();
                    } catch (Exception p) {
                        traLic = "-";
                    }
                    try {
                        traPla = f.getEnP2mGuiaRemTransportista().getEnP2mUnidadTransporte().getUniTraNumPla() + " / "
                                + f.getEnP2mGuiaRemTransportista().getEnP2mUnidadTransporte().getUniTraMar() + " / "
                                + f.getEnP2mGuiaRemTransportista().getEnP2mUnidadTransporte().getUniTraMod();
                    } catch (Exception g) {
                        traPla = "-";
                    }
                }

                Set<EnP1mFacturaVentaCab> FacVenCabs = f.getEnP2mGuiaRemTransportista().getEnP1mFacturaVentaCabs();

                if (FacVenCabs.size() > 1) {
                    cliNom = "Varios";
                    cliRUC = "-\n";
                }

                rem.writeGuiRemSobCab(cliNom, cliRUC, punPar, punLle, traNom, traLic, traPla);

                fecVen = myDateVen;
                ven = f.getEnP1mUsuario().getUsuCod();
                zon = " ";
                con = f.getTaGzzTipoPagoFactura().getTipPagDet();
                oc = " ";
                facNum = "";
                hora = DateUtil.getHoraActual();
                numInt = " ";
                rem.writeGuiRemCabecera(fecVen, ven, zon, con, cliCod, oc, facNum, hora, numInt);

                proNum = 0;

                //junta detalles
                List<String[]> listaDets = facVenBuss.agruparFacVenDetsString(FacVenCabs);

                for (String[] obj : listaDets) {
                    proNum++;
                    proCod = obj[0];
                    proCan = Double.parseDouble(obj[1]);
                    proUni = obj[2];
                    proDes = obj[3];
                    proValUni = 0.0;
                    proDes1 = "";
                    proValNet = proCan * proValUni;

                    rem.writeGuiRemDetalle(tipCod, proNum, proCod, proCan, proUni, proDes, proDes1);
                }
                rem.addLines(e.getEmpNumDetGuiRemTra() - proNum);
                rem.writeGuiRemMotTra(Integer.toString(f.getEnP2mGuiaRemRemitente().getTaGzzMotivoTraslado().getMotTraCod()));
            }
            rem.close();
        } catch (IOException ex) {
            System.out.println("ERROR IMPRIMIENDO GUIA DE REMISION");
        }
        String params[] = {file, rem.getName()};
        return params;
    }

    //La impresora debe ser un recursos compartido
    public void sendToPrinter(File f, String printerName) {
        try {
            //String printerName;
            String ipAddress = "localhost";
            String file = f.getAbsolutePath();

            //PrintService printer = PrintServiceLookup.lookupDefaultPrintService();
            //printerName = printer.getName();
            //String printerDevice = "\\\\" + ipAddress + "\\" + printerName;
            String printCmd = "print /d:\\\\" + ipAddress + "\\" + printerName + " \"" + file + "\"";
            Process proceso = Runtime.getRuntime().exec(printCmd);
        } catch (IOException ex) {
            Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
