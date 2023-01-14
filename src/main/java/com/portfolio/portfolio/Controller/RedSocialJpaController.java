package com.portfolio.portfolio.Controller;

import com.portfolio.portfolio.Controller.exceptions.NonexistentEntityException;
import com.portfolio.portfolio.Controller.exceptions.PreexistingEntityException;
import com.portfolio.portfolio.Entity.RedSocial;
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
public class RedSocialJpaController implements Serializable {

    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public RedSocialJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }

    
    @GetMapping("redes/list")
    public List<RedSocial> findRedSocialEntities() {
        return findRedSocialEntities(true, -1, -1);
    }

    public List<RedSocial> findRedSocialEntities(int maxResults, int firstResult) {
        return findRedSocialEntities(false, maxResults, firstResult);
    }

    private List<RedSocial> findRedSocialEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(RedSocial.class));
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
 
    @GetMapping("redes/findById")
    public RedSocial findRedSocials(@RequestParam Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(RedSocial.class, id);
        } finally {
            em.close();
        }
    }
    
    
}
