
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
        <!--JQuery to the Modal Dialog-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <link href="../resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../resources/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
        <script src="../resources/bootstrap/js/bootstrap.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <style>
            html,body{width: 100%;height: 100%;;overflow: hidden;background-color:#E6E6E6;}
            input{outline-color: black;}
            select option:hover{background-color: black;}  

            .content{margin-top: 40px;}
            .cinza1{background-image:none;background-color:#F2F2F2;text-decoration:none;border:none;}
            .cinza2{background-image:none;background-color:#E6E6E6;text-decoration:none;border:none;}
            .subnavbar{height:40px;border:none;}
            .formdiv{min-height:100%;}
            .divs{width:33%;float:left;padding: 0 10px;height: 80%;}
            .divs:first-child{padding-left: 0px;}
            .divs:last-child{padding-right: 0px;}
            .campos{height: 25px;padding: 0 5px;}
            .combos{height: 25px;}
            .preencimento{padding-top: 15px;}
            .botoes{border-radius: 0px;border:none;height: 25px;}
            .salvar{background-color: #10893E;color: white;}
            .cancelar{background-color: gray;color: white;}
            .image{margin-top: 30%;}
            .search{cursor: pointer;}
            .tabelamodal{width: 100%;}
            .tabelamodal thead tr{background-color: #CDCDCD;}
            .tabelamodal tbody tr:nth-child(even){background-color:#F2F2F2;}
            .tabelamodal tbody tr:hover{background-color: #E6E6E6;}

            #campos{padding: 10px 20px;overflow: auto;overflow-x:hidden;margin-left:10px;}
            #imagem{background-color: white; padding: 0 10px;overflow: hidden;height: 100vh;text-align: center;}
            #info{background-color: #1D5A34; padding: 0 10px;overflow: auto;height: 100vh;color: white;margin-right:5px;}
            #imgInp{margin-top: 20px;}
        </style>
    </head>

    <body>		
        <div class="container-fluid content">
            <nav class="navbar navbar-default navbar-fixed-top subnavbar cinza1">
                <div>
                    <div class="navbar-header">
                        <a class="navbar-brand">Cadastro de Item</a>
                    </div>
                </div>
            </nav>
            <form id="form" method="post" action="../Item/salvar">
                <div class="cinza2 formdiv row" >
                    <div class="divs">
                        <div id="campos" class="col-xs-12">
                            <input name="codigo" value="${item.codigo}" type="hidden">
                            <div class="row">Descrição</div>	
                            <div class="row">
                                <input name="itemNome" value="${item.nome}" type="text" class="cinza1 campos col-xs-12" required=""/>
                            </div>
                            <div class="row preencimento">Código / Código de Barra</div>	
                            <div class="row">
                                <input name="itemCodigoBarras" value="${item.codigoBarras}" type="text" class="cinza1 campos col-xs-12"/>
                            </div>
                            <div class="row preencimento">Valor Unitário</div>	
                            <div class="row">
                                <input name="itemValorUnitario" value="${item.valorUnitario}" type="text" class="cinza1 campos col-xs-12"/>
                            </div>
                            <div class="row preencimento">Unidade de Medida</div>	
                            <div class="row">
                                <input name="itemUm" value="${item.um}" type="text" class="cinza1 campos col-xs-10"/>
                                <span class="glyphicon glyphicon-search col-xs-2 search" data-toggle="modal" data-target="#Modal1"></span>
                            </div>
                            <div class="modal fade" id="Modal1" role="dialog">
                                <div class="modal-dialog">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Unidades de Medida</h4>
                                        </div>
                                        <div class="modal-body">
                                            <table class="tabelamodal">
                                                <thead>
                                                    <tr><th>ID</th><th>Descrição</th><th>Sigla</th></tr>
                                                </thead>
                                                <tbody>
                                                    <tr><td>0000</td><td>Metros</td><td>m</td></tr>
                                                    <tr><td>0001</td><td>Litros</td><td>l</td></tr>
                                                    <tr><td>0002</td><td>Quilogramas</td><td>kg</td></tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Sair</button>
                                        </div>
                                    </div> 
                                </div>
                            </div> 
                            <div class="row preencimento">Estoque Mínimo</div>	
                            <div class="row">
                                <input name="itemEstoqueMinimo" value="${item.estoqueMinimo}" type="text" class="cinza1 campos col-xs-12"/>
                            </div>
                            <div class="row preencimento">Fornecedor</div>	
                            <div class="row">
                                <input name="itemFornecedor" value="${item.fornecedor}" type="text" class="cinza1 campos col-xs-2"/>
                                <span class="glyphicon glyphicon-search col-xs-2 ajcol-xs-push-1 search" data-toggle="modal" data-target="#Modal2"></span>
                                <input type="text" class="cinza1 campos col-xs-8 ajcol-xs-offset-1 ajcol-xs-8"/>
                            </div>
                            <div class="modal fade" id="Modal2" role="dialog">
                                <div class="modal-dialog">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Fornecedores</h4>
                                        </div>
                                        <div class="modal-body">
                                            <table class="tabelamodal">
                                                <thead>
                                                    <tr><th>ID</th><th>Nome</th></tr>
                                                </thead>
                                                <tbody>
                                                    <tr><td>0000</td><td>Julio César</td></tr>
                                                    <tr><td>0001</td><td>Gabriel</td></tr>
                                                    <tr><td>0002</td><td>Max</td></tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Sair</button>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                            <div class="row preencimento" style="padding-top:30px;">
                                <input type="submit" value="Salvar" class="col-xs-4 col-xs-push-3 botoes salvar"/>
                                <input type="reset" value="Cancelar" class="col-xs-4 col-xs-push-4 botoes cancelar"/>
                            </div>
                        </div>
                    </div>
                    <div class="divs">
                        <div id="imagem">
                            <img id="produto" src="../resources/img/camera3.png" alt="Produto" class="img-responsive center-block image">
                            <input type="file" id="imgInp">
                            <!--<img src="camera3.png" class="img-responsive image">-->
                        </div>
                    </div>
                    <div class="divs">
                        <div id="info"></div>
                    </div>
                </div>
            </form>
        </div>
        <script>
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#produto').attr('src', e.target.result);
            }

            function readURL(input) {
                if (input.files && input.files[0]) {
                    reader.readAsDataURL(input.files[0]);
                }
            }

            $("#imgInp").change(function () {
                readURL(this);
            });
        </script>
    </body>
</html>
