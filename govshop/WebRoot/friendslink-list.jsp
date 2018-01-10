<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>友情连接</title>
<link href="./css/common.css" rel="stylesheet" />
<link href="./css/common-head-footer.css" rel="stylesheet" />
<link href="./css/common-info-list.css" rel="stylesheet" />
</head>
<body>
<jsp:include page="./header-block.jsp"></jsp:include>
<div class="current-location">
	<div class="location-tip">当前位置：</div>
	<div class="location-txt">友情连接</div>
</div>
<div class="info-list-panel">
 	<%--错误信息 --%>
	<s:actionerror/>
	
	<ul class="info-list">
		<s:iterator value="friendsLink" var="friendLink">
			<li><a href="<s:property value="#friendLink.url"/>" target="_blank"><s:property value="#friendLink.siteName"/></a></li>
		</s:iterator>
	</ul>
	<div class="page-bar-panel">
		<s:a href="showFriendLink?page=1">首页</s:a>&nbsp;
		<s:if test="mypage.hasPreviousPage">
			<s:a href="showFriendLink?page=%{mypage.prePage}">上一页&nbsp;</s:a>
		</s:if>
		<s:if test="mypage.hasNextPage">
			<s:a href="showFriendLink?page=%{mypage.nextPage}">下一页&nbsp;</s:a>
		</s:if>
		<s:a href="showFriendLink?page=%{mypage.totalPage}">尾页</s:a>									
	</div>
</div>
<jsp:include page="./footer-block.jsp"></jsp:include>
</body>
</html>