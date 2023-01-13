/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.portfolio.portfolio.Repository;

import com.portfolio.portfolio.Entity.ImagenProyecto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Limberth
 */
@Repository // mapero como repositorio
/*se extiende de jparepository para manejar repositoriso JPA
    y se pone <nomrbre_clase, tipo_clave_primaria>*/
public interface IImagenProyectoRepository extends JpaRepository<ImagenProyecto,Integer>{
    
}
