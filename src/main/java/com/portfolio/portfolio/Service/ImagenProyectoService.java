package com.portfolio.portfolio.Service;

import com.portfolio.portfolio.DTO.IImagenProyectoService;
import com.portfolio.portfolio.Entity.ImagenProyecto;
import com.portfolio.portfolio.Repository.IImagenProyectoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Limberth
 */
@Service
public class ImagenProyectoService implements IImagenProyectoService {
    @Autowired //autowired es la inyección de dependencia
    private IImagenProyectoRepository iimagenProyectoRepository;

    @Override
    public List<ImagenProyecto> getImagenProyectos() {
        List<ImagenProyecto> ImagenProyectos=iimagenProyectoRepository.findAll();
        return ImagenProyectos;
    }

    @Override
    public ImagenProyecto findImagenProyectos(Integer id) {
       return iimagenProyectoRepository.findById(id).orElse(null);
    }

}
