<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="webRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<link rel="stylesheet" href="${initParam.resourceRoot}/css/common/manager-left.css"/>
<script type="text/javascript" src="${initParam.resourceRoot}/js/common/manager-left.js"></script>
<div class="col-md-2 sidebar">
	<div class="col-md-7 col-md-offset-5" style="padding-right: 0">
		<ul class="nav nav-sidebar">
			<li <c:if test="${param.active=='selfinfomanager'}">class="active"</c:if> style="white-space:nowrap; display:inline-block;width: 100%"><a href="${webRoot}/user/selfinfo.html">个人中心</a>
				<ul class="nav nav-sidebar-custom col-md-10 col-md-offset-2" <c:if test="${param.active=='selfinfomanager'}">style="display:inline-block"</c:if> >
					<li <c:if test="${param.subactive=='selfinfo'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/user/selfinfo.html">个人信息</a></li>
					<li <c:if test="${param.subactive=='password'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/user/password.html">修改密码</a></li>
				</ul>
			</li>
			<shiro:hasAnyRoles  name="ADMIN, MANAGER">
			<li <c:if test="${param.active=='usermanager'}">class="active"</c:if> style="white-space:nowrap; display:inline-block;width: 100%"><a href="${webRoot}/user/list.html">用户管理</a>
				<ul class="nav nav-sidebar-custom col-md-10 col-md-offset-2" <c:if test="${param.active=='usermanager'}">style="display:inline-block"</c:if> >
					<li <c:if test="${param.subactive=='userlist'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/user/list.html">用户列表</a></li>
					<li <c:if test="${param.subactive=='adduser'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/user/add.html">添加用户</a></li>
					<c:if test="${param.subactive=='userdetail'}">
					<li class="active" style="white-space:nowrap; display:inline;width: 100%"><a href="javascript:void(0);">用户详情</a></li>
					</c:if>
				</ul>
			</li>
			<li <c:if test="${param.active=='categorymanager'}">class="active"</c:if> style="white-space:nowrap; display:inline-block;width: 100%"><a href="${webRoot}/category/list.html">类别管理</a>
				<ul class="nav nav-sidebar-custom col-md-10 col-md-offset-2" <c:if test="${param.active=='categorymanager'}">style="display:inline-block"</c:if> >
					<li <c:if test="${param.subactive=='categorylist'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/category/list.html">类别列表</a></li>
					<li <c:if test="${param.subactive=='addcategory'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/category/add.html">添加类别</a></li>
					<c:if test="${param.subactive=='categorydetail'}">
					<li class="active" style="white-space:nowrap; display:inline;width: 100%"><a href="javascript:void(0);">类别详情</a></li>
					</c:if>
				</ul>
			</li>
			<li <c:if test="${param.active=='areamanager'}">class="active"</c:if> style="white-space:nowrap; display:inline-block;width: 100%"><a href="${webRoot}/area/list.html">地区管理</a>
				<ul class="nav nav-sidebar-custom col-md-10 col-md-offset-2" <c:if test="${param.active=='areamanager'}">style="display:inline-block"</c:if> >
					<li <c:if test="${param.subactive=='arealist'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/area/list.html">地区列表</a></li>
					<li <c:if test="${param.subactive=='addarea'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/area/add.html">添加地区</a></li>
					<c:if test="${param.subactive=='areadetail'}">
					<li class="active" style="white-space:nowrap; display:inline;width: 100%"><a href="javascript:void(0);">地区详情</a></li>
					</c:if>
				</ul>
			</li>
			<li <c:if test="${param.active=='schoolmanager'}">class="active"</c:if> style="white-space:nowrap; display:inline-block;width: 100%"><a href="${webRoot}/school/list.html">学校管理</a>
				<ul class="nav nav-sidebar-custom col-md-10 col-md-offset-2" <c:if test="${param.active=='schoolmanager'}">style="display:inline-block"</c:if> >
					<li <c:if test="${param.subactive=='schoollist'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/school/list.html">学校列表</a></li>
					<li <c:if test="${param.subactive=='addschool'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/school/add.html">添加学校</a></li>
					<c:if test="${param.subactive=='schooldetail'}">
					<li class="active" style="white-space:nowrap; display:inline;width: 100%"><a href="javascript:void(0);">学校详情</a></li>
					</c:if>
				</ul>
			</li>
			<li <c:if test="${param.active=='edupubcodemanager'}">class="active"</c:if> style="white-space:nowrap; display:inline-block;width: 100%"><a href="${webRoot}/edupubcode/list.html">专业代码管理</a>
				<ul class="nav nav-sidebar-custom col-md-10 col-md-offset-2" <c:if test="${param.active=='edupubcodemanager'}">style="display:inline-block"</c:if> >
					<li <c:if test="${param.subactive=='edupubcodelist'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/edupubcode/list.html">专业代码列表</a></li>
					<li <c:if test="${param.subactive=='addedupubcode'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/edupubcode/add.html">添加专业代码</a></li>
					<c:if test="${param.subactive=='edupubcodedetail'}">
					<li class="active" style="white-space:nowrap; display:inline;width: 100%"><a href="javascript:void(0);">专业详情</a></li>
					</c:if>
				</ul>
			</li>
			</shiro:hasAnyRoles >
			<li <c:if test="${param.active=='commoditymanager'}">class="active"</c:if> style="white-space:nowrap; display:inline-block;width: 100%"><a href="${webRoot}/commodity/list.html">商品管理</a>
				<ul class="nav nav-sidebar-custom col-md-10 col-md-offset-2" <c:if test="${param.active=='commoditymanager'}">style="display:inline-block"</c:if> >
					<li <c:if test="${param.subactive=='commoditylist'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/commodity/list.html">商品列表</a></li>
					<li <c:if test="${param.subactive=='addcommodity'}">class="active"</c:if> style="white-space:nowrap; display:inline;width: 100%"><a href="${webRoot}/commodity/add.html">添加商品</a></li>
					<c:if test="${param.subactive=='commoditydetail'}">
					<li class="active" style="white-space:nowrap; display:inline;width: 100%"><a href="javascript:void(0);">商品详情</a></li>
					</c:if>
					<c:if test="${param.subactive=='modifycommodity'}">
					<li class="active" style="white-space:nowrap; display:inline;width: 100%"><a href="javascript:void(0);">编辑商品</a></li>
					</c:if>
				</ul>
			</li>
		</ul>
	</div>
</div>