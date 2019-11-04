<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>CADASTRO DE PRODUTO</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="ISO-8859-1">
<title>Cadastro de Produto</title>
</head>
<body>
  <form action="Carrinho" method="get">
	<div class="container">
	<h2>PRODUTO</h2>
    	<span class="form-group">
      	<label for="nome"><b>Nome:</b></label>
      	<input type="text" class="form-control" id="nome" placeholder="Insira um nome" name="nome">
    	</span>

    	<span class="form-group">
      	<label for="dia"><b>Preço:</b></label>
      	<input type="number" class="form-control" id="preco" placeholder="Informe o valor" name="preco">
    	</span><br>
    	<button type="submit" class="btn btn-primary">Salvar</button>
	</div>
  </form>
  </body>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:150,200,300" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</html>