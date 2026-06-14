<!DOCTYPE html>
<html>

<head>

	<meta charset="UTF-8">

	<title>Patient Management System</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

	<style>
		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
			font-family: Arial;
		}

		body {
			background: #ecf0f1;
		}

		.sidebar {

			width: 240px;
			height: 100vh;
			background: #2c3e50;
			position: fixed;

		}

		.sidebar h2 {

			color: white;
			text-align: center;
			padding: 20px;

			border-bottom: 1px solid gray;

		}

		.sidebar a {

			display: block;

			padding: 15px;

			color: white;

			text-decoration: none;

			font-size: 18px;

		}

		.sidebar a:hover {

			background: #34495e;

			padding-left: 25px;

			transition: .3s;

		}

		.main {

			margin-left: 240px;

		}

		.header {

			height: 70px;

			background: white;

			box-shadow: 0px 2px 10px lightgray;

			padding: 20px;

		}

		.content {

			padding: 40px;

		}

		.card {

			border: none;

			border-radius: 15px;

		}
	</style>

</head>

<body>

	<div class="sidebar">

		<h2>PATIENT PANEL</h2>

		<a href="/">Dashboard</a>

		<a href="addPatient">Add Patient</a>

		<a href="viewPatient">View Patients</a>

	</div>

	<div class="main">

		<div class="header">

			<h3>Patient Management System</h3>

		</div>

		<div class="content">

			<div class="card shadow p-5">

				<h2>Welcome</h2>

				<hr>

				<p>

					This application helps manage patient records efficiently.

				</p>

				<br>

				<a href="addPatient" class="btn btn-success btn-lg">

					Add Patient

				</a>

				<a href="viewPatient" class="btn btn-primary btn-lg ms-3">

					View Patients

				</a>

			</div>

		</div>

	</div>

</body>

</html>
```