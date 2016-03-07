/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.allgreensolutions.sistema.util;

/**
 *
 * @author Gabriel
 */
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Conexao {

    public static void getConnection() throws Exception {
        Context initContext = new InitialContext();
        Context envContext = (Context) initContext.lookup("java:/comp/env");
        DataSource ds = (DataSource) envContext.lookup("jdbc/poolConexao");

        if (initContext == null) {
            throw new Exception("Uh oh -- no context!");
        }

        if (ds == null) {
            throw new Exception("Data source not found!");
        }
    }
}
