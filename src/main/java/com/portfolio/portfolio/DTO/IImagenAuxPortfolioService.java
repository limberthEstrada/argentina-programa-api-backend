/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.portfolio.portfolio.DTO;

import com.portfolio.portfolio.Entity.ImagenAuxPortfolio;
import java.util.List;

/**
 *
 * @author Limberth
 */
public interface IImagenAuxPortfolioService {
    public List<ImagenAuxPortfolio> getImagenAuxPortfolios();
    public ImagenAuxPortfolio findImagenAuxPortfolio (Integer id);
}
