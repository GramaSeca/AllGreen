package com.allgreensolutions.sistema.controller;

import com.allgreensolutions.sistema.dao.ItemDAO;
import com.allgreensolutions.sistema.dao.jpa.ItemDAOJPA;
import com.allgreensolutions.sistema.model.Item;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Gabriel
 */
@Controller
@RequestMapping("/item")
public class ItemController {

    @RequestMapping("/consulta")
    public String consulta(Model modelo, String pagina) {
        int intPagina = (pagina == null || pagina.equals("") ? 1 : Integer.parseInt(pagina));

        ItemDAO dao = new ItemDAOJPA();
        List<Item> itens = dao.getAll(Item.class, (intPagina - 1) * 20, 20);

        if (itens.isEmpty()) {
            intPagina--;
            itens = dao.getAll(Item.class, (intPagina - 1) * 20, 20);
        }
        
        modelo.addAttribute("itens", itens);
        modelo.addAttribute("pagina", intPagina);

        return "item/consulta";
    }
    
    @RequestMapping("/excluir")
    public String excluir(){
        System.out.println("EXCLUIR");
        return "forward:consulta";
    }
}
