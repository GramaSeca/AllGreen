
<%@page import="com.allgreensolutions.sistema.model.Usuario"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="../32x32.ico">
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
        <title>AllGreen - Sistema</title>
        <link href="../resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../resources/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
        <script src="../resources/bootstrap/js/bootstrap.js"></script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script type="text/javascript" src="http://getbootstrap.com/dist/js/bootstrap.js"></script>
        <style type="text/css">
            html,body{width: 100%;height: 100%;overflow: hidden;background-color:#E6E6E6;}
            input{outline-color: black;}
            iframe{width: 100%;height:100vh;border: none;}

            .right {position:relative;margin-top:40px;}
        </style>
        <link href="../resources/css/barra.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" style="border:none;border-radius:0px;">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand glyphicon glyphicon-home" href=""></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Vendas<span class="caret"></span></a>
                        </li>
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Financeiro<span class="caret"></span></a>
                        </li>
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Estoque<span class="caret"></span></a>
                        </li>
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Cadastros<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"target="iframe_content">Cadastro de Clientes</a></li>
                                <li><a href="#" target="iframe_content">Cadastro de Fornecedores</a></li>
                                <li><a href="../Item/cadastro" target="iframe_content">Cadastro de Itens</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#" target="iframe_content">Separated link</a></li>
                                <li><a href="#" target="iframe_content">One more separated link</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Consultas<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#" target="iframe_content">Consulta de Clientes</a></li>
                                <li><a href="#" target="iframe_content">Consulta de Fornecedores</a></li>
                                <li><a href="../Item/consulta" target="iframe_content">Consulta de Itens</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#" target="iframe_content">Separated link</a></li>
                                <li><a href="#" target="iframe_content">One more separated link</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Relatórios<span class="caret"></span></a>
                        </li>
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Opções<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"target="iframe_content">Op1</a></li>
                                <li><a href="#" target="iframe_content">op2</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Usuário</li>
                                <li><a href="#" target="iframe_content">Manutenção Usuário</a></li>
                                <li><a href="/AllGreen/Sair" target="" action="" type="">Sair</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="right">
            <iframe src="" name="iframe_content"></iframe>
        </div>
    </body>
</html>