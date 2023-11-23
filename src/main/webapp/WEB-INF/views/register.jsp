<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/home5-cosmetic.html   11 Nov 2019 12:25:38 GMT -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Login</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Plugins CSS -->
<link rel="stylesheet" href="/assets/css/plugins.css">
<!-- Bootstap CSS -->
<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<!-- Main Style CSS -->
<link rel="stylesheet" href="/assets/css/style.css">
<link rel="stylesheet" href="/assets/css/custom.css">
<link rel="stylesheet" href="/assets/css/responsive.css">
<!-- angularjs -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
</head>

<body ng-app="shopping-app" ng-controller="shopping-ctrl"
	class="template-index belle home5-cosmetic">
	<div id="pre-loader">
		<img src="/assets/images/loader.gif" alt="Loading..." />
	</div>
	<div class="pageWrapper">
		<%@include file="./layout/_header.jsp"%>
		
		<!--Body Content-->
	<div class="mt-5" id="page-content">
		<!--Page Title-->
		<div class="page section-header text-center">
			<div class="page-title">
				<div class="wrapper">
					<h1 class="page-width"><s:message
						code="user.dangkitaikhoan" /></h1>
				</div>
			</div>
		</div>
		<!--End Page Title-->
		<!--Breadcrumb-->
				<div class="bredcrumbWrap">
					<div class="container breadcrumbs" role="navigation"
						aria-label="breadcrumbs">
						<a href="/" title="Back to the home page"><s:message
						code="user.trangchu" /></a><span
							aria-hidden="true">›</span><span><s:message
						code="user.dangki" /></span>
					</div>
				</div>
				<!--End Breadcrumb-->
		<div class="container">
			<div class="row">
				<div class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
					<div class="mb-4">
						<form:form modelAttribute="account" name="frmregister" method="post" action="/register"
							id="CustomerLoginForm" accept-charset="UTF-8"
							class="contact-form">
							<div class="row">
								<c:if test="${not empty error }">
									<div class="alert alert-danger alert-dismissible fade show"
										role="alert">
										<strong>${error} </strong> 
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
								</c:if>
							</div>
							<div class="row">
								<div class="col-12 col-sm-12 col-md-12 col-lg-12">
									<div class="form-group">
										<label for="FirstName"><s:message
						code="user.tendangnhap" /></label> 
										<form:input path="username" ng-model="username" name="username" required="required" placeholder=""
											id="FirstName" autofocus=""/>
										<div ng-show="frmregister.username.$invalid"
											class="badge badge-danger m-2"><s:message
						code="user.vuilongnhaptendangnhap" /></div>
									</div>
								</div>
								<div class="col-12 col-sm-12 col-md-12 col-lg-12">
									<div class="form-group">
										<label for="FirstName"><s:message
						code="user.hovaten" /></label> 
										<form:input path="fullname" ng-model="fullname" name="fullname" required="required" placeholder=""
											id="FirstName" autofocus=""/>
										<div ng-show="frmregister.fullname.$invalid"
											class="badge badge-danger m-2"><s:message
						code="user.vuilongnhaphovaten" /></div>
									</div>
								</div>
								<div class="col-12 col-sm-12 col-md-12 col-lg-12">
									<div class="form-group">
										<label for="CustomerEmail">Email</label> 
										<form:input path="email" ng-model="email" name="email" required="required" placeholder=""
											id="CustomerEmail" class="" autocorrect="off"
											autocapitalize="off" autofocus=""/>
										<div ng-show="frmregister.email.$invalid"
											class="badge badge-danger m-2"><s:message
						code="user.vuilongnhapemail" /></div>
									</div>
								</div>
								<div class="col-12 col-sm-12 col-md-12 col-lg-12">
									<div class="form-group">
										<label for="CustomerPassword"><s:message
						code="user.matkhau" /></label> 
										<form:password path="password" ng-model="password" value="" required="required"
											name="password" placeholder="" id="CustomerPassword" class=""/>
										<div ng-show="frmregister.password.$invalid"
											class="badge badge-danger m-2"><s:message
						code="user.vuilongnhapmatkhau" /></div>
									</div>
								</div>
								<div class="col-12 col-sm-12 col-md-12 col-lg-12">
									<div class="form-group">
										<label for="CustomerPassword"><s:message
						code="user.xacnhanmatkhau" /></label> 
										<form:password path="" ng-model="password1" value=""
											name="password1" required="required" placeholder=""
											id="CustomerPassword" class=""/>
										<div ng-show="frmregister.password1.$invalid"
											class="badge badge-danger m-2"><s:message
						code="user.vuilongnhapxacnhanmatkhau" /></div>
										<div ng-show="password != password1"
											class="badge badge-danger m-2"><s:message
						code="user.xacnhanmatkhaukhongdung" /></div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
									<button ng-disabled="frmregister.$invalid" type="submit"
										class="btn mb-3"><s:message
						code="user.taotaikhoan" /></button>
								</div>
							</div>
						</form:form>
						
					</div>
				</div>
			</div>
		</div>

	</div>
	<!--End Body Content-->

		<!--Footer-->
		<%@include file="./layout/_footer.jsp"%>
		<!--End Footer-->

		<!--Scoll Top-->
		<span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
		<!--End Scoll Top-->

		<!-- Including Jquery -->
		<script src="/assets/js/vendor/jquery-3.3.1.min.js"></script>
		<script src="/assets/js/vendor/modernizr-3.6.0.min.js"></script>
		<script src="/assets/js/vendor/jquery.cookie.js"></script>
		<script src="/assets/js/vendor/wow.min.js"></script>
		<!-- Incing Jascript -->
		<script src="/assets/js/bootstrap.min.js"></script>
		<script src="/assets/js/plugins.js"></script>
		<script src="/assets/js/popper.min.js"></script>
		<script src="/assets/js/lazysizes.js"></script>
		<script src="/assets/js/main.js"></script>
		<!-- Shopping cart -->
		<script src="/assets/js/shopping-cart.js"></script>
		<!--For Newsletter Popup-->
		<script>
			jQuery(document).mouseup(
					function(e) {
						var container = jQuery('#popup-container');
						if (!container.is(e.target)
								&& container.has(e.target).length === 0) {
							container.fadeOut();
							jQuery('#modalOverly').fadeIn(200);
							jQuery('#modalOverly').hide();
						}
					});
		</script>
		<!--End For Newsletter Popup-->
	</div>
</body>


</html>