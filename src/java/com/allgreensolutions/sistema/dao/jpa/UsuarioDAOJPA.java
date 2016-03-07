package com.allgreensolutions.sistema.dao.jpa;

import com.allgreensolutions.sistema.dao.UsuarioDAO;
import com.allgreensolutions.sistema.model.Usuario;
import com.allgreensolutions.sistema.util.HibernateUtil;
import org.hibernate.Session;

/**
 *
 * @author GABRIEL
 */
public class UsuarioDAOJPA extends DAOJPA<Usuario, Integer> implements UsuarioDAO {

    @Override
    public Usuario buscarUsuario(String usuario) {
        Session sessao = HibernateUtil.openSession();
        try {
            return (Usuario) sessao
                    .createQuery("SELECT u FROM Usuario u WHERE u.usuario='" + usuario + "'")
                    .uniqueResult();
        } finally {
            sessao.close();
            System.out.println("FECHOU");
        }

    }
}
