package com.portfolio.portfolio.Service;

import com.portfolio.portfolio.DTO.ISkillService;
import com.portfolio.portfolio.Entity.Skill;
import com.portfolio.portfolio.Repository.ISkillRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Limberth
 */
@Service
public class SkillService implements ISkillService {
    @Autowired //autowired es la inyección de dependencia
    private ISkillRepository iSkillRepository;

    @Override
    public List<Skill> getSkills() {
        List<Skill> skills=iSkillRepository.findAll();
        return skills;
    }

    @Override
    public Skill findSkills(Integer id) {
       return iSkillRepository.findById(id).orElse(null);
    }

}
