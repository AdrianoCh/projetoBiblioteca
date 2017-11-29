<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="biblio.entidades.Funcionario" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>BIBLIOTECA - Funcion�rios</title>

    <link rel="stylesheet" href="./Style/font-awesome-4.7.0/css/font-awesome.min.css">
    <link href="./Style/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--    <link href="/css/shop-homepage.css" rel="stylesheet" type="text/css">-->

    <link href="./img/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <style>
        body {
            padding-top: 80px;
            word-wrap: break-word;
        }

        .margin-fix {
            margin-bottom: 20px;
        }
    </style>


</head>

<body>
    <div class="container">

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="http://localhost:8080/">BIBLIOTECA</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Logout</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="page-header text-center">
            <h1>
                <i class="fa fa-id-card" aria-hidden="true"></i> Funcion�rio</h1>
        </div>

        <table class="table table-inverse" id="myTable">
            <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Nome</th>
                    <th>Endere�o</th>
                    <th>Telefone</th>
                    <th>Sal�rio</th>
                    <th>Biblioteca</th>
                </tr>
            </thead>
            <tbody>
                <!--       Apenas primeiro tr deve ser mantido, os outros serao dinmicos-->
	            <%	List<Funcionario> lista = (List<Funcionario>) request.getAttribute("lista");
	            
	            	for(Funcionario func: lista) {
	            %>
                <tr>
                    <td><%= func.getCodfunc() %></td>
                    <td><%= func.getNomefunc() %></td>
                    <td><%= func.getEnderecofunc() %></td>
                    <td><%= func.getTelefonefunc() %></td>
                    <td><%= func.getSalario() %></td>
                    <td><%= func.getCodbib() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>

        <h2>
            <i class="fa fa-users" aria-hidden="true"></i> Gerenciar Funcionario</h2>

        <form action="funccontroller.do" method="post">
            <table class="table">
                <tbody>
                    <tr>
                        <th>Codigo</th>
                        <th>Nome</th>
                        <th>Endere�o</th>
                        <th>Telefone</th>
                        <th>Sal�rio</th>
                        <th>Biblioteca</th>
                    </tr>
                    <tr>
                        <td>
                            <input name="altCodigoFuncionario" type="search" id="dadoCodigoFuncionario" onkeyup="buscaCodigoFuncionario()" class="form-control" placeholder="CODIGO">
                        </td>
                        <td>
                            <input name="altNomeFuncionario" type="search" id="dadoNomeFuncionario" onkeyup="buscaNomeFuncionario()" class="form-control" placeholder="NOME">
                        </td>
                        <td>
                            <input name="altEnderecoFuncionario" type="search" id="dadoEnderecoFuncionario" onkeyup="buscaEnderecoFuncionario()" class="form-control" placeholder="ENDERECO">
                        </td>
                        <td>
                            <input name="altTelefoneFuncionario" type="search" id="dadoTelefoneFuncionario" onkeyup="buscaTelefoneFuncionario()" class="form-control" placeholder="TELEFONE">
                        </td>
                        <td>
                            <input name="altSalarioFuncionario" type="search" id="dadoSalarioFuncionario" onkeyup="buscaSalarioFuncionario()" class="form-control" placeholder="SALARIO">
                        </td>
                        <td>
                            <input name="altBibliotecaFuncionario" type="search" id="dadoBibliotecaFuncionario" onkeyup="buscaBibliotecaFuncionario()" class="form-control" placeholder="BIBLIOTECA">
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="container margin-fix">
                <button name="condicao" value="inserir" type="submit" class="btn btn-primary btn-xs">Inserir</button>
                <button name="condicao" value="alterar" type="submit" class="btn btn-primary btn-xs">Alterar</button>
                <% // Verificar funcao abaixo %>
                <button type="button" class="btn btn-primary btn-xs">Desativar</button>

            </div>
        </form>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="./Style/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!-- Include custom JS for searchbox -->
    <script src="./js/custom.js"></script>

    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center">
                <a href="https://github.com/AdrianoCh">
                    <i class="fa fa-github-alt" aria-hidden="true"></i> AdrianoCh</a>
            </p>
            <p class="m-0 text-center">
                <a href="https://github.com/alocairo">
                    <i class="fa fa-github-alt" aria-hidden="true"></i> alocairo</a>
            </p>
            <p class="m-0 text-center text-white">
                <a href="https://github.com/AdrianoCh/projetoBiblioteca">Project Avaliable Here
                    <i class="fa fa-github-square" aria-hidden="true"></i>
                </a>
            </p>

        </div>
    </footer>
</body>

</html>