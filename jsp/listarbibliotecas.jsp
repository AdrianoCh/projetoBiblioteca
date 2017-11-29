<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.List" %>
        <%@ page import ="biblio.entidades.Biblioteca" %>
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
                <title>BIBLIOTECA - Bibliotecas</title>

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

                    <!-- import the navbar -->
                    <jsp: include page="nav.html" />

                    <div class="page-header text-center">
                        <h1>
                            <i class="fa fa-building" aria-hidden="true"></i> Bibliotecas</h1>
                    </div>

                    <table class="table table-inverse" id="myTable">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Nome</th>
                                <th>Endere�o</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--       Apenas primeiro tr deve ser mantido, os outros serao din�micos -->
                            <%	List<Biblioteca> lista = (List<Biblioteca>) request.getAttribute("lista");
                
                	for (Biblioteca bib: lista) {
                %>
                                <tr>
                                    <td>
                                        <%= bib.getCodbib() %>
                                    </td>
                                    <td>
                                        <%= bib.getNomebib() %>
                                    </td>
                                    <td>
                                        <%= bib.getEnderecobib() %>
                                    </td>
                                </tr>
                                <%	} %>
                        </tbody>
                    </table>
                    <h2>
                        <i class="fa fa-cog" aria-hidden="true"></i> Gerenciar Bibliotecas</h2>

                    <form action="bibcontroller.do" method="post">
                        <table class="table" id="myTable">
                            <tbody>
                                <tr>
                                    <th>C�digo</th>
                                    <th>Nome</th>
                                    <th>Endere�o</th>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="search" id="dadoCodigoBiblioteca" onkeyup="buscaCodigoBiblioteca()" class="form-control" name="altCodigo" placeholder="CODIGO">
                                    </td>
                                    <td>
                                        <input type="search" id="dadoNomeBiblioteca" onkeyup="buscaNomeBiblioteca()" class="form-control" name="altNome" placeholder="NOME">
                                    </td>
                                    <td>
                                        <input type="search" id="dadoEnderecoBiblioteca" onkeyup="buscaEnderecoBiblioteca()" class="form-control" name="altEndereco"
                                            placeholder="ENDERECO">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="container margin-fix">
                            <button name="condicao" value="inserir" type="submit" class="btn btn-primary btn-xs">Inserir</button>
                            <button name="condicao" value="alterar" type="submit" class="btn btn-primary btn-xs">Alterar</button>
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