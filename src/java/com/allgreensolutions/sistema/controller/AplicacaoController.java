package com.allgreensolutions.sistema.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Gabriel
 */
@Controller
public class AplicacaoController {
    
    @RequestMapping("/menu")
    public String menu(){
        return "menu";
    }    
}
