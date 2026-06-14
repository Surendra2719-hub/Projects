<!DOCTYPE html>
<html>

<head>

	<meta charset="UTF-8">

	<title>Add Patient</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

	<style>
		body {
			background: #f1f5f9;
			font-family: Arial, sans-serif;
		}

		.sidebar {
			position: fixed;
			width: 220px;
			height: 100vh;
			background: #0f172a;
			padding-top: 20px;
		}

		.sidebar h3 {
			color: white;
			text-align: center;
			margin-bottom: 30px;
		}

		.sidebar a {
			display: block;
			padding: 15px 20px;
			color: white;
			text-decoration: none;
		}

		.sidebar a:hover {
			background: #1e293b;
		}

		.main {
			margin-left: 220px;
			padding: 30px;
		}

		.form-box {

			background: white;
			padding: 35px;
			border-radius: 15px;
			box-shadow: 0px 0px 10px lightgray;

		}

		h2 {

			margin-bottom: 30px;

		}

		label {

			font-weight: bold;

		}

		.btn-save {

			background: #0d6efd;
			color: white;
			width: 100%;
			height: 45px;

		}
	</style>

</head>

<body>

	<div class="sidebar">

		<h3>PATIENT</h3>

		<a href="/">Dashboard</a>

		<a href="addPatient">Add Patient</a>

		<a href="viewPatient">View Patients</a>

	</div>

	<div class="main">

		<div class="form-box">

			<h2>Add New Patient</h2>

			<form action="${pageContext.request.contextPath}/savePatient" method="post">

				<div class="row">

					<div class="col-md-6 mb-3">

						<label>Patient Name</label>

						<input type="text" name="patientName" class="form-control" required>

					</div>

					<div class="col-md-6 mb-3">

						<label>Age</label>

						<input type="number" name="age" class="form-control" required>

					</div>

					<div class="col-md-6 mb-3">

						<label>Gender</label>

						<select name="gender" class="form-select">

							<option>Male</option>

							<option>Female</option>

							<option>Other</option>

						</select>

					</div>

					<div class="col-md-6 mb-3">

						<label>Doctor Name</label>

						<input type="text" name="doctorName" class="form-control">

					</div>

					<div class="col-md-6 mb-3">

						<label>Disease</label>

						<input type="text" name="disease" class="form-control">

					</div>

					<div class="col-md-6 mb-3">

						<label>Mobile</label>

						<input type="text" name="mobile" class="form-control">

					</div>

					<div class="col-12 mb-3">

						<label>Address</label>

						<textarea name="address" rows="4" class="form-control"></textarea>

					</div>

				</div>

				<button type="submit" class="btn btn-save">

					Save Patient

				</button>

			</form>

		</div>

	</div>

</body>

</html>
```