package org.epis.minierp.model;
// Generated 26/02/2017 07:56:21 PM by Hibernate Tools 4.3.1



/**
 * EnP1mListaPreciosUsuarios generated by hbm2java
 */
public class EnP1mListaPreciosUsuarios  implements java.io.Serializable {


     private EnP1mListaPreciosUsuariosId id;
     private EnP1mUsuario enP1mUsuario;
     private TaGzzListaPrecios taGzzListaPrecios;
     private String lisPreUsuDes;
     private Character estRegCod;

    public EnP1mListaPreciosUsuarios() {
    }

	
    public EnP1mListaPreciosUsuarios(EnP1mListaPreciosUsuariosId id, EnP1mUsuario enP1mUsuario, TaGzzListaPrecios taGzzListaPrecios) {
        this.id = id;
        this.enP1mUsuario = enP1mUsuario;
        this.taGzzListaPrecios = taGzzListaPrecios;
    }
    public EnP1mListaPreciosUsuarios(EnP1mListaPreciosUsuariosId id, EnP1mUsuario enP1mUsuario, TaGzzListaPrecios taGzzListaPrecios, String lisPreUsuDes, Character estRegCod) {
       this.id = id;
       this.enP1mUsuario = enP1mUsuario;
       this.taGzzListaPrecios = taGzzListaPrecios;
       this.lisPreUsuDes = lisPreUsuDes;
       this.estRegCod = estRegCod;
    }
   
    public EnP1mListaPreciosUsuariosId getId() {
        return this.id;
    }
    
    public void setId(EnP1mListaPreciosUsuariosId id) {
        this.id = id;
    }
    public EnP1mUsuario getEnP1mUsuario() {
        return this.enP1mUsuario;
    }
    
    public void setEnP1mUsuario(EnP1mUsuario enP1mUsuario) {
        this.enP1mUsuario = enP1mUsuario;
    }
    public TaGzzListaPrecios getTaGzzListaPrecios() {
        return this.taGzzListaPrecios;
    }
    
    public void setTaGzzListaPrecios(TaGzzListaPrecios taGzzListaPrecios) {
        this.taGzzListaPrecios = taGzzListaPrecios;
    }
    public String getLisPreUsuDes() {
        return this.lisPreUsuDes;
    }
    
    public void setLisPreUsuDes(String lisPreUsuDes) {
        this.lisPreUsuDes = lisPreUsuDes;
    }
    public Character getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(Character estRegCod) {
        this.estRegCod = estRegCod;
    }




}

