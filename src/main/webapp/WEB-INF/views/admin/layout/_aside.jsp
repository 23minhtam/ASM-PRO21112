<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<aside class="app-navbar">
    <!-- begin sidebar-nav -->
    <div class="sidebar-nav scrollbar scroll_light">
        <ul class="metismenu " id="sidebarNav">
            <li class="active">
                <a class="has-arrow" href="#" aria-expanded="false">
                    <i class="nav-icon ti ti-rocket"></i>
                    <span class="nav-title"><s:message code="user.dashboard"/></span>
                </a>
            </li>
            <li>
                <a href="#!brand" aria-expanded="false">
                    <i class="fa-solid fa-address-book"></i>
                    <span class="nav-title"><s:message code="user.brandmanager"/></span>
                </a> 
            </li>
            <li>
                <a href="#!category" aria-expanded="false">
                    <i class="fa-solid fa-boxes-stacked"></i>
                    <span class="nav-title"><s:message code="user.categorymanage"/></span>
                </a>
            </li>
            <li>
                <a href="#!product" aria-expanded="false">
                    <i class="fas fa-box-open"></i>
                    <span class="nav-title"><s:message code="user.productmanager"/></span>
                </a>
            </li>
            <li>
                <a href="#!order" aria-expanded="false">
                    <i class="fas fa-file-invoice-dollar"></i>
                    <span class="nav-title"><s:message code="user.ordermanager"/></span>
                </a>
            </li>
            <li>
                <a class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                    <i class="fa-solid fa-user"></i>
                    <span class="nav-title"><s:message code="user.User"/></span>
                </a>
                <ul aria-expanded="false">
                    <li>
                        <a href='#!user'>
                            <i class="fa-solid fa-file-pen"></i>
                            <span class="nav-title"><s:message code="user.manager"/></span>
                        </a>
                    </li>
                    <li>
                        <a href="#!authenticate">
                            <i class="fa-solid fa-lock"></i>
                            <span class="nav-title"><s:message code="user.authenicate"/></span>
                        </a>
                    </li>

                </ul>
            </li>
        </ul>
    </div>
    <!-- end sidebar-nav -->
</aside>