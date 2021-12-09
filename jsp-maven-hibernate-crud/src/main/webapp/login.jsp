<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Página de Login</title>

<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<style>
.form-signin {
	width: 100%;
	max-width: 330px;
	padding: 15px;
	margin: auto;
}

.form-signin .checkbox {
	font-weight: 400;
}

.form-signin .form-floating:focus-within {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
</head>
<body>
	${fracassoMensagem}
	${sessionMensagem}
	<main class="form-signin text-center mt-5">
		<form action="login" method="post">

			<div class="form-floating mt-4">
				<input type="email" class="form-control" id="floatingInput"
					name="email" placeholder="nome@exemplo.com" required> <label
					for="floatingInput">Email</label>
			</div>

			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword"
					name="senha" placeholder="Senha" required> <label
					for="floatingPassword">Senha</label>
			</div>

			<div class="checkbox mb-3">
				<label> <input type="checkbox" value="lembrar-me">
					Lembrar-me
				</label>
			</div>

			<input class="w-100 btn btn-lg btn-primary" type="submit"
				name="submit" value="Entrar">

			<p class="mt-4 text-muted">
				Não tem Login? <a href="cadastro.jsp">Inscreva-se</a>
			</p>
			<p class="mt-5 mb-3 text-muted">&copy; 2020–2021</p>
		</form>
	</main>
</body>
</html>