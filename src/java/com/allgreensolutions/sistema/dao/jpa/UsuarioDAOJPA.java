package com.allgreensolutions.sistema.dao.jpa;

import com.allgreensolutions.sistema.dao.UsuarioDAO;
import com.allgreensolutions.sistema.model.Usuario;
import com.allgreensolutions.sistema.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author GABRIEL
 */
public class UsuarioDAOJPA extends DAOJPA<Usuario, Integer> implements UsuarioDAO {

    @Override
    public Usuario findUsuarioLogin(String usuario, String senha) {
        return (Usuario) HibernateUtil.openSession()
                .createQuery("SELECT u FROM Usuario u WHERE u.usuario='" + usuario + "' AND u.senha='" + senha + "'")
                .uniqueResult();
    }
}
