<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="webRoot" value="${pageContext.request.contextPath}"/>
<%
	String contextPath = request.getContextPath();
	String path = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + contextPath;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>校园E+ 主页</title>
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="${initParam.resourceRoot}/lib/bootstrap/css/bootstrap.min.css">
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script type="text/javascript" src="${initParam.resourceRoot}/lib/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script type="text/javascript" src="${initParam.resourceRoot}/lib/bootstrap/js/bootstrap.min.js"></script>
	<!-- iCheck css和JavaScript文件 -->
	<link href="${initParam.resourceRoot}/lib/iCheck/skins/square/blue.css" rel="stylesheet">
	<script type="text/javascript" src="${initParam.resourceRoot}/lib/iCheck/js/icheck.min.js"></script>
	<!-- select2 css和js -->
	<link rel="stylesheet" href="${initParam.resourceRoot}/lib/select2/css/select2.min.css" />
	<script type="text/javascript" src="${initParam.resourceRoot}/lib/select2/js/select2.min.js"></script>
	<!-- jsrender -->
	<script type="text/javascript" src="${initParam.resourceRoot}/lib/jsrender.min.js"></script>
		
	<!-- index.css 文件必须放到bootstrap.min.cs之后 -->
	<script type="text/javascript" src="${initParam.resourceRoot}/js/index.js"></script>
	<link rel="stylesheet" href="${initParam.resourceRoot}/css/index.css"/>
	<script id="commodityListTmpl" type="text/x-jsrender">
		<div class="commodity col-xs-6 col-lg-4 col-md-4">
			 <div class="thumbnail">
			<a href="javascript:void(0);" data-id="{{:id}}" title="点击查看详情"><img src="/resources{{:picture}}" alt="图片加载失败" style="width:100%;height: 200px" class="img-responsive img-thumbnail"></a>
			<p><a href="javascript:void(0);" data-id="{{:id}}" title="点击查看详情">{{:name}}</a></p>
			<p><span class="price-symbol">¥</span> <strong class="price-current">{{:price }}</strong>  <span class="unimportant">元 / {{:unit }} </span></p>
			<p><span class="unimportant">浏览次数</span>：<strong class="views">{{:views}}</strong> <span class="unimportant">次</span>
				 {{if recommend == 1}}
					<span class="glyphicon glyphicon-thumbs-up" style="margin-left:25px;color:#2a6496" aria-hidden="true"></span> <span class="unimportant">本周推荐</span>
				{{/if}}
			</p>
			<p><span class="unimportant">本商品是由用户：</span>{{:username}} <span class="unimportant">发布</span></p>
			</div>
		</div>
	</script>
</head>
<body>
	<c:import url="common/top.jsp"></c:import>
    <div class="container">
      <div class="row row-offcanvas row-offcanvas-right">
		 <div class="col-xs-6 col-sm-2 sidebar-offcanvas" id="sidebar">
          <div class="list-group">
         	<a href="javascritp:void(0);" class="list-group-item active" data-code="" data-name="所有分类">所有分类</a>
            <a href="#" class="list-group-item" data-code='11' data-name='女装'>女装</a>
            <a href="#" class="list-group-item" data-code='12' data-name='男装'>男装</a>
            <a href="#" class="list-group-item" data-code='13' data-name='鞋靴箱包'>鞋靴箱包</a>
            <a href="#" class="list-group-item" data-code='14' data-name='运动户外'>运动户外</a>
            <a href="#" class="list-group-item" data-code='15' data-name='手机数码'>手机数码</a>
            <a href="#" class="list-group-item" data-code='16' data-name='美妆配饰'>美妆配饰</a>
            <a href="#" class="list-group-item" data-code='17' data-name='生活用品'>生活用品</a>
            <a href="#" class="list-group-item" data-code='18' data-name='学习用品'>学习用品</a>
            <a href="#" class="list-group-item" data-code='91' data-name='其他'>其他</a>
          </div>
        </div><!--/.sidebar-offcanvas-->
        <div class="col-xs-12 col-sm-10">
          	<div class="form-group">
          		<div class="form-group">
          			已选择：<span class="btn btn-default btn-xs" id="id_category" data-code="">所有分类</span> > <span class="btn btn-default btn-xs" id="id_city" data-code="">郑州市</span> > <span class="btn btn-default btn-xs" id="id_area" data-code="">不限</span> > <span class="btn btn-default btn-xs" id="id_school" data-code="">不限</span>
          		</div>
          		<table class="table table-condensed" style="margin-bottom:0px;">
          		<colgroup><col width="10%"></col><col width="10%"></col><col width="10%"></col><col width="10%"></col><col width="10%"></col><col width="10%"></col><col width="10%"></col><col width="10%"></col><col width="10%"></col><col width="10%"></col></colgroup>
          			<tbody>
          				<tr class="hot">
          					<th>热门:</th>
          					<td><a href="javascript:void(0)" data-code='1101' data-name='连衣裙'>连衣裙</a></td>
          					<td><a href="javascript:void(0)" data-code='1104' data-name='短裤'>短裤</a></td>
          					<td><a href="javascript:void(0)" data-code='1305' data-name='高跟鞋'>高跟鞋</a></td>
          					<td><a href="javascript:void(0)" data-code='1308' data-name='女式包包'>女式包包</a></td>
          					<td><a href="javascript:void(0)" data-code='1404' data-name='篮球'>篮球</a></td>
          					<td><a href="javascript:void(0)" data-code='1407' data-name='自行车'>自行车</a></td>
          					<td><a href="javascript:void(0)" data-code='1501' data-name='手机'>手机</a></td>
          					<td><a href="javascript:void(0)" data-code='1502' data-name='电脑'>电脑</a></td>
          					<td><a href="javascript:void(0)" data-code='1702' data-name='台灯'>台灯</a></td>
          				</tr>
          				<tr class="city">
          					<th>城市:</th>
          					<td colspan="9">
          						<span id="cityName" data-code="4101" data-name="郑州市">郑州市</span>
          						<span id="editCity">
          							<select id="province" name="province" class="form-control js-example-data-array-selected" style="width: 150px; float: left;" data-role="${user.role }">
										<option value="" selected="selected">请选择</option>
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
									<select id="city" name="city" class="form-control js-example-data-array-selected" style="width: 112px; float: left;">
										<option value="">请选择</option>
									</select> 
          						</span>
          						<button class="btn btn-default btn-xs" id="changeCity">切换城市</button>
          						<button class="btn btn-info btn-xs" id="changeCitySure">确定</button>
          						<button class="btn btn-default btn-xs" id="changeCityCancel">取消</button>
          						<span class="help-block" id="areaerror">请选择市/县 </span>
          					</td>
          				</tr>
          				<tr class="area">
          					<th>区域:</th>
          					<td><a href="javascript:void(0)" data-code=''>金水区</a></td>
          					<td><a href="javascript:void(0)" data-code=''>中原区</a></td>
          					<td><a href="javascript:void(0)" data-code=''>二七区</a></td>
          					<td><a href="javascript:void(0)" data-code=''>管城回族区</a></td>
          					<td><a href="javascript:void(0)" data-code=''>惠济区</a></td>
          					<td><a href="javascript:void(0)" data-code=''>上街区</a></td>
          					<td><a href="javascript:void(0)" data-code=''>高新区</a></td>
          					
          				</tr>
          				<tr class="school">
          					<th>学校:</th>
          					<td><a href="javascript:void(0)" data-code=''>郑州大学（新校区）</a></td>
          					<td><a href="javascript:void(0)" data-code=''>郑州大学（老校区）</a></td>
          					<td><a href="javascript:void(0)" data-code=''>河南农业大学</a></td>
          					<td><a href="javascript:void(0)" data-code=''>河南中医学院大学</a></td>
          					<td><a href="javascript:void(0)" data-code=''>河南教育学院</a></td>
          					<td><a href="javascript:void(0)" data-code=''>华北水利水电学院</a></td>
          					<td><a href="javascript:void(0)" data-code=''>河南工业大学</a></td>
          					<td><a href="javascript:void(0)" data-code=''>郑州轻工业学院</a></td>
          					<td><button style="" class="btn btn-default btn-xs">更多<span class="caret"></span></button></td>
          				</tr>
          			</tbody>
          		</table>
          	</div>
          <div class="jumbotron" style="padding-top: 10px;"><!-- 这里对这个jumbotron的“内上”边距进行了重写设置比较padding-top为10px -->
         	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
				<li data-target="#carousel-example-generic" data-slide-to="5"></li>
			  </ol>
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" role="listbox">
			    <div class="item active">
			      <img src="${initParam.resourceRoot}/img/test-1.jpg" alt="...">
			    </div>
			    <div class="item">
			      <img src="${initParam.resourceRoot}/img/test-2.jpg"  alt="...">
			    </div>
			    <div class="item">
			      <img src="${initParam.resourceRoot}/img/test-3.jpg"  alt="...">
			    </div>
			    <div class="item">
			      <img src="${initParam.resourceRoot}/img/test-4.jpg"  alt="...">
			    </div>
			    <div class="item">
			      <img src="${initParam.resourceRoot}/img/test-5.jpg" alt="...">
			    </div>
				<div class="item">
			      <img src="${initParam.resourceRoot}/img/test-6.jpg" alt="...">
			    </div>
			    
			  </div>
			
			  <!-- Controls -->
			  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
          </div>
          <div class="row">
          	<div id="content">
				<div id="loadContentWrap">
					<div id="loadingImg">
						<img width="580px" height="435px" src="${initParam.resourceRoot}/img/loading.gif" />
					</div>
				</div>
				<div class="pagging clearfix col-md-12">
					<ul class="pagination pageWrap pull-right">
					</ul>
				</div>
			</div>
          </div><!--/row-->
        </div><!--/.col-xs-12.col-sm-9-->

      </div><!--/row-->
      <hr>
      <footer class="bs-docs-footer">
        <p>&copy; 2015 Zhengzhou University of Light Industry WangChen</p>
        <p></p>
      </footer>

    </div><!--/.container-->
    <!-- 首页小分类的展示 -->
    <div id="popover" style="background-color:#fff;color: #555;font-size: 14px;" >
	
	</div>
	<div class="modal fade" id="moreAreaModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">请选择所在地区</h4>
	      </div>
	      <div class="modal-body">
	        
	      </div>
	      <div class="modal-footer">
	      	<span class="help-block" >未选择任何地区</span>
	        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button type="button" class="btn btn-primary btn-sure">确定</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<div class="modal fade" id="moreSchoolModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">请选择所在学校</h4>
	      </div>
	      <div class="modal-body">
	       
	      </div>
	      <div class="modal-footer">
	      	<span class="help-block" >未选择任何学校</span>
	        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button type="button" class="btn btn-primary btn-sure">确定</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
</body>
</html>