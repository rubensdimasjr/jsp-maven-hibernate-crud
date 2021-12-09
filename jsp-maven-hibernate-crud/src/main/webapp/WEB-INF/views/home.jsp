<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>Loja Formiguei Doceria</title>

<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link href="https://cdn.jsdelivr.net/gh/rubensdimasjr/cdn/carousel.css"
	rel="stylesheet">

<style>
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

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.text-small {
	font-size: 85%;
}

.azulPreco {
	color: #4e54c8;
}

.rosaCart {
	background: #fe696a;
}

.rosaCart:hover {
	background: #f74040;
}
</style>

</head>

<body>

	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="logoFormiguei" viewBox="0 0 16 16">
      <title>LogoFormiguei</title>
      <path
			d="M4.355.522a.5.5 0 0 1 .623.333l.291.956A4.979 4.979 0 0 1 8 1c1.007 0 1.946.298 2.731.811l.29-.956a.5.5 0 1 1 .957.29l-.41 1.352A4.985 4.985 0 0 1 13 6h.5a.5.5 0 0 0 .5-.5V5a.5.5 0 0 1 1 0v.5A1.5 1.5 0 0 1 13.5 7H13v1h1.5a.5.5 0 0 1 0 1H13v1h.5a1.5 1.5 0 0 1 1.5 1.5v.5a.5.5 0 1 1-1 0v-.5a.5.5 0 0 0-.5-.5H13a5 5 0 0 1-10 0h-.5a.5.5 0 0 0-.5.5v.5a.5.5 0 1 1-1 0v-.5A1.5 1.5 0 0 1 2.5 10H3V9H1.5a.5.5 0 0 1 0-1H3V7h-.5A1.5 1.5 0 0 1 1 5.5V5a.5.5 0 0 1 1 0v.5a.5.5 0 0 0 .5.5H3c0-1.364.547-2.601 1.432-3.503l-.41-1.352a.5.5 0 0 1 .333-.623zM4 7v4a4 4 0 0 0 3.5 3.97V7H4zm4.5 0v7.97A4 4 0 0 0 12 11V7H8.5zM12 6a3.989 3.989 0 0 0-1.334-2.982A3.983 3.983 0 0 0 8 2a3.983 3.983 0 0 0-2.667 1.018A3.989 3.989 0 0 0 4 6h8z" />
    </symbol>
    <symbol id="home" viewBox="0 0 16 16">
      <path
			d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z" />
    </symbol>
    <symbol id="search" viewBox="0 0 16 16">
      <path
			d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
    </symbol>
    <symbol id="people-circle" viewBox="0 0 16 16">
      <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
      <path fill-rule="evenodd"
			d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
    </symbol>
    <symbol id="cart" viewBox="0 0 16 16">
      <path
			d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
    </symbol>
  </svg>

	<header>
		<div class="px-3 py-2 bg-dark text-white">
			<div class="container">
				<div
					class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
					<a href="home"
						class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
						<svg class="bi me-2" width="40" height="32" role="img"
							aria-label="Formiguei">
							<use xlink:href="#logoFormiguei" /></svg>
					</a>

					<ul
						class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
						<li><a href="#" class="nav-link text-secondary"> <svg
									class="bi d-block mx-auto mb-1" width="24" height="24">
									<use xlink:href="#home" /></svg> Home
						</a></li>
						<li><a href="#collapseSearch" class="nav-link text-white"
							data-bs-toggle="collapse" role="button" aria-expanded="false"
							aria-controls="collapseSearch"> <svg
									class="bi d-block mx-auto mb-1" width="24" height="24">
									<use xlink:href="#search" /></svg> Procurar
						</a></li>
						<li><a href="#" class="nav-link text-white"> <svg
									class="bi d-block mx-auto mb-1" width="24" height="24">
									<use xlink:href="#cart" /></svg> Carrinho
						</a></li>
						<li>
							<div class="flex-shrink-0 dropdown">
								<a href="#"
									class="nav-link text-white d-block link-dark text-decoration-none dropdown-toggle"
									id="dropdownUser2" data-bs-toggle="dropdown"
									aria-expanded="false"> <svg class="bi d-block mx-auto mb-1"
										width="24" height="24">
										<use xlink:href="#people-circle" /></svg> ${nome}
								</a>
								<ul class="dropdown-menu shadow" aria-labelledby="dropdownUser2">
									<li><a class="dropdown-item" href="#">Compras</a></li>
									<li><a class="dropdown-item" href="admin/lista-cliente">Administração</a></li>
									<li><a class="dropdown-item" href="#">Perfil</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="logout">Sair</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="collapse" id="collapseSearch">
					<form class="d-flex my-3">
						<input class="form-control me-2" type="search"
							placeholder="O que você está procurando?" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Pesquisar</button>
					</form>
				</div>
			</div>
		</div>
	</header>

	<main>
		<section>
			<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#myCarousel"
						data-bs-slide-to="0" class="active" aria-current="true"
						aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#myCarousel"
						data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#myCarousel"
						data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<svg class="bd-placeholder-img" width="100%" height="100%"
							xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<rect width="100%" height="100%" fill="#777" /></svg>

						<div class="container">
							<div class="carousel-caption text-start">
								<h1>Example headline.</h1>
								<p>Some representative placeholder content for the first
									slide of the carousel.</p>
								<p>
									<a class="btn btn-lg btn-primary" href="#">Sign up today</a>
								</p>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<svg class="bd-placeholder-img" width="100%" height="100%"
							xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<rect width="100%" height="100%" fill="#777" /></svg>

						<div class="container">
							<div class="carousel-caption">
								<h1>Another example headline.</h1>
								<p>Some representative placeholder content for the second
									slide of the carousel.</p>
								<p>
									<a class="btn btn-lg btn-primary" href="#">Learn more</a>
								</p>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<svg class="bd-placeholder-img" width="100%" height="100%"
							xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<rect width="100%" height="100%" fill="#777" /></svg>

						<div class="container">
							<div class="carousel-caption text-end">
								<h1>One more for good measure.</h1>
								<p>Some representative placeholder content for the third
									slide of this carousel.</p>
								<p>
									<a class="btn btn-lg btn-primary" href="#">Browse gallery</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#myCarousel" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#myCarousel" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</section>

		<div class="album py-5 bg-light">
			<div class="container">
				<c:if test="${empty(listaProdutos)}">
					<div class="alert alert-warning">
						<b>Nenhum produto encontrado!!</b>
						<br>Os produtos que estiverem cadastrados aparecerão aqui.
						<a href="admin/lista-produtos" class="text-dark">Cadastre um produto.</a>
					</div>
				</c:if>
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
					
					<!-- Cartão do Produto -->
					<c:forEach var="produtos" items="${listaProdutos}">
					<div class="col">
						<div class="card shadow-sm">
							<img src="<c:out value="${produtos.linkImagem}" />" class="rounded-top" height="225" alt="<c:out value="${produtos.titulo}" />">
							<div class="card-body">
								<p class="card-title fw-bold">
									<c:out value="${produtos.titulo}" />
								</p>
								<p class="text-muted">
									<c:out value="${produtos.descricao}" />
								</p>
								<div class="d-flex mb-2 gap-2">
								
									<input type="radio" class="btn-check" name="options-tamanho<c:out value="${produtos.id}" />"
										id="danger-tamanho<c:out value="${produtos.id}a" />" autocomplete="off" checked>
										<label class="btn btn-sm btn-outline-danger col" 
											for="danger-tamanho<c:out value="${produtos.id}a" />">Pequeno</label>
										
									<input type="radio" class="btn-check" name="options-tamanho<c:out value="${produtos.id}" />"
										id="danger-tamanho<c:out value="${produtos.id}b" />" autocomplete="off">
										<label class="btn btn-sm btn-outline-danger col" 
											for="danger-tamanho<c:out value="${produtos.id}b" />">Médio</label>
										
									<input type="radio" class="btn-check" name="options-tamanho<c:out value="${produtos.id}" />" 
										id="danger-tamanho<c:out value="${produtos.id}c" />" autocomplete="off">
										<label class="btn btn-sm btn-outline-danger col" 
											for="danger-tamanho<c:out value="${produtos.id}c" />">Grande</label>
											
								</div>
								<div class="d-flex mb-4 gap-2">
								
									<input type="radio" class="btn-check" name="options-tipo<c:out value="${produtos.id}" />"
										id="danger-tipo<c:out value="${produtos.id}a" />" autocomplete="off" checked>
										<label class="btn btn-sm btn-outline-danger col" 
											for="danger-tipo<c:out value="${produtos.id}a" />">Padrão</label>
										
									<input type="radio" class="btn-check" name="options-tipo<c:out value="${produtos.id}" />"
										id="danger-tipo<c:out value="${produtos.id}b" />" autocomplete="off">
										<label class="btn btn-sm btn-outline-danger col" 
											for="danger-tipo<c:out value="${produtos.id}b" />">Amargo</label>
										
								</div>
								<div class="d-flex justify-content-between align-items-center">
									<p class="fw-normal fs-5 azulPreco">R$<c:out value="${produtos.preco}" />,00</p>
									<div class="btn-group">
										<button type="button"
											class="btn btn-sm rosaCart text-white px-3">
											+
											<svg xmlns="http://www.w3.org/2000/svg" width="18"
												height="18" fill="currentColor" class="bi bi-cart3"
												viewBox="0 0 16 16">
				                       <path
													d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
				                     </svg>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
					<!-- Fim Cartão Produto -->
					
				</div>
			</div>
		</div>
	</main>

	<footer class="text-muted py-5">
		<div class="container">
			<p class="float-end mb-1">
				<a href="#">Back to top</a>
		</div>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>

</html>