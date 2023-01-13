package com.portfolio.portfolio.Entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Limberth
 */
@Entity
@Table(name = "proyecto")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Proyecto.findAll", query = "SELECT p FROM Proyecto p"),
    @NamedQuery(name = "Proyecto.findByid", query = "SELECT p FROM Proyecto p WHERE p.id = :id")})

public class Proyecto implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "nombre")
    private String nombre;
    @Size(max = 45)
    @Column(name = "enlace_deploy")
    private String enlaceDeploy;
    @Size(max = 45)
    @Column(name = "enlace_repo")
    private String enlaceRepo;
    @Size(max = 45)
    @Column(name = "imagen")
    private String imagen;
    @Size(max = 45)
    @Column(name = "id_persona")
    private Integer id_persona;
    
    public Proyecto() {
    }

    public Proyecto(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEnlaceDeploy() {
        return enlaceDeploy;
    }

    public void setEnlaceDeploy(String enlaceDeploy) {
        this.enlaceDeploy = enlaceDeploy;
    }

    public String getEnlaceRepo() {
        return enlaceRepo;
    }

    public void setEnlaceRepo(String enlaceRepo) {
        this.enlaceRepo = enlaceRepo;
    }

   public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }


    public Integer getIdPersona() {
        return id_persona;
    }

    public void setIdPersona(Integer id_persona) {
        this.id_persona = id_persona;
    }


    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Proyecto)) {
            return false;
        }
        Proyecto other = (Proyecto) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.portfolio.portfolio.Entity.Proyecto[ id=" + id + " ]";
    }
    
}
