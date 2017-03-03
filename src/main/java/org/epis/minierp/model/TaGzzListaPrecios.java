package org.epis.minierp.model;
// Generated 26/02/2017 07:56:21 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzListaPrecios generated by hbm2java
 */
public class TaGzzListaPrecios  implements java.io.Serializable {


     private int lisPreCod;
     private String lisPreDet;
     private Character estRegCod;
     private Set enP2mPrecioUnitarios = new HashSet(0);
     private Set enP1mListaPreciosUsuarioses = new HashSet(0);
     private Set enP1mUsuarios = new HashSet(0);

    public TaGzzListaPrecios() {
    }

	
    public TaGzzListaPrecios(int lisPreCod) {
        this.lisPreCod = lisPreCod;
    }
    public TaGzzListaPrecios(int lisPreCod, String lisPreDet, Character estRegCod, Set enP2mPrecioUnitarios, Set enP1mListaPreciosUsuarioses, Set enP1mUsuarios) {
       this.lisPreCod = lisPreCod;
       this.lisPreDet = lisPreDet;
       this.estRegCod = estRegCod;
       this.enP2mPrecioUnitarios = enP2mPrecioUnitarios;
       this.enP1mListaPreciosUsuarioses = enP1mListaPreciosUsuarioses;
       this.enP1mUsuarios = enP1mUsuarios;
    }
   
    public int getLisPreCod() {
        return this.lisPreCod;
    }
    
    public void setLisPreCod(int lisPreCod) {
        this.lisPreCod = lisPreCod;
    }
    public String getLisPreDet() {
        return this.lisPreDet;
    }
    
    public void setLisPreDet(String lisPreDet) {
        this.lisPreDet = lisPreDet;
    }
    public Character getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(Character estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP2mPrecioUnitarios() {
        return this.enP2mPrecioUnitarios;
    }
    
    public void setEnP2mPrecioUnitarios(Set enP2mPrecioUnitarios) {
        this.enP2mPrecioUnitarios = enP2mPrecioUnitarios;
    }
    public Set getEnP1mListaPreciosUsuarioses() {
        return this.enP1mListaPreciosUsuarioses;
    }
    
    public void setEnP1mListaPreciosUsuarioses(Set enP1mListaPreciosUsuarioses) {
        this.enP1mListaPreciosUsuarioses = enP1mListaPreciosUsuarioses;
    }
    public Set getEnP1mUsuarios() {
        return this.enP1mUsuarios;
    }
    
    public void setEnP1mUsuarios(Set enP1mUsuarios) {
        this.enP1mUsuarios = enP1mUsuarios;
    }




}

