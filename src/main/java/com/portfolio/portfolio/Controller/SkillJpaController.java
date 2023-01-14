package com.portfolio.portfolio.Controller;

import com.portfolio.portfolio.Controller.exceptions.NonexistentEntityException;
import com.portfolio.portfolio.Controller.exceptions.PreexistingEntityException;
import com.portfolio.portfolio.Entity.Skill;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.CrossOrigin;
/**
 *
 * @author Limberth
 */
@RestController
@CrossOrigin(origins = "https://portfolio-angular-74cfd.web.app/")
public class SkillJpaController implements Serializable {

    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public SkillJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }

    
    @GetMapping("skills/list")
    public List<Skill> findSkillEntities() {
        return findSkillEntities(true, -1, -1);
    }

    public List<Skill> findSkillEntities(int maxResults, int firstResult) {
        return findSkillEntities(false, maxResults, firstResult);
    }

    private List<Skill> findSkillEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Skill.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }
 
    @GetMapping("skills/findById")
    public Skill findSkills(@RequestParam Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Skill.class, id);
        } finally {
            em.close();
        }
    }
    
    
}
