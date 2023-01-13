package com.portfolio.portfolio.Service;

import com.portfolio.portfolio.DTO.IRedSocialService;
import com.portfolio.portfolio.Entity.RedSocial;
import com.portfolio.portfolio.Repository.IRedSocialRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Limberth
 */
@Service
public class RedSocialService implements IRedSocialService {
    @Autowired //autowired es la inyección de dependencia
    private IRedSocialRepository iredSocialRepository;

    @Override
    public List<RedSocial> getRedes() {
        List<RedSocial> redes=iredSocialRepository.findAll();
        return redes;
    }

    @Override
    public RedSocial findRedSocials(Integer id) {
       return iredSocialRepository.findById(id).orElse(null);
    }

}
