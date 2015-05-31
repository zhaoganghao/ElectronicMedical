<%@ include file="/WEB-INF/web/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<div class="menu-and-banner">

<!--Menu Part start-->
<%@ include file="/WEB-INF/web/common/navigate.jsp"%>
<!--Menu Part End-->

<!--Title Part start-->
<!--Title Part End-->


</div>
<!--Menu and Banner Part End-->

</div>
</div>
<!--Header End-->

<!--Content start-->
<div id="content">
<div class="content">

<div class="left-bg"></div>
<div class="content-center">

<!--Content Left start-->
<div class="content-left">

<div class="service-text-part">
<h1>科室</h1>
<ul>
<s:iterator value="#categorys" status="st">
     <li><a href='#'>${name}:</a><span> ${description}</span> </li>
</s:iterator>
</ul>
</div>

<div class="specialty-doctors-part">

<h1>请选择医生</h1>

<div class="specialty-doctors-inner">


<s:iterator value="#doctors" status="st">
     <div class="specialty-doctors">
	<h2 ><img src="${pageContext.request.contextPath}${avatar}" width="206px" height="146px"></h2>
	<h3>${identity.name}<span>${username}</span></h3>
	<p>
		${check_remark}
	</p>
	<h4><a href='<s:url action="doctor_detail" namespace="/"></s:url>?user.id=${id}'><img src="images/web/read-more.png" width="103" height="29" alt="" /></a></h4>
</div>
</s:iterator>
</div>
</div>


</div>
<!--Content Left End-->

<!--Sidebar start-->
<%@ include file="/WEB-INF/web/common/siderbar.jsp"%>
<!--Sidebar End-->


</div>
<div class="right-bg"></div>


</div>
</div>
<!--Content End-->


<%@ include file="/WEB-INF/web/common/foot.jsp"%>
