<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Edita Produto</title>

<!-- Bootstrap core CSS -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <!-- Custom styles for this template -->
   <link href="https://cdn.jsdelivr.net/gh/rubensdimasjr/cdn/admin.css" rel="stylesheet">

</head>
<body>
	<header
		class="d-flex px-3 flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
		<a href="lista-produtos"
			class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
			<svg xmlns="http://www.w3.org/2000/svg" width="40" height="32"
				fill="currentColor" class="bi bi-bug-fill" viewBox="0 0 16 16">
          <path
					d="M4.978.855a.5.5 0 1 0-.956.29l.41 1.352A4.985 4.985 0 0 0 3 6h10a4.985 4.985 0 0 0-1.432-3.503l.41-1.352a.5.5 0 1 0-.956-.29l-.291.956A4.978 4.978 0 0 0 8 1a4.979 4.979 0 0 0-2.731.811l-.29-.956z" />
          <path
					d="M13 6v1H8.5v8.975A5 5 0 0 0 13 11h.5a.5.5 0 0 1 .5.5v.5a.5.5 0 1 0 1 0v-.5a1.5 1.5 0 0 0-1.5-1.5H13V9h1.5a.5.5 0 0 0 0-1H13V7h.5A1.5 1.5 0 0 0 15 5.5V5a.5.5 0 0 0-1 0v.5a.5.5 0 0 1-.5.5H13zm-5.5 9.975V7H3V6h-.5a.5.5 0 0 1-.5-.5V5a.5.5 0 0 0-1 0v.5A1.5 1.5 0 0 0 2.5 7H3v1H1.5a.5.5 0 0 0 0 1H3v1h-.5A1.5 1.5 0 0 0 1 11.5v.5a.5.5 0 1 0 1 0v-.5a.5.5 0 0 1 .5-.5H3a5 5 0 0 0 4.5 4.975z" />
        </svg>
		</a>

		<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
			<li><a href="lista-produtos" class="nav-link px-2 btn btn-danger text-white">Voltar</a></li>
		</ul>
	</header>
	<main class="container-fluid col-5 mt-5">
		<c:if test="${produto != null}">
		<form action="update-produto" method="post">
		</c:if>
			<c:if test="${produto != null}">
           		<input type="hidden" name="id" value="<c:out value='${produto.id}' />" />
          	</c:if>  
              <div class="mb-3">
                <label for="titulo" class="form-label">Título</label>
                <input type="text" name="titulo" id="titulo" class="form-control" value="<c:out value='${produto.titulo}' />" required>
              </div>
              <div class="mb-3">
                <label for="descricao" class="form-label">Descrição</label>
                <textarea class="form-control overflow-hidden" id="descricao" name="descricao" rows="4" required><c:out value='${produto.descricao}' />
                </textarea>
              </div>
              <div class="mb-3 col-4">
                <label for="preco" class="form-label">Preço</label>
                <div class="input-group">
                  <span class="input-group-text">R$</span>
                  <input type="text" id="preco" name="preco" class="form-control" value="<c:out value='${produto.preco}' />" required>
                  <span class="input-group-text">,00</span>
                </div>
              </div>
              <div class="mb-3">
              	<label for="linkImagem" class="form-label">Link da Imagem</label>
                <input type="text" name="linkImagem" id="linkImagem" class="form-control" value="<c:out value='${produto.linkImagem}' />" required>
              </div>
            <a href="lista-produtos" class="btn btn-danger">Cancelar</a>
            <input type="submit" class="btn btn-success" value="Editar Produto">
    	</form>
	</main>
	
	<script src="https://kit.fontawesome.com/d13f87c2a3.js" crossorigin="anonymous"></script>
   		 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
   		 <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
   		 <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
   		 <script src="https://cdn.jsdelivr.net/gh/rubensdimasjr/cdn/admin.js"></script>
</body>
</html>