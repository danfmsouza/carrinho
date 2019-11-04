<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>LISTA DE PRODUTOS</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="ISO-8859-1">
<title>Listagem de Produtos</title>
</head>
<body>
  <form action="Lista" method="get">
  <div class="container">
<%-- 	<!--  <%	List<Produto> lista = (List<Produto>)request.getAttribute("lista"); 	%> --> 	 --%>
	<table class="table table-striped">
	    <thead>
	      <tr>
	        <th>ID</th>
	        <th>Nome</th>
	        <th>Preco</th>
	      <th></th>
	      </tr>
	    </thead>
	    <tbody>
	<c:forEach var = "produto" items = "${listaProdutos}" >
		<tr>
			<td>${produto.id}</td>
			<td>${produto.nome}</td>
			<td>${produto.preco}</td>
		</tr>
		</c:forEach>	
	    </tbody>
	</table>
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