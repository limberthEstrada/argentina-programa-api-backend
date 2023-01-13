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
@Table(name = "red_social")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "RedSocial.findAll", query = "SELECT p FROM RedSocial p"),
    @NamedQuery(name = "RedSocial.findByid", query = "SELECT p FROM RedSocial p WHERE p.id = :id")})

public class RedSocial implements Serializable {

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
    @Column(name = "enlace")
    private String enlace;
    @Size(max = 45)
    @Column(name = "id_persona")
    private Integer id_persona;
    
    public RedSocial() {
    }

    public RedSocial(Integer id) {
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

    public String getEnlace() {
        return enlace;
    }

    public void setEnlace(String enlace) {
        this.enlace = enlace;
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
        if (!(object instanceof RedSocial)) {
            return false;
        }
        RedSocial other = (RedSocial) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.portfolio.portfolio.Entity.RedSocial[ id=" + id + " ]";
    }
    
}
