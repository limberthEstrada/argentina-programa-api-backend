package com.portfolio.portfolio.Service;

import com.portfolio.portfolio.DTO.ICursoService;
import com.portfolio.portfolio.Entity.Curso;
import com.portfolio.portfolio.Repository.ICursoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Limberth
 */
@Service
public class CursoService implements ICursoService {
    @Autowired //autowired es la inyección de dependencia
    private ICursoRepository icursoRepository;

    @Override
    public List<Curso> getCursos() {
        List<Curso> cursos=icursoRepository.findAll();
        return cursos;
    }

    @Override
    public Curso findCurso(Integer id) {
       return icursoRepository.findById(id).orElse(null);
    }

}
