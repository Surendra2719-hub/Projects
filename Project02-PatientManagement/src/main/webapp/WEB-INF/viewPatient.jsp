<%@ page language="java" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html>

		<head>

			<meta charset="UTF-8">

			<title>View Patients</title>

			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

			<style>
				body {
					background: #f4f6f9;
					font-family: Arial, sans-serif;
				}

				.container-box {

					margin-top: 40px;
					background: white;
					padding: 30px;
					border-radius: 15px;
					box-shadow: 0px 0px 10px lightgray;

				}

				.heading {

					display: flex;
					justify-content: space-between;
					align-items: center;
					margin-bottom: 20px;

				}

				table {

					text-align: center;

				}

				thead {

					background: #343a40;
					color: white;

				}

				.btn-action {

					margin: 2px;

				}
			</style>

		</head>

		<body>

			<div class="container">

				<div class="container-box">

					<div class="heading">

						<h2>Patient Records</h2>

						<a href="addPatient" class="btn btn-success">
							Add New Patient
						</a>

					</div>

					<table class="table table-bordered table-hover">

						<thead>

							<tr>

								<th>ID</th>
								<th>Patient Name</th>
								<th>Age</th>
								<th>Gender</th>
								<th>Disease</th>
								<th>Doctor</th>
								<th>Mobile</th>
								<th>Address</th>
								<th>Admission Date</th>
								<th>Admission Time</th>
								<th>Action</th>

							</tr>

						</thead>

						<tbody>

							<c:forEach items="${patients}" var="p">

								<tr>

									<td>${p.id}</td>

									<td>${p.patientName}</td>

									<td>${p.age}</td>

									<td>${p.gender}</td>

									<td>${p.disease}</td>

									<td>${p.doctorName}</td>

									<td>${p.mobile}</td>

									<td>${p.address}</td>

									<td>${p.admissionDate}</td>

									<td>${p.admissionTime}</td>

									<td>

										<a href="editPatient/${p.id}" class="btn btn-warning btn-sm btn-action">

											Edit

										</a>

										<a href="deletePatient/${p.id}" class="btn btn-danger btn-sm btn-action"
											onclick="return confirm('Are you sure you want to delete this patient?')">

											Delete

										</a>

									</td>

								</tr>

							</c:forEach>

						</tbody>

					</table>

				</div>

			</div>

		</body>

		</html>
		```