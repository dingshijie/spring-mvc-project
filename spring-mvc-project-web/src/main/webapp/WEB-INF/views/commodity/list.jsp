<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="${initParam.resourceRoot}/lib/bootstrap/css/bootstrap.min.css">
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script type="text/javascript" src="${initParam.resourceRoot}/lib/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script type="text/javascript" src="${initParam.resourceRoot}/lib/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- list.css 文件必须放到bootstrap。min.cs之后 -->
	<link rel="stylesheet" href="${initParam.resourceRoot}/css/commodity/list.css">
	<script type="text/javascript" src="${initParam.resourceRoot}/js/commodity/list.js"></script>

</head>
<body>
	<c:import url="../common/manager-top.jsp"></c:import>
	<c:import url="../common/manager-left.jsp"><c:param name="active">commoditymanager</c:param><c:param name="subactive">commoditylist</c:param></c:import>
	<div class="container-fluid col-md-10 col-md-offset-2" style="padding: 20px;">
		<c:if test="${not empty  successMsg }">
			<div class="alert alert-success"><i class="iconfont"></i> ${successMsg}</div>
		</c:if>
		<div class="row">
			<div class="col-md-12">
				<form class="form-inline" role="form">
					<div class="form-group">
						<select id="category" name="category" class="form-control" style="width:auto; float: left;">
						    <option value="" selected="selected">所有类别</option>
							<option value="11">11 女装</option>
							<option value="12">12 男装</option>
							<option value="13">13 鞋靴箱包</option>
							<option value="14">14 运动户外</option>
							<option value="15">15 手机数码</option>
							<option value="16">16 美妆配饰</option>
							<option value="17">17 生活用品</option>
							<option value="18">18 学习用品</option>
							<option value="91">91 其他</option>
						</select>  
					</div>
					<shiro:hasAnyRoles name="ADMIN, MANAGER">
					<div class="form-group">
						<select id="province" name="province" class="form-control" style="width: auto; float: left;">
							<option value="" selected="selected">全部省份</option>
							<option value="11">北京市</option>
							<option value="12">天津市</option>
							<option value="13">河北省</option>
							<option value="14">山西省</option>
							<option value="15">内蒙古自治区</option>
							<option value="21">辽宁省</option>
							<option value="22">吉林省</option>
							<option value="23">黑龙江省</option>
							<option value="31">上海市</option>
							<option value="32">江苏省</option>
							<option value="33">浙江省</option>
							<option value="34">安徽省</option>
							<option value="35">福建省</option>
							<option value="36">江西省</option>
							<option value="37">山东省</option>
							<option value="41">河南省</option>
							<option value="42">湖北省</option>
							<option value="43">湖南省</option>
							<option value="44">广东省</option>
							<option value="45">广西壮族自治区</option>
							<option value="46">海南省</option>
							<option value="50">重庆市</option>
							<option value="51">四川省</option>
							<option value="52">贵州省</option>
							<option value="53">云南省</option>
							<option value="54">西藏自治区</option>
							<option value="61">陕西省</option>
							<option value="62">甘肃省</option>
							<option value="63">青海省</option>
							<option value="64">宁夏回族自治区</option>
							<option value="65">新疆维吾尔自治区</option>
						</select> 
					</div>
					<div class="form-group" style="display: none">
						<select id="school" name="schoolCode" class="form-control" style="width: auto;float: left">
							<option value="" selected="selected">请选择院校</option>
						</select>
					</div>
					</shiro:hasAnyRoles>
					<div class="form-group">
						<select id="status" name="status" class="form-control" style="width: auto;float: left">
							<option value="10" selected="selected">全部</option>
							<option value="0">下架</option>
							<option value="1">在售</option>
						</select>
					</div>
					<div class="form-group">
						<select id="recommend" name="recommend" class="form-control" style="width: auto;float: left">
							<option value="10" selected="selected">全部</option>
							<option value="0">不推广</option>
							<option value="1">已推广</option>
						</select>
					</div>
					<div class="form-group">
						<select id="used" name="used" class="form-control" style="width: auto;float: left">
							<option value="10" selected="selected">全部</option>
							<option value="0">全新</option>
							<option value="1">二手</option>
						</select>
					</div>
					<div class="form-group">
						<input type="text" placeholder="请输入查询的关键字" class="form-control" style="width: 150px;" id="keyword">
					</div>
					<button type="button" class="btn btn-success" id='keywordSearch'>查询</button>
					<button type="reset" class="btn reset"></button>
					<a href="javascript:void(0)" id="download" title="导出到处所有用户到excel文件" class="btn btn-info disabled pull-right"> 
					<span class="glyphicon glyphicon-save"></span> 导出Excel
					</a>
				</form>
				
			</div>
			
		</div>
		<div class="alert" role="alert"></div>
		<div class="row">
			<div class="container-fluid">
				<div class="panel comcode-wrap">
					<div class="panel-heading comcode-title clearfix">
						<ul class="pagination pull-right pageWrap"></ul>
						<div class="pull-left pageSizeWrap">
							<select id="pageSize">
								<option value="10" selected="selected">10</option>
								<option value="15">15</option>
								<option value="20">20</option>
							</select> 条 / 页
						</div>
					</div>
					<div id="content" class="panel-body">
						<div id="loadContentWrap">
							<div id="loadingImg">
								<img width="580px" height="435px" src="${initParam.resourceRoot}/img/loading.gif" />
							</div>
						</div>
						<div class="pagging clearfix">
							<ul class="pagination pageWrap pull-right">
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>