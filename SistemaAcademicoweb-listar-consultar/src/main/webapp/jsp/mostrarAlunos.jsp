<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.unicid.model.Aluno"%>
<%@ page import="br.edu.unicid.controller.ServletAluno"%>


<!DOCTYPE html>
<html>
<head>
<title>Lista Alunos</title>

<!-- css do projeto -->
<link rel="stylesheet" type="text/css" href="css/styles.css" />

<!-- css bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />

<!-- js bootstrap -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>

</head>

<body>	
	<center>
		<h1>Lista de alunos</h1>
	</center>
	
	<table width="60%" border="1" class="table table-hover">
		<tr>
			<th>ID - Atualizar</th>
			<th>Nome</th>
			<th>Endereço</th>
			<th>E-mail</th>
			<th>Nascimento</th>
			<th>Periodo</th>
			<th>Status</th>
		</tr>
		<%
		SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
		List<Aluno> lista = new ArrayList<Aluno>();
		lista = (ArrayList) request.getAttribute("alunosList");
		for (Aluno a : lista) {
		%>
			<tr>
				<td><%=a.getRa()%></td>
				<td><%=a.getNome()%></td>
				<td><%=a.getEndereco()%></td>
				<td><%=a.getEmail()%></td>
				<td><%=data.format(a.getDataNascimento())%></td>
				<td><%=a.getPeriodo()%></td>
				<td><a href="html\atualizar.html">Alterar</a></td>
				<td><a href="html\excluir.html">Excluir</a></td>
			</tr>
		
		<%
		}
		%>
			<tr>		
			<th><a href="index.html">Página Principal</a></th>
			</tr>
	</table>
</body>
</html>