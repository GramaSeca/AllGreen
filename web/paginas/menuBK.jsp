<%-- 
    Document   : menu
    Created on : 13/01/2016, 19:49:44
    Author     : GABRIEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
        <title>AllGreen - Sistema</title>
        <link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="resources/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
        <script src="resources/bootstrap/js/bootstrap.js"></script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <style>
            html,body{width: 100%;height: 100%;overflow: hidden;background-color:#E6E6E6;}
            .left {position:fixed;padding:0px;top:0;left:0;height:100%;width:50px;background:#2B2B2B;overflow:hidden;z-index:151555;text-align: center} 
            .right {position:relative;margin-left:50px;}
            .options{height: 40px;padding-top: 8px;cursor: pointer;}
            .cinza1{background-image:none;background-color:#F2F2F2;text-decoration:none;border:none;}
            .cinza2{background-image:none;background-color:#E6E6E6;text-decoration:none;border:none;}
            .subnavbar{margin-top:40px;height:40px;border:none;}
            .formdiv{min-height:100%;height:89vh;}
            .divs{width:33%;float:left;padding: 10px;}
            .campos{width: 100%;height: 25px;padding: 0 5px;}
            .combos{height: 25px;}
            .preencimento{padding-top: 15px;}
            .menospadding{padding-left: 0;}
            .botoes{border-radius: 0px;border:none;height: 25px;}
            .salvar{background-color: #10893E;color: white;}
            .cancelar{background-color: gray;color: white;}

            #lists div.options:hover{background-color: #1D5A34}
            #menu{padding-top: 8px;height: 40px;background-color: #10893E;cursor: pointer;}
            #search{background-color: #E6E6E6;border:none;height: 20px;padding: 0 5px;}
            #campos{width: 99%; padding: 0 20px;overflow: auto;height: 100vh;}
            #foto{background-color: white;width: 99%; padding: 0 20px;overflow: auto;height: 100vh;margin-bottom: 20px;}
            #info{background-color: #1D5A34;width: 99%; padding: 0 20px;overflow: auto;height: 100vh;color: white;margin-bottom: 20px;}
        </style>
    </head>

    <body>
        <div class="left">
            <div id="lists">
                <div id="menu"><img src="resources/img/menu.png"></div>
                <div class="options"><img src="resources/img/cashier.png"></div>
                <div class="options"><img src="resources/img/shopping-cart.png"></div>
                <div class="options"><img src="resources/img/storage.png"></div>
                <div class="options"><a href="paginas/item/itemCadastro.jsp" target="conteudo"><font color="white">INC</font></a></div>
                <div class="options"><a href="paginas/item/itemConsulta.jsp" target="conteudo"><font color="white">CON</font></a></div>
            </div>	
        </div>

        <iframe width="100%" height="100%" name="conteudo"/>
    </body>
</html>

