<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

	
<div class="row">
    <div class="col-md-12 m-b-30">
        <!-- begin page title -->
        <div class="d-block d-lg-flex flex-nowrap align-items-center">
            <div class="page-title mr-4 pr-4 border-right">
                <h1><s:message
						code="user.quanlinguoidung" /></h1>
            </div>

            <div class="ml-auto d-flex align-items-center secondary-menu text-center">

            </div>
        </div>
        <!-- end page title -->
    </div>
</div>
<!-- end row -->
<!-- begin row -->
<div class="row">
    <div class="col-md-12 ">
        <div class="card card-statistics">
            <div class="card-header">
                <div class="card-heading">
                    <div class="row">
                        <div class="col-md-6 text-left">
                            <h4 class="card-title"><s:message
						code="user.bangtaikhoan" /></h4>
                        </div>
                        <div class="col-md-6">
                            <form class="justify-content-end">
                                <div class="form-group">
                                    <input oninput="angular.element(this).scope().search(this.value)" type="text"
                                        class="form-control" placeholder="<s:message
						code="user.tim" />">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table ng-if="db" class="table table-light table-hover">
                        <thead>
                            <tr>
                                <th scope="col"></th>
                                <th ng-repeat="role in db.roles" scope="col">{{role.role}}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="acc in db.accounts">
                                <th>{{acc.username}}</th>
                                <th ng-repeat="role in db.roles">
                                    <input type="checkbox" ng-checked="index_of(acc.username, role.role) >= 0"
                                    ng-click="update(acc.username, role.role)"/>
                                </th>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
