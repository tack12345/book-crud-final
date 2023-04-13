<%@page import="com.demo.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<title>Book CRUD</title>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light" style="background-color:#e3f2fd;">
		<div class="container-fluid">
			<a class="navbar-brand" href="/index.html">Book CRUD</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item" style="margin-right:40px; font-size:20px;"><a class="nav-link" aria-current="page" href="/index.html">Home</a></li>
					<li class="nav-item" style="margin-right:40px; font-size:20px;"><a class="nav-link" href="/add.html">Add</a></li>
					<li class="nav-item" style="margin-right:40px; font-size:20px;"><a class="nav-link" href="/update.html">Update</a></li>
					<li class="nav-item" style="margin-right:40px; font-size:20px;"><a class="nav-link" href="/delete.html">Delete</a></li>
					<li class="nav-item" style="margin-right:40px; font-size:20px;"><a class="nav-link active" href="/view">View All</a></li>
				</ul>
				
			</div>
		</div>
	</nav>

	<div class="bg-image" style="background-image: url('https://img.freepik.com/free-photo/glasses-pile-books_23-2148213845.jpg?size=626&ext=jpg&ga=GA1.1.1914462841.1681188686&semt=ais'); background-size:cover; background-position:center; height:90vh; ">
		<p class="display-4">View Book(s)</p>
		<hr>

		<table class="table">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Price</th>
				</tr>
			</thead>
			<tbody>
			<% List<Book> books = (List<Book>)request.getAttribute("bk"); %>
			<% for(Book book: books){ %>
				<tr>
					<th scope="row"><%= book.getId() %></th>
					<td><%= book.getName() %></td>
					<td><%= book.getPrice() %></td>
				</tr>
			<% } %>
			</tbody>
		</table>

	</div>
</body>

</html>