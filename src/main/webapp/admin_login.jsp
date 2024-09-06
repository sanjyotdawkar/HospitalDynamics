<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<style type="text/css">
.point-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

</style>
<%@include file="Component/allcss.jsp" %>
</head>
<body>
<%@include file="Component/navbar.jsp" %>


<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card point-card">
					<div class="card-body">
						<p class="fs-4 text-center">Admin Login</p>
						
							<c:if test="${not empty succMsg }">
						<p class="text-center text-success fs-3" >${succMsg }</p>
						<c:remove var="succMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty errorMsg }">
						<p class="text-center text-danger fs-5" >${errorMsg }</p>
						<c:remove var="errorMsg" scope="session"/>
						</c:if>
							
						<form action="adminLogin" method="post">
							<div class="md-3">
								<label class="form-label">Email Address</label> <input required
									name="email" type="email" class="form-control">
							</div>
							
							<div class="md-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">

							</div>
                              <div class="text-center mt-3">
							<button type="submit" class="btn bg-success text-white col-md-12"> Login </button>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>