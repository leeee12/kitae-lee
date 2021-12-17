<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Ticket List</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/admin_style.css">
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section>
			<div class="content-admin">
				<div class="admin-sidebar">
					<ul>
						<li>
							<span class="admin-icon">icon</span>
							<span class="admin-title">Home</span>
						</li>
						<li>
							<span class="admin-icon">icon</span>
							<span class="admin-title">Member</span>
						</li>
						<li>
							<span class="admin-icon">icon</span>
							<span class="admin-title">Ticket</span>
						</li>
						<li>
							<span class="admin-icon">icon</span>
							<span class="admin-title">Spot</span>
						</li>
					</ul>
				</div>
			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
</html>