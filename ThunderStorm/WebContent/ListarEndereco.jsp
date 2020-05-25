<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <link rel="shortcut icon" href="Image/Icon.ico" type="image/x-icon" />
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Buscar Endereços</title>

                        <!-- CSS -->
			<link rel="stylesheet"
				href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
				integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
				crossorigin="anonymous">
			<footer>
				<!-- JAVASCRIPT -->
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
					integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
					crossorigin="anonymous"></script>
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
					integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
					crossorigin="anonymous"></script>
				<script
					src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
					integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
					crossorigin="anonymous"></script>
			</footer>
			<meta http-equiv=”Content-Type” content=”text/html; charset=iso-8859-1″>
        </head>

        <body>
        	<%
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidade");
			if (session.getAttribute("usuario") == null) {
				response.sendRedirect("Login.jsp");
			}
			%>
            <!-- Modal -->
            <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="modalLabel">Excluir Endereço</h4>
                        </div>
                        <div class="modal-body">
                            Deseja realmente excluir este Endereço?
                        </div>
                        <div class="modal-footer">
                            <form action="ManterCadastroEndereco.do" method="post">
                                <input type="hidden" name="id" id="id_excluir" />
                                <button type="submit" class="btn btn-primary" name="acao" value="Excluir">Sim</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.modal -->
            <!-- Barra superior com os menus de navegação -->
			<c:import url="Menu.jsp"/>
			<br>
            <!-- Container Principal -->
            <div id="main" class="container">
                <form action="listar_enderecos.do" method="post">
                	<input type="hidden" name="idusuario" value="${usuario.id }" />
                    <div id="top" class="row">
                        <div class="col-md-3">
                            <h2>Endereços</h2>
                        </div>

                        <div class="col-md-6">
                            <div class="input-group h2">
                                <input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Endereços (deixe vazio para trazer todos)">
                                <span class="input-group-btn" class="col-md-3">
                	<button class="btn btn-primary" type="submit" name="acao" value="buscar">
                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                                </span>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <a href="Endereco.jsp" class="btn btn-primary pull-right h2">Novo Endereço</a>
                        </div>
                    </div>
                    <!-- /#top -->
                </form>
                <hr />
                <c:if test="${not empty lista}">
                <div id="list" class="row">

                    <div class="table-responsive col-md-12">
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>Tipo de Endereço</th>
                                    <th>CEP</th>
                                    <th>Endereço</th>
                                    <th>Estado</th>
                                    <th>Cidade</th>
                                    <th>Número</th>
                                    <th>Complemento</th>
                                    <th class="actions">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
          					<c:forEach var="endereco" items="${lista }">
                                       <tr>
                                            <td>
                                                ${endereco.tipodeendereco }
                                            </td>
                                            <td>
                                                ${endereco.cep }
                                            </td>
                                            <td>
                                                ${endereco.endereco }
                                            </td>
                                             <td>
                                                ${endereco.estado }
                                            </td>
                                             <td>
                                                ${endereco.cidade }
                                            </td>
                                             <td>
                                                ${endereco.numero }
                                            </td>
                                             <td>
                                                ${endereco.complemento }
                                            </td>
                                            <td class="actions">
                                                <a class="btn btn-success btn-xs" href="ManterCadastroEndereco.do?acao=Visualizar&id=${endereco.id }">Visualizar</a>
                                                <a class="btn btn-warning btn-xs" href="ManterCadastroEndereco.do?acao=Editar&id=${endereco.id }">Editar</a>
                                                <button id="btn${endereco.id }%>" type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#delete-modal" data-cliente="${endereco.id }">Excluir</button>
                                            </td>
                                        </tr>
                            </c:forEach>

                            </tbody>
                        </table>

                    </div>
                </div>
                <!-- /#list -->


                </c:if>
                <!-- /#bottom -->
            </div>
            <!-- /#main -->
            <script src="js/jquery.min.js"></script>
    		<script src="js/bootstrap.min.js"></script>
            <script type="text/javascript">
                $("#delete-modal").on('show.bs.modal', function(event) {
                    var button = $(event.relatedTarget); //botao que disparou a modal
                    var recipient = button.data('cliente');
                    $("#id_excluir").val(recipient);
                });
            </script>
        </body>

        </html>