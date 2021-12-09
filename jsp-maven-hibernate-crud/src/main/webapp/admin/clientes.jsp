<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>Clientes Formiguei</title>

<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- Custom styles for this template -->
<link href="https://cdn.jsdelivr.net/gh/rubensdimasjr/cdn/admin.css"
	rel="stylesheet">

<style>
.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

</head>
<body style="background-color: rgba(204, 204, 204, 0.356);">

	<header
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">Formiguei
			Doceria</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<input class="form-control form-control-dark w-100" type="text"
			placeholder="O que você está procurando?" aria-label="Search">
		<div class="navbar-nav">
			<div class="nav-item text-nowrap">
				<a class="nav-link px-3" href="../logout">Sair</a>
			</div>
		</div>
	</header>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-3">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link" href="#">
								<span data-feather="file"></span> Pedidos
						</a></li>
						<li class="nav-item"><a class="nav-link" href="lista-produtos">
								<span data-feather="shopping-cart"></span> Produtos
						</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#"> <span data-feather="users"></span>
								Clientes
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="bar-chart-2"></span> Contato
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="layers"></span> Moderadores
						</a></li>
					</ul>

					<h6
						class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
						<span>Relatórios Salvos</span> <a class="link-secondary" href="#"
							aria-label="Add a new report"> <span
							data-feather="plus-circle"></span>
						</a>
					</h6>
					<ul class="nav flex-column mb-2">
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file-text"></span> Current month
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file-text"></span> Last quarter
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file-text"></span> Social engagement
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file-text"></span> Year-end sale
						</a></li>
					</ul>
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link mt-5" href="../home">
								<span data-feather="home"></span> Visitar Loja
						</a></li>
					</ul>
				</div>
			</nav>

			<main class="col-md-9 ms-auto col-lg-10 px-4">
				<h3 class="text-center mt-5">
					Lista de Clientes
				</h3>
				<hr>
				
				<!-- Tabela de Clientes -->
				<div class="mt-4 table-responsive">
					<table class="table table-borderless card-1 p-4">
						<thead>
							<tr class="border-bottom">
								<th><span class="ms-2">ID</span></th>
								<th><span class="ms-2">Nome</span></th>
								<th><span class="ms-2">Sobrenome</span></th>
								<th><span class="ms-2">E-mail</span></th>
								<th><span class="ms-2">Senha</span></th>
								<th><span class="ms-4">Ação</span></th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${empty(listaCliente)}">
								<div class="alert alert-info">
									<b>Nenhum dado encontrado!!</b><br> 
									Os <u>clientes</u> que estiverem <u>cadastrados</u> aparecerão aqui.
								</div>
							</c:if>
							<c:forEach var="cliente" items="${listaCliente}">
							<tr class="border-bottom">
								<td>
									<div class="p-2">
										<span class="d-block fw-bolder"> <c:out value="${cliente.id}" /></span>
									</div>
								</td>
								<td>
									<div class="p-2">
										<span><c:out value="${cliente.nome}" /></span>
									</div>
								</td>
								<td>
									<div class="p-2">
										<span><c:out value="${cliente.sobreNome}" /></span>
									</div>
								</td>
								<td>
									<div class="p-2">
										<span><c:out value="${cliente.email}" /></span>
									</div>
								</td>
								<td>
									<div class="p-2">
										<span><c:out value="${cliente.senha}" /></span>
									</div>
								</td>
									<td>
										<div class="p-2 icons">
											<!-- Botão editar -->
											<a href="edit-cliente?id=<c:out value='${cliente.id}'/>"
												class="text-decoration-none"> <i
												class="fas fa-edit text-dark"></i>
											</a>
											
											<!-- Botão excluir -->
											<a href="#deletaClienteModal<c:out value='${cliente.id}'/>"
												class="text-decoration-none" 
												data-bs-toggle="modal" 
												data-bs-target="#deletaClienteModal<c:out value='${cliente.id}'/>">
												<i class="fas fa-trash-alt text-danger"></i>
											</a>
											
											<!-- Modal Cliente -->
											<div class="modal fade" id="deletaClienteModal<c:out value='${cliente.id}'/>"
												tabindex="-1"
												aria-labelledby="deletaClienteModalLabel<c:out value='${cliente.id}'/>"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title"
															id="deletaClienteModalLabel<c:out value='${cliente.id}'/>">Deletar Usuário</h5>
																<button type="button" class="btn-close"
																	data-bs-dismiss="modal" 
																	aria-label="Close">
																</button>
														</div>
														<div class="modal-body">
															<div class="alert alert-danger" role="alert">
															  Você está deletando um Cliente, tem certeza disso?
															</div>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-danger"
																data-bs-dismiss="modal">Cancelar</button>
															<a href="deleta-cliente?id=<c:out value='${cliente.id}'/>" class="btn btn-success">Sim</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</main>
		</div>
	</div>

	<script src="https://kit.fontawesome.com/d13f87c2a3.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/gh/rubensdimasjr/cdn/admin.js"></script>

</body>
</html>