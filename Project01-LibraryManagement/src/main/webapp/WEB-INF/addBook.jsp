<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Add Book</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

	<div class="container mt-5">

		<div class="card shadow p-4">

			<h2 class="text-center text-primary mb-4">Add New Book</h2>

			<form action="saveBook" method="post">

				<div class="mb-3">
					<label>Book Name</label>
					<input type="text" name="bookName" class="form-control">
				</div>

				<div class="mb-3">
					<label>Author</label>
					<input type="text" name="author" class="form-control">
				</div>

				<div class="mb-3">
					<label>Publisher</label>
					<input type="text" name="publisher" class="form-control">
				</div>

				<div class="mb-3">
					<label>Price</label>
					<input type="number" name="price" class="form-control">
				</div>

				<div class="mb-3">
					<label>Quantity</label>
					<input type="number" name="quantity" class="form-control">
				</div>

				<div class="mb-3">
					<label>Category</label>
					<input type="text" name="category" class="form-control">
				</div>

				<button class="btn btn-success w-100">Save Book</button>

			</form>
			<br>
			<a href="/" class="btn btn-secondary">Back</a>

		</div>

	</div>

</body>

</html>