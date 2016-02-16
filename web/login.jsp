<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>-->
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="32x32.ico">
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
        <title>AllGreen - Login</title>
        <!--JQuery to the Modal Dialog-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="resources/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
        <script src="resources/bootstrap/js/bootstrap.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <style>
            html,body{width: 100%;height: 100%;overflow: auto;overflow-x: hidden;}
            form{margin-bottom: 0px;}
            input{outline-color: black;}
            h3{color: #BFBFBF;}
            select option:hover{background-color: black;} 

            .cinza1{background-image:none;background-color:#F2F2F2;text-decoration:none;border:none;}
            .cinza2{background-image:none;background-color:#E6E6E6;text-decoration:none;border:none;}
            .content{margin-top: 40px;}
            .erro-login{color:red;}
            .floatingdivs{height: 100%;}
            .fonte-verde{color: #10893E;}
            .login{background-color: #10893E;color: white;border-radius: 0px;}
            .login:hover{color: white;}
            .verde{background-color: #10893E;}
            .vertical-center{top: 50%;transform: translate(0%, -50%);max-height: 350px;box-shadow: 0 0 30px rgba(0, 0, 0, 0.2);}

            .form-control{border-radius: 0px;}
            .panel{border-radius: 0px;}
        </style>
    </head>
    <body>
        <div class="row">
            <div class="col-md-6 container-fluid text-center floatingdivs">
                <div class="col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 text-center vertical-center" style="box-shadow: none;">
                    <img src="resources/img/logo-allgreen.png" class="img-responsive">
                    <h1 class="fonte-verde">Organize sua empresa!</h1>
                </div>
            </div>
            <div class="row col-md-6 container-fluid floatingdivs verde">
                <div class="panel panel-default col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 text-center vertical-center">
                    <form id="form" method="post" action="ValidarLogin" class="form-signin" role="form">
                        <h3 style="margin-top: 20px;text-align: left;">Login</h3>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <input name="allgreenUsuario" value="${allgreenUsuario}" type="text" class="form-control" placeholder="Usuário" required="" autofocus="" contenteditable="false"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <input name="allgreenSenha" type="password" class="form-control" placeholder="Senha" required="" contenteditable="false"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <span name="erro" class="erro-login">${erro}</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <input type="submit" value="Entrar" class="btn login col-xs-12">
                            </div>	
                        </div>
                        <div class="row cinza2" style="height: 40px; margin-top: 10px;">
                            <div class="col-xs-12 text-center" style="line-height:40px;">Esqueceu sua senha?</div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>