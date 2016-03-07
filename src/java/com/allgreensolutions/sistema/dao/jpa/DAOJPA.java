package com.allgreensolutions.sistema.dao.jpa;

import com.allgreensolutions.sistema.dao.DAO;
import com.allgreensolutions.sistema.model.Item;
import com.allgreensolutions.sistema.util.HibernateUtil;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.sql.DataSource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author GABRIEL
 * @param <T>
 * @param <I>
 */
public abstract class DAOJPA<T, I> implements DAO<T, I> {

    @Override
    public T salvar(T entity) {
        T saved;

        Session session = HibernateUtil.openSession();
//        if(isUserExists(item)) return false;        

        Transaction transaction = null;
        try {
            transaction = session.getTransaction();
            transaction.begin();
            session.merge(entity);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return null;
    }

    @Override
    public boolean excluir(Class<T> classe, I pk) {
        Session sessao = HibernateUtil.openSession();
        T entidade;
//        Item item;
        try {
            entidade = (T) sessao.load(classe, (Serializable)pk);
//            item = (Item) sessao.load(Item.class, (Serializable) pk);
            sessao.getTransaction().begin();
            sessao.delete(entidade);
//            sessao.createQuery("DELETE FROM " + classe.getSimpleName() + " x WHERE x.codigo=" + pk).executeUpdate();
            sessao.getTransaction().commit();
        } finally {
            sessao.close();
            System.out.println("FECHOU excluir");
        }

        return true;
    }

    @Override
    public List<T> getAll(Class<T> classe) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<T> getAll(Class<T> classe, int firstResult, int maxResults) {
        Session sessao = HibernateUtil.openSession();
        try {
            return sessao.createQuery("select x from " + classe.getSimpleName() + " x order by x.codigo DESC")
                    .setMaxResults(maxResults)
                    .setFirstResult(firstResult).list();
        } finally {
            sessao.close();
            System.out.println("FECHOU");
        }
    }

    @Override
    public T buscarPorCodigo(Class<T> classe, I pk) {
        Session sessao = HibernateUtil.openSession();
        try {
            return (T) sessao
                    .createQuery("SELECT x FROM " + classe.getSimpleName() + " x WHERE x.codigo = " + pk)
                    .uniqueResult();
        } finally {
            sessao.close();
            System.out.println("FECHOU buscarPorCodigo");
        }
    }

    @Override
    public T getFirst(Class<T> classe) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public T getLast(Class<T> classe) {
        return (T) HibernateUtil.openSession()
                .createQuery("select MAX(x) from " + classe.getSimpleName() + " x")
                .uniqueResult();
    }

    @Override
    public EntityManager getEntityManager() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
