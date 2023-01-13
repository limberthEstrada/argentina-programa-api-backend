package com.portfolio.portfolio.Service;

import com.portfolio.portfolio.DTO.IImagenAuxPortfolioService;
import com.portfolio.portfolio.Entity.ImagenAuxPortfolio;
import com.portfolio.portfolio.Repository.IImagenAuxPortfolioRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Limberth
 */
@Service
public class ImagenAuxPortfolioService implements IImagenAuxPortfolioService {
    @Autowired //autowired es la inyección de dependencia
    private IImagenAuxPortfolioRepository iimagenAuxPortfolioRepository;

    @Override
    public List<ImagenAuxPortfolio> getImagenAuxPortfolios() {
        List<ImagenAuxPortfolio> imgsAux=iimagenAuxPortfolioRepository.findAll();
        return imgsAux;
    }

    @Override
    public ImagenAuxPortfolio findImagenAuxPortfolio(Integer id) {
       return iimagenAuxPortfolioRepository.findById(id).orElse(null);
    }

}
