<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Alterar Endereço</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>

        <body>
	        <%
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidade");
			if (session.getAttribute("usuario") == null) {
				response.sendRedirect("Login.jsp");
			}
			%>
                <!-- Barra superior com os menus de navegação -->
				<c:import url="Menu.jsp"/>
				<br>
                <!-- Container Principal -->
                <div id="main" class="container">
                    <h3 class="page-header">Alterar Endereço #${endereco.id }</h3>
                    <!-- Formulario para alteração de clientes -->
                    <form action="ManterCadastroEndereco.do" method="post">
                        <!-- area de campos do form -->
                        <input type="hidden" name="idusuario" value="${usuario.id }" />
                        <input type="hidden" name="id" value="${endereco.id }" />
                        <div class="row">
                            <div class="form-group col-md-12">
                                <div class="form-group col-md-4 mb-3">
						<label for="tipodeendereco">Tipo de Endereço:</label>
						<input type="text" name="tipodeendereco" value=${endereco.tipodeendereco } class="form-control" maxlength="20" required placeholder="Tipo de Endereço, EX: Academia, Casa, trabalho,etc...">
					</div>
					<div class="form-group col-md-4 mb-3">
						<label for="cep">CEP:</label>
						<input type="text" name="cep" value=${endereco.cep } class="form-control" maxlength="20" required placeholder="CEP">
					</div>
					<div class="form-group col-md-4 mb-3">
						<label for="endereco">Endereço:</label>
						<input type="text" name="endereco" value="${endereco.endereco }" class="form-control" maxlength="40" required placeholder="Endereço">
					</div>
					<div class="col-md-3 mb-3">
				      	<label for="validationDefault04">Estado</label>
				      	<select class="custom-select" id="validationDefault04" name="estado" required>
				        	<option selected value="${endereco.estado }" >Selecione o estado</option>
				        	<option value="ac">AC</option>
							<option value="al">AL</option>
							<option value="ap">AP</option>
							<option value="am">AM</option>
							<option value="ba">BA</option>
							<option value="ce">CE</option>
							<option value="df">DF</option>
							<option value="es">ES</option>	
							<option value="go">GO</option>
							<option value="ma">MA</option>
							<option value="mt">MT</option>
							<option value="ms">MS</option>
							<option value="mg">MG</option>
							<option value="pa">PA</option>
							<option value="pb">PB</option>
							<option value="pr">PR</option>
							<option value="pe">PE</option>
							<option value="pi">PI</option>
							<option value="rj">RJ</option>
							<option value="rn">RN</option>
							<option value="rs">RS</option>
							<option value="ro">RO</option>
							<option value="rr">RR</option>
							<option value="sc">SC</option>
							<option value="sp">SP</option>
							<option value="se">SE</option>
							<option value="to">TO</option>
				     	 </select>
				    </div>
					<div class="form-group col-md-4 mb-3">
						<label for="cidade">Cidade:</label>
						<input type="text" name="cidade" value="${endereco.cidade }" class="form-control" maxlength="20" required placeholder="Cidade">
					</div>
					<div class="form-group col-md-4 mb-3">
						<label for="numero">Número:</label>
						<input type="text" name="numero" class="form-control" value=${endereco.numero } maxlength="20" required placeholder="Número">
					</div>
					<div class="form-group col-md-4 mb-3">
						<label for="complemento">Complemento:</label>
						<input type="text" name="complemento" class="form-control" value=${endereco.complemento } maxlength="20" required placeholder="Complemento">
					</div>
				</div>
			</div>
                        <hr />
                        <div id="actions" class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="acao" value="Alterar">Salvar</button>
                                <a href="ListarEndereco.jsp" class="btn btn-dark">Cancelar</a>
                            </div>
                        </div>
                    </form>
                </div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>