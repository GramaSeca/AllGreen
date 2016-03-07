package com.allgreensolutions.sistema.dao;

import com.allgreensolutions.sistema.model.Item;
import java.util.List;

public interface ItemDAO extends DAO<Item, Integer> {
    
    public List<Item> buscarPorCodigo(String codigo);
}
