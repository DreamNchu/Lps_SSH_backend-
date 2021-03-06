<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	StringBuffer basePath = request.getRequestURL();
%>
<%-- <s:debug></s:debug> --%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>小店助手</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="alternate icon" type="img/hengwang-1.png"
	href="img/hengwang-1.png">
<link rel="stylesheet" href="css/amazeui.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="../js/ajax_js.js"></script>
<script src="js/headCSS.js"></script>
<script src="js_cyl/modifyUserData.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		setHeadCSS("userModifyDataModel");

		ajaxRequest("viewUserData", resolveModifyUserData);

		$("#confirm").click(function() {
			formSubmit("modifyUserData", "userData");
		})

		var date = new Date();
		var seperator1 = "-";
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var strDate = date.getDate();
		if (month >= 1 && month <= 9) {
			month = "0" + month;
		}
		if (strDate >= 0 && strDate <= 9) {
			strDate = "0" + strDate;
		}
		var currentdate = year + seperator1 + month + seperator1 + strDate;
		var before = (year - 100) + seperator1 + month + seperator1 + strDate;
		
		$("#birthday").attr("max", currentdate);
		$("#birthday").attr("min", before);
	})
</script>
</head>
<body>
	<header class="am-topbar header">
		<jsp:include page="include/head.jsp"></jsp:include>
	</header>
	<div class="toppic" style="background-image: url('img/xgxx.jpg')">
		<div class="am-container-1">
			<div class="toppic-title left">
				<span class="toppic-title-span"></span>
			</div>
		</div>
	</div>

	<div class=" am-container-1">
		<div class="container">
			<div class="row">
				<div
					class="col-xs-10 col-xs-offset-2 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2">
					<h2 style="font-family: 仿宋;color: #1b6d85">员工信息修改栏</h2>
				</div>
				<div
					class="col-xs-12  col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2">
					<form id="userData" method="post">
					<input type="hidden" id="stuffId" name="data.stuffId">
						<table class="table">
							<tbody align="center">
								<tr>
									<td>姓名：</td>
									<td><input type="text" id="realName" name="data.realName" /></td>
								</tr>
								<tr>
									<td>出生日期：</td>
									<td><input type="date" id="birthday" name="data.birthday" /></td>
								</tr>
								<tr>
									<td>工号：</td>
									<td><input type="text" id="workId" name="data.workId" /></td>
								</tr>
								
								<tr>
									<td>身份证号码：</td>
									<td><input type="text" id="IDCardNo" name="data.IDCardNo" /></td>
								</tr>
								<tr>
									<td>电话号码：</td>
									<td><input type="text" id="telephone"
										name="data.telephone"></td>
								</tr>
								<tr>
									<td>电子邮箱：</td>
									<td><input type="text" id="email" name="data.email"></td>
								</tr>
								<tr>
									<td>家庭住址：</td>
									<td><input type="text" id="address" name="data.address"></td>
								</tr>
								<tr align="center">
									<td colspan="2"><input type="button" id="confirm"
										class="btn btn-primary" value="确认修改" /></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="js/jquery.min.js"></script>
<script src="js/amazeui.min.js"></script>
<!--[if (gte IE 9)|!(IE)]><!-->

</html>
