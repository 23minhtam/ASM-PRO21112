<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div>
	<!--Search Form Drawer-->
	<div class="search">
		<div class="search__form">
			<form class="search-bar__form" action="/product/list">
				<button class="go-btn search__button" type="submit">
					<i class="icon anm anm-search-l"></i>
				</button>
				<input class="search__input" type="search" name="kw"
					value="${sessionScope.keywords}"
					placeholder="Search entire store..." aria-label="Search"
					autocomplete="off">
			</form>
			<button type="button" class="search-trigger close-btn">
				<i class="anm anm-times-l"></i>
			</button>
		</div>
	</div>
	<!--End Search Form Drawer-->
	<!--Top Header-->
	<div class="top-header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">
					<div class="language-dropdown">

						<a class="language-dd" href="?lang=us">US</a> <a
							class="language-dd" href="?lang=vi">VI</a>

					</div>
					<p class="phone-no">
						<i class="anm anm-phone-s"></i> +8999999999
					</p>
				</div>
				<div class="col-md-1 d-none d-lg-none d-md-block d-lg-block">
				</div>
				<div class="col-md-8 text-right">
					<span class="user-menu d-block d-lg-none"><i
						class="anm anm-user-al" aria-hidden="true"></i></span>
					<ul class="customer-links list-inline">
						<c:if test="${not empty sessionScope.user }">

							<li><a class="fw-bold" href="#">
									${sessionScope.user.username }</a></li>
							<li><a href="/logout"><s:message code="user.dangxuat" /></a></li>
							<li><a href="/order/list"><s:message code="user.donhang" /></a></li>
							<li><a href="/order/wishlist"><s:message code="user.sanphamyeuthich" /></a></li>
						</c:if>
						<c:if test="${empty sessionScope.user }">

							<li><a href="/login"><s:message code="user.dangnhap" /></a></li>
							<li><a href="/register"><s:message
										code="user.taotaikhoan" /></a></li>

						</c:if>
						<c:if test="${not empty sessionScope.userAdmin}">
							<li><a href="/admin"><s:message code="user.admin" /></a></li>
						</c:if>
					</ul>

				</div>
			</div>
		</div>
	</div>
	<!--End Top Header-->
	<!--Header-->
	<div class="header-wrap classicHeader animated d-flex">
		<div class="container-fluid">
			<div class="row align-items-center">
				<!--Desktop Logo-->
				<div class="logo col-md-2 col-lg-2 d-none d-lg-block">
					<a style="text-decoration: none;" href="/"><h1
							style="font-size: 20px; font-weight: 600; color: rgb(39, 39, 39);"><s:message code="name.tencuahang" /></h1> </a>


				</div>
				<!--End Desktop Logo-->
				<div class="col-2 col-sm-3 col-md-3 col-lg-8">
					<div class="d-block d-lg-none">
						<button type="button"
							class="btn--link site-header__menu js-mobile-nav-toggle mobile-nav--open">
							<i class="icon anm anm-times-l"></i> <i class="anm anm-bars-r"></i>
						</button>
					</div>
					<!--Desktop Menu-->
					<nav class="grid__item" id="AccessibleNav">
						<!-- for mobile -->
						<ul id="siteNav" class="site-nav medium right hidearrow">

							<li class="lvl1 parent megamenu"><a href="/"><s:message
										code="user.trangchu" /> <i class="anm anm-angle-down-l"></i></a></li>
							<li class="lvl1 parent megamenu"><a href=""><s:message
										code="user.sanpham" /> <i class="anm anm-angle-down-l"></i>

							</a>
								<div class="megamenu style4">
									<ul class="grid grid--uniform mmWrapper">
										<li class="grid__item lvl-1 col-md-3 col-lg-3"><a

											href="/product/list?kw=" class="site-nav lvl-1"><s:message
													code="user.danhmucsanpham" /></a>

											<ul class="subLinks">
												<c:forEach var="item" items="${cates}" end="4">
													<li class="lvl-2"><a
														href="/product/list?cid=${item.id}" class="site-nav lvl-2">${item.name}</a>
													</li>
												</c:forEach>
											</ul></li>
										<li class="grid__item lvl-1 col-md-3 col-lg-3"><a
											href="#" class="site-nav lvl-1"></a>
											<ul class="subLinks">
												<li class="lvl-2"><a href="#" class="site-nav lvl-2"></a>
												</li>
												<c:forEach var="cate" items="${cates }" begin="5">
													<li class="lvl-2"><a
														href="/product/list?cid=${cate.id}" class="site-nav lvl-2">${cate.name}</a>
													</li>
												</c:forEach>
											</ul></li>
									</ul>
								</div></li>

							<li class="lvl1 parent megamenu"><a href="/brand/list"> <s:message code="user.thuonghieu" /> <i class="anm anm-angle-down-l"></i>
							</a></li>

							<li class="lvl1"><a href="#"><b> <s:message
											code="user.muangay" />

								</b> <i class="anm anm-angle-down-l"></i></a></li>

						</ul>
					</nav>
					<!--End Desktop Menu-->
				</div>
				<!--Mobile Logo-->
				<div
					class="col-6 col-sm-6 col-md-6 col-lg-2 d-block d-lg-none mobile-logo">
					<div class="logo">
						<a> <img src="/assets/images/Shopicon1.svg"
							alt="Belle Multipurpose Html Template"
							title="Belle Multipurpose Html Template" />
						</a>
					</div>
				</div>
				<!--Mobile Logo-->
				<%@include file="../layout/_cart.jsp"%>
			</div>
		</div>
	</div>
	<!--End Header-->


</div>