package com.allgreensolutions.sistema.dao;

import com.allgreensolutions.sistema.model.Usuario;

public interface UsuarioDAO extends DAO<Usuario, Integer> {
    
    Usuario findUsuarioLogin(String usuario, String senha);
    
}
