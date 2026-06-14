<!DOCTYPE html>
<html>

<head>

	<meta charset="UTF-8">

	<title>Update Patient</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

	<style>
		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
			font-family: Arial, sans-serif;
		}

		body {
			background: #f4f7fc;
		}

		.sidebar {

			position: fixed;
			width: 220px;
			height: 100vh;
			background: #1e3a8a;

		}

		.sidebar h2 {

			color: white;
			text-align: center;
			padding: 20px;

		}

		.sidebar a {

			display: block;
			padding: 15px;
			color: white;
			text-decoration: none;

		}

		.sidebar a:hover {

			background: #2563eb;

		}

		.main {

			margin-left: 220px;

		}

		.header {

			height: 70px;
			background: white;
			padding: 20px;
			box-shadow: 0px 2px 8px lightgray;

		}

		.content {

			padding: 30px;

		}

		.card {

			border: none;
			border-radius: 15px;
			box-shadow: 0px 0px 15px lightgray;

		}

		label {

			font-weight: bold;
			margin-bottom: 5px;

		}

		.btn-update {

			background: #1e3a8a;
			color: white;
			width: 100%;
			height: 45px;

		}

		.btn-update:hover {

			background: #2563eb;
			color: white;

		}
	</style>

</head>

<body>

	<div class="sidebar">

		<h2>PATIENT</h2>

		<a href="/">Dashboard</a>

		<a href="${pageContext.request.contextPath}/addPatient">Add Patient</a>

		<a href="${pageContext.request.contextPath}/viewPatient">View Patients</a>

	</div>

	<div class="main">

		<div class="header">

			<h3>Update Patient Details</h3>

		</div>

		<div class="content">

			<div class="card p-4">

				<form action="${pageContext.request.contextPath}/updatePatient" method="post">

					<input type="hidden" name="id" value="${patient.id}">

					<div class="row">

						<div class="col-md-6 mb-3">

							<label>Patient Name</label>

							<input type="text" name="patientName" value="${patient.patientName}" class="form-control">

						</div>

						<div class="col-md-6 mb-3">

							<label>Age</label>

							<input type="number" name="age" value="${patient.age}" class="form-control">

						</div>

						<div class="col-md-6 mb-3">

							<label>Gender</label>

							<select name="gender" class="form-select">

								<option value="Male" ${patient.gender=='Male' ?'selected':''}>Male</option>

								<option value="Female" ${patient.gender=='Female' ?'selected':''}>Female</option>

								<option value="Other" ${patient.gender=='Other' ?'selected':''}>Other</option>

							</select>

						</div>

						<div class="col-md-6 mb-3">

							<label>Doctor Name</label>

							<input type="text" name="doctorName" value="${patient.doctorName}" class="form-control">

						</div>

						<div class="col-md-6 mb-3">

							<label>Disease</label>

							<input type="text" name="disease" value="${patient.disease}" class="form-control">

						</div>

						<div class="col-md-6 mb-3">

							<label>Mobile</label>

							<input type="text" name="mobile" value="${patient.mobile}" class="form-control">

						</div>

						<div class="col-12 mb-3">

							<label>Address</label>

							<textarea name="address" rows="4" class="form-control">${patient.address}</textarea>

						</div>

					</div>

					<button type="submit" class="btn btn-update">

						Update Patient

					</button>

				</form>

			</div>

		</div>

	</div>

</body>

</html>
```