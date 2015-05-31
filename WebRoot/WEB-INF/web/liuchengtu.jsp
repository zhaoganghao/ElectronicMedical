<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/web/common/head.jsp"%>
<style>
#a {
	margin: 100px,auto;
}

#b {
	padding-left: 50px;
}
</style>

<body>

	<!--Site start-->
	<div id="wrapper">


		<!--Header start-->
		<div id="header">
			<div class="header">

				<!--Logo Part start-->
				<%@ include file="/WEB-INF/web/common/logo.jsp"%>
				<!--Logo Part End-->

				<!--Menu and Banner Part start-->
				<div class="menu-and-banner" align="center">

					<!--Menu Part start-->
					<%@ include file="/WEB-INF/web/common/navigate.jsp"%>
				</div>
			</div>
		
		<div id="content">
		<div class="content">

			<div class="left-bg"></div>
			<div class="content-center">
			<div id="b">
				<h1>病人在线看病流程图</h1>
			</div>
			<div align="center">
				<img src="${pageContext.request.contextPath}/images/liucheng.png"
					height="452px" width="750px">
			</div>
			
			
			</div>
			<div class="right-bg"></div>
		</div>
	</div>
	<%@ include file="/WEB-INF/web/common/foot.jsp"%>
