package com.allgreensolutions.sistema.dao;

import java.util.List;
import javax.persistence.EntityManager;

/**
 *
 * @author gabriel_arsenio
 * @param <T>
 * @param <I>
 */
public interface DAO<T, I> {

    T save(T entity);

    boolean remove(Class<T> classe, I pk);

    List<T> getAll(Class<T> classe);

    List<T> getAll(Class<T> classe, int min, int max);

    T getById(Class<T> classe, I pk);
    
    T getFirst(Class<T> classe);

    T getLast(Class<T> classe);

    EntityManager getEntityManager();
}
