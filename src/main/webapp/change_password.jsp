<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
.point-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}
</style>
<%@include file="../Component/allcss.jsp"%>
</head>
<body>
	<%@include file="Component/navbar.jsp"%>
	
	<c:if test="${empty userObj }">
	<c:redirect url=""user_login.jsp"> </c:redirect>
	</c:if>
	
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card point-card">
					<p class="text-center fs-3">Change Password</p>
					<div class="card-body">
						<form action=" userChangePassword" method="post">
						
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success fs-3">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-5">${errorMsg }</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
							<div class="mb-3">
								<label>Enter the new password</label><input type="text"
									name="newPassword" class="form-control" required>

							</div>
							
							<div class="mb-3">
								<label>Enter Old password</label><input type="text"
									name="oldPassword" class="form-control" required>

							</div>
							<input type="hidden" value="${userObj.id }" name="uid">
							<button class="btn btn-success col-md-12">Change
								Password</button>


						</form>


					</div>

				</div>

			</div>
		</div>

	</div>

</body>
</html>