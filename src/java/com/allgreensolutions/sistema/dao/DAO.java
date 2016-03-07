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

    T salvar(T entity);

    boolean excluir(Class<T> classe, I pk);

    List<T> getAll(Class<T> classe);

    List<T> getAll(Class<T> classe, int min, int max);

    T buscarPorCodigo(Class<T> classe, I pk);
    
    T getFirst(Class<T> classe);

    T getLast(Class<T> classe);

    EntityManager getEntityManager();
}
