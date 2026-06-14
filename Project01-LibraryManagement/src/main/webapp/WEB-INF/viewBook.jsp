<%@ page language="java" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>

		<html>

		<head>

			<meta charset="UTF-8">

			<title>Books</title>

			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

		</head>

		<body class="bg-light">

			<div class="container mt-5">

				<div class="card shadow p-4">

					<h2 class="text-center text-primary">
						Book List
					</h2>

					<a href="addBook" class="btn btn-success mb-3">
						Add Book
					</a>

					<table class="table table-bordered table-hover">

						<tr class="table-dark">

							<th>ID</th>
							<th>Name</th>
							<th>Author</th>
							<th>Publisher</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Category</th>
							<th>Action</th>

						</tr>

						<c:forEach items="${books}" var="b">

							<tr>

								<td>${b.id}</td>
								<td>${b.bookName}</td>
								<td>${b.author}</td>
								<td>${b.publisher}</td>
								<td>${b.price}</td>
								<td>${b.quantity}</td>
								<td>${b.category}</td>

								<td>

									<a href="editBook/${b.id}" class="btn btn-warning btn-sm">
										Edit
									</a>

									<a href="deleteBook/${b.id}" class="btn btn-danger btn-sm"
										onclick="return confirm('Delete this book?')">

										Delete

									</a>

								</td>

							</tr>

						</c:forEach>

					</table>

				</div>

			</div>

		</body>

		</html>