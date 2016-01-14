package com.allgreensolutions.sistema.dao.jpa;

import com.allgreensolutions.sistema.dao.DAO;
import com.allgreensolutions.sistema.util.HibernateUtil;
import java.util.List;
import javax.persistence.EntityManager;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author GABRIEL
 * @param <T>
 * @param <I>
 */
public abstract class DAOJPA <T, I> implements DAO<T, I> {

    @Override
    public T save(T entity) {
        T saved;
        
        Session session = HibernateUtil.openSession();
//        if(isUserExists(item)) return false;        
        
        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            session.merge(entity);            
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }        
        return null;
    }

    @Override
    public boolean remove(Class<T> classe, I pk) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<T> getAll(Class<T> classe) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<T> getAll(Class<T> classe, int min, int max) {
        return HibernateUtil.openSession()
                .createQuery("select x from " + classe.getSimpleName() + " x order by x.codigo desc")
                .setFirstResult(min).setMaxResults(max).list();
    }

    @Override
    public T getById(Class<T> classe, I pk) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public T getFirst(Class<T> classe) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public T getLast(Class<T> classe) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public EntityManager getEntityManager() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
