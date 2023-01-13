package com.portfolio.portfolio.Service;

import com.portfolio.portfolio.DTO.IProyectoService;
import com.portfolio.portfolio.Entity.Proyecto;
import com.portfolio.portfolio.Repository.IProyectoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Limberth
 */
@Service
public class ProyectoService implements IProyectoService {
    @Autowired //autowired es la inyección de dependencia
    private IProyectoRepository iproyectoRepository;

    @Override
    public List<Proyecto> getProyectos() {
        List<Proyecto> proyectos=iproyectoRepository.findAll();
        return proyectos;
    }

    @Override
    public Proyecto findProyectos(Integer id) {
       return iproyectoRepository.findById(id).orElse(null);
    }

}
