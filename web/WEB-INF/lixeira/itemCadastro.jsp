<%-- 
    Document   : itemCadastro
    Created on : 13/01/2016, 20:57:35
    Author     : GABRIEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
        <title>Cadastro de Itens</title>
        <link href="../../resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../../resources/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
        <script src="../../resources/bootstrap/js/bootstrap.js"></script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <style>
            html,body{width: 100%;height: 100%;overflow: hidden;background-color:#E6E6E6;}
            input{outline-color: black;}

            .left {position:fixed;padding:0px;top:0;left:0;height:100%;width:50px;background:#2B2B2B;overflow:hidden;z-index:151555;text-align: center} 
            .right {position:relative;margin-left:50px;}
            .options{height: 40px;padding-top: 8px;cursor: pointer;}
            .cinza1{background-image:none;background-color:#F2F2F2;text-decoration:none;border:none;}
            .cinza2{background-image:none;background-color:#E6E6E6;text-decoration:none;border:none;}
            .subnavbar{margin-top:40px;height:40px;border:none;}
            .formdiv{min-height:100%;height:89vh;}
            .divs{width:33%;float:left;padding: 0 10px;}
            .campos{height: 25px;padding: 0 5px;}
            .combos{height: 25px;}
            .preencimento{padding-top: 15px;}
            .botoes{border-radius: 0px;border:none;height: 25px;}
            .salvar{background-color: #10893E;color: white;}
            .cancelar{background-color: gray;color: white;}
            .image{margin-top: 50%;}

            #lists div.options:hover{background-color: #1D5A34}
            #menu{padding-top: 8px;height: 40px;background-color: #10893E;cursor: pointer;}
            #search{background-color: #E6E6E6;border:none;height: 20px;padding: 0 5px;}
            #campos{padding: 10px 20px;overflow: auto;height: 100vh;margin-left:10px;}
            #foto{background-color: white; padding: 0 10px;overflow: auto;height: 100vh;}
            #info{background-color: #1D5A34; padding: 0 10px;overflow: auto;height: 100vh;color: white;margin-right:5px;}
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
            <div class="cinza2 formdiv row" >
                <form id="form" name="form" method="post" action="/AllGreen/salvarDados">

                    <div class="divs col-md-12">
                        <div id="campos" class="col-xs-12">
                            <div class="row">
                                Nome
                            </div>	
                            <div class="row">
                                <input name="nome" type="text" class="cinza1 campos col-xs-12"/>
                            </div>
                            <div class="row preencimento">
                                Código / Código de Barra
                            </div>	
                            <div class="row">
                                <input type="text" class="cinza1 campos col-xs-12"/>
                            </div>
                            <div class="row preencimento">
                                Unidade de Medida
                            </div>	
                            <div class="row">
                                <select class="cinza1 combos col-xs-12">
                                    <option>Metros (m)</option>
                                    <option>Quilogramas (Kg)</option>
                                    <option>Litros (l)</option>
                                </select>
                            </div>
                            <div class="row preencimento">
                                Estoque Mínimo
                            </div>	
                            <div class="row">
                                <input type="text" class="cinza1 campos col-xs-12"/>
                            </div>
                            <div class="row preencimento">
                                Fornecedor
                            </div>	
                            <div class="row">
                                <input type="text" class="cinza1 campos col-xs-12"/>
                            </div>
                            <div class="row preencimento">
                                <div class="col-xs-5" style="padding-left: 0;">NHC</div>
                                <div class="col-xs-5 col-xs-push-2" style="padding-left: 0;">Tributação</div>
                            </div>	
                            <div class="row">
                                <select class="cinza1 combos col-xs-5">
                                    <option>Teste</option>
                                </select>
                                <select class="cinza1 combos col-xs-5 col-xs-push-2">
                                    <option>Teste</option>
                                </select>	
                            </div>
                            <div class="row preencimento" style="padding-top:30px;">
                                <input type="submit" value="Salvar" class="col-xs-4 col-xs-push-3 botoes salvar"/>
                                <input type="submit" value="Cancelar" class="col-xs-4 col-xs-push-4 botoes cancelar"/>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="divs col-md-12">
                    <div id="foto"><img src="../../resources/img/camera.png" class="img-responsive image"></div>
                </div>
                <div class="divs col-md-12">
                    <div id="info"></div>
                </div>
            </div>
        </div>
    </body>
</html>
