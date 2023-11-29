<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/home5-cosmetic.html   11 Nov 2019 12:25:38 GMT -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title th:replace="${title}"></title>
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
		<%@include file="../layout/_header.jsp"%>

		<!--Body Content-->

		<div id="page-content">

			<!--Collection Banner-->

			<div class="collection-header">
				<div class="collection-hero">
					<div class="collection-hero__image"></div>
					<div class="collection-hero__title-wrapper">
						<h1 class="collection-hero__title page-width">
							<s:message code="user.danhsachsanpham" />
						</h1>
					</div>
				</div>
			</div>

			<!--End Collection Banner-->
			<!--Breadcrumb-->
			<div class="bredcrumbWrap">
				<div class="container breadcrumbs" role="navigation"
					aria-label="breadcrumbs">
					<a href="/" title="Back to the home page"><s:message
							code="user.trangchu" /></a><span aria-hidden="true">›</span><span><s:message
							code="user.danhsachsanpham" /></span>
				</div>
			</div>
			<!--End Breadcrumb-->
			<div class="container mt-5">
				<div class="row">
					<!--Sidebar-->
					<div class="col-12 col-sm-12 col-md-3 col-lg-3 sidebar filterbar">
						<div class="closeFilter d-block d-md-none d-lg-none">
							<i class="icon icon anm anm-times-l"></i>
						</div>
						<div class="sidebar_tags">

							<!--Price Filter-->
							<label class="price-label"><s:message code="user.gia" /></label>
<select class="form-select price-select" aria-label="Default select example" onchange="redirectOnChange(this)">
    <option value=""></option>
    <option value="1"><s:message code="user.duoi5000$"/></option>
    <option value="2"><s:message code="user.tu5000$-10000$"/></option>
    <option value="3"><s:message code="user.tu10000$-20000$"/></option>
    <option value="4"><s:message code="user.tren20000$"/></option>
    <option value="5"><s:message code="user.tuthapdencao"/></option>
    <option value="6"><s:message code="user.tucaodenthap" /></option>
    <option value="7">Ngày tạo</option>
</select>

							<!--End Price Filter-->



						</div>
					</div>
					<!--End Sidebar-->
					<!--Main Content-->
					<div class="col-12 col-sm-12 col-md-9 col-lg-9 main-col">
						<div class="productList">

							<div class="grid-products grid--view-items">
								<div class="row">
									<c:forEach var="p" items="${products}">
										<div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
											<!-- start product image -->
											<div class="product-image">
												<!-- start product image -->
												<a href="/product/detail/${p.product.id}"> <!-- image -->
													<img class="product primary blur-up lazyload"
													data-src="/images/product/${p.images[0]}"
													src="/images/product/${p.images[0]}"
													alt="${p.product.name}" title="${p.product.name}"> <!-- End image -->
													<!-- Hover image --> <img
													class="product hover blur-up lazyload"
													data-src="/images/product/${p.images[1]}"
													src="/images/product/${p.images[1]}"
													alt="${p.product.name}" title="${p.product.name}"> <!-- End hover image -->
												</a>
												<!-- end product image -->

												<!-- Start product button -->
												<form class="variants add">
													<button ng-click="cart.add(${p.product.id})"
														class="btn btn-addto-cart" type="button">
														<s:message code="user.themvaogiohang" />
													</button>
												</form>
												<div class="button-set">

													<div class="wishlist-btn">
														<a class="btn wishlist add-to-wishlist"
															ng-click="wishlist.add(${p.product.id})"
															title="Add to Wishlist"> <i
															class="icon anm anm-heart-l"></i>
														</a>
													</div>

												</div>
												<!-- end product button -->
											</div>
											<!-- end product image -->

											<!--start product details -->
											<div class="product-details text-center">
												<!-- product name -->
												<div class="product-name">
													<a href="/product/detail/${p.product.id}">${p.product.name}</a>
												</div>
												<!-- End product name -->
												<!-- product price -->
												<div class="product-price">
													<span class="price">${p.product.price}$</span>
												</div>
												<!-- End product price -->
												<!-- Variant -->
												<ul class="swatches">
													<c:forEach var="i" items="${p.images}">
														<li class="swatch medium rounded"><img
															src="/images/product/${i}" alt="image" /></li>
													</c:forEach>
												</ul>
												<!-- End Variant -->
											</div>
											<!-- End product details -->
										</div>
									</c:forEach>
								</div>
							</div>
							<hr class="clear">
							<div class="pagination">
								<ul>
									<li class="active mr-2"><a href="/product/list?p=0">|<</a></li>
									<li class="active mr-2"><a
										href="/product/list?p=${page.number-1}"><<</a></li>
									<li class="active mr-2"><a
										href="/product/list?p=${page.number+1}">>></a></li>
									<li class="active mr-2"><a
										href="/product/list?p=${page.totalPages-1}">>|</a></li>
								</ul>
							</div>
						</div>
						<!--End Main Content-->
					</div>
				</div>

			</div>
			<!--End Body Content-->

			<!--Footer-->
			<%@include file="../layout/_footer.jsp"%>
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
			<script>
				function redirectOnChange(selectElement) {
					var selectedValue = selectElement.value;
					switch (selectedValue) {
					case "1":
						window.location.href = "/product/list/price/under5000";
						break;
					case "2":
						window.location.href = "/product/list/price/5000-10000";
						break;
					case "3":
						window.location.href = "/product/list/price/10000-20000";
						break;
					case "4":
						window.location.href = "/product/list/price/over20000";
						break;
					case "5":
						window.location.href = "/product/sortedByPrice";
						break;
					case "6":
						window.location.href = "/product/list/price-desc";
						break;
					case "7":
						window.location.href = "/product/list/createdate-desc";
						break;
					default:
						// Handle default case or do nothing
					}
				}
			</script>
			<!--End For Newsletter Popup-->
		</div>
</body>


</html>