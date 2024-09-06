<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>
<%@include file="Component/allcss.jsp"%>

<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="Component/navbar.jsp"%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/Hospital1.jpg" class="d-block w-100" alt="..."
					height="600px">
			</div>
			<div class="carousel-item">
				<img src="img/Hospital3.webp" class="d-block w-100" alt="..."
					height="600px">

			</div>
			<div class="carousel-item">
				<img src="img/Hospital4.avif" class="d-block w-100" alt="..."
					height="600px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class="text-center fs-2">Key features of our Hospital</p>
		<div class="row ">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Lorem</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>Lorem</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>Lorem</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Lorem</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<img alt="" src="img/Doctor3.jpg" width="100%" height="80%">

			</div>

		</div>

	</div>

	<hr>
	<div class="container p-2">
		<p class="text-center fs-2">Our Team</p>
		<div class="row ">
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img alt="" src="img/Doctor1.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Shubhankar Tripathi</p>
						<p class="fz-7">(CEO & Chairman)</p>

					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img alt="" src="img/Doctor 2.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Lokesh Dawkar</p>
						<p class="fz-7">(Chief Doctor)</p>

					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img alt="" src="img/Doctor5.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.yashswi Mane</p>
						<p class="fz-7">(Chief Doctor)</p>

					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img alt="" src="img/Doctor4.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Aarya Jadhav</p>
						<p class="fz-7">(Chief Doctor)</p>

					</div>
				</div>
			</div>
		</div>
	</div>


	<%@include file="Component/footer.jsp"%>

</body>
</html>