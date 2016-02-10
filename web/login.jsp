<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
        <title>AllGreen Sistema</title>
        <link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="resources/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
        <script src="resources/bootstrap/js/bootstrap.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <style>
            html,body{width: 100%;height: 100%;;overflow: hidden;background-color: #E6E6E6;}
            input{outline-color: black;}
            select option:hover{background-color: black;}  

            .content{margin-top: 15px;}
            .cinza1{background-image:none;background-color:#f8f5f5;text-decoration:none;border:none;}
            .cinza2{background-image:none;background-color:#E6E6E6;text-decoration:none;border:none;}
            .login{background-color: #10893E;color: white;border-radius: 0px;}
            .login:hover{color: white;}
            .titulo{color: #777;font-weight: normal;}
            .form-control{border-radius: 0px;}
        </style>
    </head>
    <body>
<!--        <script>documents.forms[0].submit;</script>-->
        <div class="container-fluid content">
            <div class="jumbotron text-center cinza1">
                <img src="resources/img/logo-solutions2.png" class="img-responsive center-block">
                <h3 class="titulo hidden-xs">Faça login com sua conta de acesso no sistema AllGreen</h3>
                <h3 class="titulo hidden-sm hidden-md hidden-lg">Faça login no sistema AllGreen</h3>
            </div>
            <div class="panel panel-default col-xs-12 col-sm-4 col-sm-offset-4 cinza1">
                <form id="form" method="post" action="ValidarLogin" class="form-signin content" role="form">
                    <div class="row">
                        <div class="form-group col-xs-12">
                            <input value="${usuario}" name="usuario" type="text" class="form-control" placeholder="Usuário" required="" autofocus="" contenteditable="false"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-xs-12">
                            <input name="senha" type="password" class="form-control" placeholder="Senha" required="" contenteditable="false"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-xs-12">
                            <input type="submit" value="Entrar" class="btn login col-xs-12">
                        </div>	
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>