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
@Table(name = "imagen_proyecto")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ImagenProyecto.findAll", query = "SELECT p FROM ImagenProyecto p"),
    @NamedQuery(name = "ImagenProyecto.findByid", query = "SELECT p FROM ImagenProyecto p WHERE p.id = :id")})

public class ImagenProyecto implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "nombre_imagen")
    private String nombre_imagen;
    @Size(max = 45)
    @Column(name = "id_proyecto")
    private Integer id_proyecto;
    @Size(max = 45)
    @Column(name = "fecha")
    private String fecha;
    
    public ImagenProyecto() {
    }

    public ImagenProyecto(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombreImagen() {
        return nombre_imagen;
    }

    public void setNombreImagen(String nombre_imagen) {
        this.nombre_imagen = nombre_imagen;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public Integer getIdProyecto() {
        return id_proyecto;
    }

    public void setIdProyecto(Integer id_proyecto) {
        this.id_proyecto = id_proyecto;
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
        if (!(object instanceof ImagenProyecto)) {
            return false;
        }
        ImagenProyecto other = (ImagenProyecto) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.portfolio.portfolio.Entity.ImagenProyecto[ id=" + id + " ]";
    }
    
}
