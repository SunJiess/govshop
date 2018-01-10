<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<div class="head-panel">政府采购网</div>
<div class="navigate-panel">
	<ul class="navigate-menu-ul">
		<li><a href="./index">首页</a></li>
		<li><a href="./worknews-list.jsp">工作动态</a></li>
		<li><a href="./caigou-pub-list.jsp">采购公告</a></li>
		<li><a href="./marketnews-list.jsp">市场动态</a></li>
		<li><a href="./providers-list.jsp">供应商列表</a></li>
		
		<li><a href="./showFriendLink?page=1">友情链接</a></li>
		
		<li><a href="./rulelaw-list.jsp">政策法规</a></li>
		<li><a href="./caigou-guid-list.jsp">采购指南</a></li>
		<li><a href="./about-us.jsp">关于我们</a></li>
		
		<s:if test="#session.usertype==2">
	    	<li><a href="admin/index">后台管理</a></li>
	    </s:if>
	    <s:else>
	      	<li><a href="admin">后台管理</a></li>
	    </s:else>
	</ul>
</div>