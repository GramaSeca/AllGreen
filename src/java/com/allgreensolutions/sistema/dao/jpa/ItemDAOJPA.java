package com.allgreensolutions.sistema.dao.jpa;

import com.allgreensolutions.sistema.dao.ItemDAO;
import com.allgreensolutions.sistema.model.Item;
import com.allgreensolutions.sistema.util.HibernateUtil;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author GABRIEL
 */
public class ItemDAOJPA extends DAOJPA<Item, Integer> implements ItemDAO {

    @Override
    public List<Item> buscarPorCodigo(String codigo) {
        Session sessao = HibernateUtil.openSession();
        try{
            return sessao.createQuery("SELECT i FROM Item i WHERE i.codigo >= " + codigo).list();
        }finally{
            sessao.close();
            System.out.println("FECHOU buscarPorCodigo");
        }
    }

}
