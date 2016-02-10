
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@page import="java.util.List"%>
<%@page import="com.allgreensolutions.sistema.model.Item"%>
<%@page import="com.allgreensolutions.sistema.dao.jpa.ItemDAOJPA"%>
<%@page import="com.allgreensolutions.sistema.dao.ItemDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
        <title>Consulta de Itens</title>
        <link href="/AllGreen/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="/AllGreen/resources/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
        <script src="/AllGreen/resources/bootstrap/js/bootstrap.js"></script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <style>
            html,body{width: 100%;height: 100%;overflow: hidden;background-color:#E6E6E6;}
            input{outline-color: black;}

            .cinza1{background-image:none;background-color:#F2F2F2;text-decoration:none;border:none;}
            .cinza2{background-image:none;background-color:#E6E6E6;text-decoration:none;border:none;}
            .subnavbar{margin-top:40px;height:40px;border:none;}
            .divs{padding: 10px 0;padding-top: 50px;}
            .combos{height: 25px;}
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
            .tabela thead tr th:first-child,
            .tabela tbody tr td:first-child{width: 20px;}
            .tabela tbody td:first-child{font-weight: bold;}
            .tabela tbody tr:nth-child(even){background-color:#F2F2F2;}
            .tabela thead tr th:first-child{width:10%;}
            .tabela thead tr th:nth-child(4),
            .tabela thead tr th:nth-child(5),
            .tabela thead tr th:last-child{width:10%;}
            .tabela tbody tr:hover{background-color: #E6E6E6;}

            #search{background-color: #F2F2F2;border:none;height: 20px;padding: 0 5px;width: 100%;}
            #divtable{height:500px;overflow:auto;padding-top:0;padding-right:0;/*margin-top:20px;*/}
        </style>
    </head>

    <body>	
        <nav class="navbar navbar-default navbar-fixed-top cinza1">
            <div>
                <div class="navbar-header">
                    <a class="navbar-brand">Consulta de Itens</a>
                </div>
            </div>
        </nav>
        <div class="cinza2 container-fluid">
            <div class="divs row">
                <div class="col-md-4"><input type="text" id="search" placeholder="Buscar"/></div>
            </div>
            <div class="divs" id="divtable">
                <table class="table-reponsive col-xs-12 tabela">
<!--                    <thead>
                        <tr>
                            <th>Item</th>
                            <th>Descrição</th>
                            <th>Fornecedor</th>
                            <th>Preço</th>
                            <th>Unidade</th>
                            <th>Estoque</th>
                        </tr>
                    </thead>
                    <tbody>-->
                        <c:forEach var="item" items="${itens}">
                            <tr>
                                <td>${item.codigo}</td>
                            </tr>
                        </c:forEach>
<!--                    </tbody>-->
                </table>
            </div>
        </div>
    </body>
</html>
