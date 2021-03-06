<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>校园E+ 重置密码</title>
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="${initParam.resourceRoot}/lib/bootstrap/css/bootstrap.min.css">
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script type="text/javascript" src="${initParam.resourceRoot}/lib/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script type="text/javascript" src="${initParam.resourceRoot}/lib/bootstrap/js/bootstrap.min.js"></script>
	<!-- md5 的 js 文件 -->
	<script type="text/javascript" src="${initParam.resourceRoot}/lib/md5.js"></script>
	
	<!-- 页面的和css 文件必须放到bootstrap。min.cs之后-->
	<script type="text/javascript" src="${initParam.resourceRoot}/js/user/password.js"></script>
	<link rel="stylesheet" href="${initParam.resourceRoot}/css/user/password.css" />
</head>
<body>
	<c:import url="../common/manager-top.jsp"></c:import>
	<c:import url="../common/manager-left.jsp"><c:param name="active">selfinfomanager</c:param><c:param name="subactive">password</c:param></c:import>
	
	<div class="container-fluid col-md-10 col-md-offset-2" style="padding: 20px;">
		<div class="show-grid">
			<div id="mainList">
				<form class="form-horizontal col-md-offset-1 col-md-10" id="myForm" role="form">
				<fieldset>
					<legend>修改密码</legend>
					<div class="alert" role="alert">...</div>
					<div class="form-group" style="margin-top: 20px;">
						<label for="oldpassword" class="col-sm-4 text-right">请输入旧密码</label>
						<div class="col-sm-4">
							<input type="password" class="form-control" id="oldpassword" name="oldpassword" placeholder="请输入旧密码"> 
						</div>
						<div class="col-sm-3" style="margin-top: 5px;padding-left: 0px;margin-left: 0px;">
							<span class="help-block" id="oldpassworderror"></span>
						</div>
					</div>
					<div class="form-group" style="margin-top: 20px;">
						<label for="newpassword" class="col-sm-4 text-right">请设置新密码</label>
						<div class="col-sm-4">
							<input type="password" class="form-control" id="newpassword" name="newpassword" placeholder="请设置新密码"> 
						</div>
						<div class="col-sm-3" style="margin-top: 5px;padding-left: 0px;margin-left: 0px;">
							<span class="help-block" id="newpassworderror"></span>
						</div>
					</div>
					<div class="form-group" style="margin-top: 20px;">
						<label for="password" class="col-sm-4 text-right">请再次输入新密码</label>
						<div class="col-sm-4">
							<input type="password" class="form-control" id="password" name="password" placeholder="请再次输入新密码"> 
						</div>
						<div class="col-sm-3" style="margin-top: 5px;padding-left: 0px;margin-left: 0px;">
							<span class="help-block" id="passworderror"></span>
						</div>
					</div>
					<div class="form-group" style="margin-top: 20px;">
						<div class="col-sm-2 col-sm-offset-3">
							<button class="btn btn-info btn-sure" type="button">提交</button>
						</div>
						<div class="col-sm-2">
							<button class="btn btn-default btn-cancel" type="button">返回</button>
						</div>
					</div>
				</fieldset>
				</form>
			</div>
		</div>	
	</div>
</body>
</html>