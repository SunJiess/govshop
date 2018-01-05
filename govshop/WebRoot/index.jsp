<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>政府采购网</title>
<link href="./css/common.css" rel="stylesheet" />
<link href="./css/common-head-footer.css" rel="stylesheet" />
<link href="./css/common-homepage.css" rel="stylesheet" />
<script type="text/javascript" src="./js/util.js"></script>
<script type="text/javascript">
if(this.location != top.location)
	top.location=this.location;
</script>
</head>
<body>

<jsp:include page="./header-block.jsp"></jsp:include>

<div class="main-body">
	<!-- 右边板块 开始 -->
	<div class="main-right">
		<div class="info-block">
			<div class="block-headr">
				<div class="title">注册供应商</div>
				<div class="more"><a href="#">更多</a></div>
			</div>
			<ul class="list-info">
				<s:iterator value="businessInfos" var="business">
					<li><a href="#"><s:property value="#business.copName"/></a></li>
				</s:iterator>
			</ul>
		</div>
		<div class="info-block">
			<div class="block-headr">
				<div class="title">注册供应商</div>
				<div class="more"><a href="#">更多</a></div>
			</div>
			<ul class="list-info">
				<li><a href="#">IBM中国有限公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">IBM中国有限公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">IBM中国有限公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
			</ul>
		</div>
		<div class="info-block">
			<div class="block-headr">
				<div class="title">注册供应商</div>
				<div class="more"><a href="#">更多</a></div>
			</div>
			<ul class="list-info">
				<li><a href="#">IBM中国有限公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">IBM中国有限公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">IBM中国有限公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
				<li><a href="#">HP香港分公司</a></li>
			</ul>
		</div>
	</div>
	<!-- 右边板块 结束 -->
	<!-- 左边板块 开始 -->
	<div class="main-left">
		<div class="main-l-b1">
			<div class="main-l-b1-01">
				<!-- 登录/注册入口 -->
				<div class="block-headr"></div>
				<div class="member-entr">
					<a href="./caigou-reg.jsp"><img alt="" src="./images/cgdw-reg.png" /></a>
					<a href="./provider-reg.jsp"><img alt="" src="./images/gys-reg.png" /></a>
					<a href="./caigou-login.jsp"><img alt="" src="./images/cgdw-login.png" /></a>
					<a href="./provider-login.jsp"><img alt="" src="./images/gys-login.png" /></a>
				</div>
				<div class="providers-list">
					<div class="block-headr">
						<div class="title">注册供应商</div>
						<div class="more"><a href="#">更多</a></div>
					</div>
					<ul class="list-info">
						<li><a href="#">IBM中国有限公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">IBM中国有限公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">IBM中国有限公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">IBM中国有限公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">IBM中国有限公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
					</ul>
				</div>
			</div>
			<div class="main-l-b1-02">
				<div class="page-big-adv">轮换广告</div>
				<div class="dongtai-block">
					<ul class="list-info">
						<li><a href="#">IBM中国有限公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">IBM中国有限公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">IBM中国有限公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
					</ul>
				</div>
				<div class="dongtai-block">
					<ul class="list-info">
						<li><a href="#">IBM中国有限公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">IBM中国有限公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">IBM中国有限公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
						<li><a href="#">HP香港分公司</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main-l-b2">广告部分2</div>
		<div class="main-l-b3">
			<div class="left-sub1">
				<div class="block-headr">
					<div class="title">注册供应商</div>
					<div class="more"><a href="#">更多</a></div>
				</div>
				<ul class="list-info">
					<li><a href="#">IBM中国有限公司</a></li>
					<li><a href="#">HP香港分公司</a></li>
					<li><a href="#">IBM中国有限公司</a></li>
					<li><a href="#">HP香港分公司</a></li>
					<li><a href="#">IBM中国有限公司</a></li>
					<li><a href="#">HP香港分公司</a></li>
					<li><a href="#">HP香港分公司</a></li>
				</ul>
			</div>
			<div class="right-sub1">
				<div class="block-headr1"></div>
				<ul class="list-info">
					<li><a href="#">IBM中国有限公司</a></li>
					<li><a href="#">HP香港分公司</a></li>
					<li><a href="#">IBM中国有限公司</a></li>
					<li><a href="#">HP香港分公司</a></li>
					<li><a href="#">HP香港分公司</a></li>
					<li><a href="#">HP香港分公司</a></li>
					<li><a href="#">HP香港分公司</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 左边板块 结束 -->
</div>
<jsp:include page="./footer-block.jsp"></jsp:include>
</body>
</html>