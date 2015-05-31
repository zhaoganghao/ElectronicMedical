<%@ include file="/WEB-INF/web/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script language="JavaScript">
function submitRegister() {
		var form = document.forms[0];
		form.submit();
	}
</script>
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


<div class="contact-form-part">
<form action="${pageContext.request.contextPath}/register_first.action" enctype="multipart/form-data" method="post" >
<div class="contact-form">
<h1><img src="${pageContext.request.contextPath}/images/web/step-1.png" width="30px" height="30px"/>  填写帐号信息</h1>

<h2>
用户名
<span><input name="user.username" type="text" class="contact-input" />*</span>
</h2>

<h2>
电子邮件
<span><input name="user.email" type="text" class="contact-input" />*</span>
</h2>

<h2>
头像
<span><input name="avatar" type="file" class="contact-input" />*</span>
</h2>
<h2>
密码
<span><input name="user.password" type="password" class="contact-input" />*</span>
</h2>

<h3>
<a href="#" onclick="submitRegister();"><img src="${pageContext.request.contextPath}/images/web/send-now.png" width="91" height="29" alt="" /></a></h3>
</div>
</form>

</div>






</div>
<!--Content Left End-->

</div>
<div class="right-bg"></div>

</div>
</div>
<!--Content End-->


<%@ include file="/WEB-INF/web/common/foot.jsp"%>
