package org.epis.minierp.model;
// Generated 14/10/2016 03:47:35 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * EnP1mEmpresa generated by hbm2java
 */
@Entity
@Table(name="en_p1m_empresa"
    ,catalog="episerp"
)
public class EnP1mEmpresa  implements java.io.Serializable {


     private Integer empCod;
     private String empNom;
     private String empDes;
     private String empDir;
     private String empTel;
     private String empCor;
     private double empIgv;
     private String empRuc;
     private byte[] empImg;

    public EnP1mEmpresa() {
    }

	
    public EnP1mEmpresa(String empNom, String empDir, double empIgv, String empRuc) {
        this.empNom = empNom;
        this.empDir = empDir;
        this.empIgv = empIgv;
        this.empRuc = empRuc;
    }
    public EnP1mEmpresa(String empNom, String empDes, String empDir, String empTel, String empCor, double empIgv, String empRuc, byte[] empImg) {
       this.empNom = empNom;
       this.empDes = empDes;
       this.empDir = empDir;
       this.empTel = empTel;
       this.empCor = empCor;
       this.empIgv = empIgv;
       this.empRuc = empRuc;
       this.empImg = empImg;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="EmpCod", unique=true, nullable=false)
    public Integer getEmpCod() {
        return this.empCod;
    }
    
    public void setEmpCod(Integer empCod) {
        this.empCod = empCod;
    }

    
    @Column(name="EmpNom", nullable=false, length=80)
    public String getEmpNom() {
        return this.empNom;
    }
    
    public void setEmpNom(String empNom) {
        this.empNom = empNom;
    }

    
    @Column(name="EmpDes", length=200)
    public String getEmpDes() {
        return this.empDes;
    }
    
    public void setEmpDes(String empDes) {
        this.empDes = empDes;
    }

    
    @Column(name="EmpDir", nullable=false, length=100)
    public String getEmpDir() {
        return this.empDir;
    }
    
    public void setEmpDir(String empDir) {
        this.empDir = empDir;
    }

    
    @Column(name="EmpTel", length=20)
    public String getEmpTel() {
        return this.empTel;
    }
    
    public void setEmpTel(String empTel) {
        this.empTel = empTel;
    }

    
    @Column(name="EmpCor", length=50)
    public String getEmpCor() {
        return this.empCor;
    }
    
    public void setEmpCor(String empCor) {
        this.empCor = empCor;
    }

    
    @Column(name="EmpIGV", nullable=false, precision=5)
    public double getEmpIgv() {
        return this.empIgv;
    }
    
    public void setEmpIgv(double empIgv) {
        this.empIgv = empIgv;
    }

    
    @Column(name="EmpRUC", nullable=false, length=11)
    public String getEmpRuc() {
        return this.empRuc;
    }
    
    public void setEmpRuc(String empRuc) {
        this.empRuc = empRuc;
    }

    
    @Column(name="EmpImg")
    public byte[] getEmpImg() {
        return this.empImg;
    }
    
    public void setEmpImg(byte[] empImg) {
        this.empImg = empImg;
    }




}

