package org.epis.minierp.model;
// Generated 07/10/2016 12:11:50 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * EnP1mUsuario generated by hbm2java
 */
@Entity
@Table(name="en_p1m_usuario"
    ,catalog="episerp"
)
public class EnP1mUsuario  implements java.io.Serializable {


     private String usuCod;
     private TaGzzEstadoCivil taGzzEstadoCivil;
     private TaGzzTipoUsuario taGzzTipoUsuario;
     private String usuNom;
     private String usuApePat;
     private String usuApeMat;
     private String usuLog;
     private String usuPas;
     private byte[] usuHue;
     private Date usuFecNac;
     private char usuSex;
     private char estRegCod;
     private Set enP1mPreventaCabs = new HashSet(0);
     private Set enP4mFacturaCompraCabs = new HashSet(0);
     private Set enP1mDocumentoUsuarios = new HashSet(0);
     private Set enP1mFacturaVentaCabs = new HashSet(0);

    public EnP1mUsuario() {
    }

	
    public EnP1mUsuario(String usuCod, TaGzzEstadoCivil taGzzEstadoCivil, TaGzzTipoUsuario taGzzTipoUsuario, String usuLog, String usuPas, char usuSex, char estRegCod) {
        this.usuCod = usuCod;
        this.taGzzEstadoCivil = taGzzEstadoCivil;
        this.taGzzTipoUsuario = taGzzTipoUsuario;
        this.usuLog = usuLog;
        this.usuPas = usuPas;
        this.usuSex = usuSex;
        this.estRegCod = estRegCod;
    }
    public EnP1mUsuario(String usuCod, TaGzzEstadoCivil taGzzEstadoCivil, TaGzzTipoUsuario taGzzTipoUsuario, String usuNom, String usuApePat, String usuApeMat, String usuLog, String usuPas, byte[] usuHue, Date usuFecNac, char usuSex, char estRegCod, Set enP1mPreventaCabs, Set enP4mFacturaCompraCabs, Set enP1mDocumentoUsuarios, Set enP1mFacturaVentaCabs) {
       this.usuCod = usuCod;
       this.taGzzEstadoCivil = taGzzEstadoCivil;
       this.taGzzTipoUsuario = taGzzTipoUsuario;
       this.usuNom = usuNom;
       this.usuApePat = usuApePat;
       this.usuApeMat = usuApeMat;
       this.usuLog = usuLog;
       this.usuPas = usuPas;
       this.usuHue = usuHue;
       this.usuFecNac = usuFecNac;
       this.usuSex = usuSex;
       this.estRegCod = estRegCod;
       this.enP1mPreventaCabs = enP1mPreventaCabs;
       this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
       this.enP1mDocumentoUsuarios = enP1mDocumentoUsuarios;
       this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }
   
     @Id 

    
    @Column(name="UsuCod", unique=true, nullable=false, length=15)
    public String getUsuCod() {
        return this.usuCod;
    }
    
    public void setUsuCod(String usuCod) {
        this.usuCod = usuCod;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="EstCivCod", nullable=false)
    public TaGzzEstadoCivil getTaGzzEstadoCivil() {
        return this.taGzzEstadoCivil;
    }
    
    public void setTaGzzEstadoCivil(TaGzzEstadoCivil taGzzEstadoCivil) {
        this.taGzzEstadoCivil = taGzzEstadoCivil;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="TipUsuCod", nullable=false)
    public TaGzzTipoUsuario getTaGzzTipoUsuario() {
        return this.taGzzTipoUsuario;
    }
    
    public void setTaGzzTipoUsuario(TaGzzTipoUsuario taGzzTipoUsuario) {
        this.taGzzTipoUsuario = taGzzTipoUsuario;
    }

    
    @Column(name="UsuNom", length=90)
    public String getUsuNom() {
        return this.usuNom;
    }
    
    public void setUsuNom(String usuNom) {
        this.usuNom = usuNom;
    }

    
    @Column(name="UsuApePat", length=20)
    public String getUsuApePat() {
        return this.usuApePat;
    }
    
    public void setUsuApePat(String usuApePat) {
        this.usuApePat = usuApePat;
    }

    
    @Column(name="UsuApeMat", length=20)
    public String getUsuApeMat() {
        return this.usuApeMat;
    }
    
    public void setUsuApeMat(String usuApeMat) {
        this.usuApeMat = usuApeMat;
    }

    
    @Column(name="UsuLog", nullable=false, length=30)
    public String getUsuLog() {
        return this.usuLog;
    }
    
    public void setUsuLog(String usuLog) {
        this.usuLog = usuLog;
    }

    
    @Column(name="UsuPas", nullable=false, length=80)
    public String getUsuPas() {
        return this.usuPas;
    }
    
    public void setUsuPas(String usuPas) {
        this.usuPas = usuPas;
    }

    
    @Column(name="UsuHue")
    public byte[] getUsuHue() {
        return this.usuHue;
    }
    
    public void setUsuHue(byte[] usuHue) {
        this.usuHue = usuHue;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="UsuFecNac", length=10)
    public Date getUsuFecNac() {
        return this.usuFecNac;
    }
    
    public void setUsuFecNac(Date usuFecNac) {
        this.usuFecNac = usuFecNac;
    }

    
    @Column(name="UsuSex", nullable=false, length=1)
    public char getUsuSex() {
        return this.usuSex;
    }
    
    public void setUsuSex(char usuSex) {
        this.usuSex = usuSex;
    }

    
    @Column(name="EstRegCod", nullable=false, length=1)
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="enP1mUsuario")
    public Set getEnP1mPreventaCabs() {
        return this.enP1mPreventaCabs;
    }
    
    public void setEnP1mPreventaCabs(Set enP1mPreventaCabs) {
        this.enP1mPreventaCabs = enP1mPreventaCabs;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="enP1mUsuario")
    public Set getEnP4mFacturaCompraCabs() {
        return this.enP4mFacturaCompraCabs;
    }
    
    public void setEnP4mFacturaCompraCabs(Set enP4mFacturaCompraCabs) {
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="enP1mUsuario")
    public Set getEnP1mDocumentoUsuarios() {
        return this.enP1mDocumentoUsuarios;
    }
    
    public void setEnP1mDocumentoUsuarios(Set enP1mDocumentoUsuarios) {
        this.enP1mDocumentoUsuarios = enP1mDocumentoUsuarios;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="enP1mUsuario")
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }
    
    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

    @Override
    public String toString() {
        return "EnP1mUsuario{" + "usuCod=" + usuCod + ", taGzzEstadoCivil=" + taGzzEstadoCivil + ", taGzzTipoUsuario=" + taGzzTipoUsuario + ", usuNom=" + usuNom + ", usuApePat=" + usuApePat + ", usuApeMat=" + usuApeMat + ", usuLog=" + usuLog + ", usuPas=" + usuPas + ", usuFecNac=" + usuFecNac + ", usuSex=" + usuSex + ", estRegCod=" + estRegCod + '}';
    }
}


