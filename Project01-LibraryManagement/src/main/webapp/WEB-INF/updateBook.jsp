<!DOCTYPE html>

<html>

<head>

	<meta charset="UTF-8">

	<title>Update Book</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

	<div class="container mt-5">

		<div class="card shadow p-4">

			<h2 class="text-center text-primary">
				Update Book
			</h2>

			<form action="/updateBook" method="post">

				<input type="hidden" name="id" value="${book.id}">

				<div class="mb-3">
					<label>Book Name</label>
					<input type="text" class="form-control" name="bookName" value="${book.bookName}">
				</div>

				<div class="mb-3">
					<label>Author</label>
					<input type="text" class="form-control" name="author" value="${book.author}">
				</div>

				<div class="mb-3">
					<label>Publisher</label>
					<input type="text" class="form-control" name="publisher" value="${book.publisher}">
				</div>

				<div class="mb-3">
					<label>Price</label>
					<input type="number" class="form-control" name="price" value="${book.price}">
				</div>

				<div class="mb-3">
					<label>Quantity</label>
					<input type="number" class="form-control" name="quantity" value="${book.quantity}">
				</div>

				<div class="mb-3">
					<label>Category</label>
					<input type="text" class="form-control" name="category" value="${book.category}">
				</div>

				<button class="btn btn-primary w-100">
					Update Book
				</button>

			</form>

		</div>

	</div>

</body>

</html>