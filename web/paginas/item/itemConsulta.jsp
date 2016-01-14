<%-- 
    Document   : itemConsulta
    Created on : 13/01/2016, 22:35:35
    Author     : GABRIEL
--%>

<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.allgreensolutions.sistema.model.Item"%>
<%@page import="com.allgreensolutions.sistema.dao.ItemDAO"%>
<%@page import="com.allgreensolutions.sistema.dao.jpa.ItemDAOJPA"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
        <title>Consulta de Itens</title>
        <link href="../../resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../../resources/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
        <script src="../../resources/bootstrap/js/bootstrap.js"></script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <style>
            html,body{width: 100%;height: 100%;overflow: hidden;background-color:#E6E6E6;}
            input{outline-color: black;}

            .right {position:relative;margin-left:50px;}
            .cinza1{background-image:none;background-color:#F2F2F2;text-decoration:none;border:none;}
            .cinza2{background-image:none;background-color:#E6E6E6;text-decoration:none;border:none;}
            .subnavbar{margin-top:40px;height:40px;border:none;}
            .divs{padding: 10px 30px;}
            .combos{height: 25px;}
            .preencimento{padding-top: 15px;}
            .botoes{border-radius: 0px;border:none;height: 25px;}
            .salvar{background-color: #10893E;color: white;}
            .cancelar{background-color: gray;color: white;}
            .tabela{line-height: 40px;}
            .tabela td,th{padding: 0 5px;}
            .tabela thead th{border: 2px #E6E6E6 solid;border-bottom: none;line-height: 30px;font-size: 90%;}
            .tabela tbody th{border: 2px white solid;}
            .tabela thead tr{background-color: #CDCDCD;}
            .tabela thead th{font-weight: normal;}
            .tabela tbody tr{background-color: white;}
            .tabela tbody tr:hover{background-color: #E6E6E6;}
            .tabela thead tr th:first-child,
            .tabela tbody tr td:first-child{width: 20px;}
            .tabela tbody td:first-child{font-weight: bold;}

            #search{background-color: #E6E6E6;border:none;height: 20px;padding: 0 5px;}
            #divtable{height:500px;overflow:auto;padding-top:0;padding-right:0;margin-top:20px;}
        </style>
    </head>

    <body>	
        <div class="right">
            <nav class="navbar navbar-default navbar-fixed-top cinza1" style="margin-left:50px;">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand"><span class="glyphicon glyphicon-menu-left"></span></a>
                        <a class="navbar-brand" href="#">Itens</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="#"><input type="text" id="search" placeholder="Buscar"/></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="cinza1 subnavbar">
            </div>
            <div class="cinza2" style="margin-left:50px;">
                <div class="divs">
                    <div class="col-xs-6 col-sm-1">Brasil:</div>
                    <div class="col-xs-6 col-sm-11">
                        <select class="combos">
                            <option>Mais negociadas</option>
                        </select>
                    </div>
                </div>
                <div class="divs" id="divtable">
                    <table class="table-reponsive col-xs-12 tabela">
                        <thead>
                            <tr>
                                <th>Item</th>
                                <th>Descrição</th>
                                <th>Estoque</th>
                                <th>Unidade</th>
                                <th>Preço</th>
                                <th>Volume</th>
                                <th>Intevalo do dia</th>
                                <th>teste</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% ItemDAO dao = new ItemDAOJPA();
                               List<Item> lista = dao.getAll(Item.class, 1, 20); 
                            
                               for(Item i: lista){ %>
                                 <tr>
                                     <td> <% out.print(i.getCodigo()); %> </td>
                                     <td> <% out.print(i.getNome()); %> </td>
                                 </tr>  
                               <% } %> 
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
