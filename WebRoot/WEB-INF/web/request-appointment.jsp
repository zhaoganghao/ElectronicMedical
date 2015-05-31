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

<!--Title Part start-->
<div class="title-part">
<div class="title-image"><img src="${pageContext.request.contextPath}/images/web/service-image.png" width="1005" height="251" alt="" /></div>
<div class="title-part-bg">Contact Us <span>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </span></div>
</div>
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


<div class="contact-form-part">
<form action="${pageContext.request.contextPath}/process_appoint.action"  method="post" >
<div class="contact-form">
<h1> 预约医生</h1>
<input type="hidden" name ="doctorid" value="${doctorid }"/>
<h2>
<img src="${pageContext.request.contextPath}${doctor.avatar}" width="100" height="100"  align="bottom">
<span>医生：${doctor.identity.name}</span>
</h2>

<h2>
时间
<span><input name="appointment.begin" type="text" class="contact-input" />*</span>
</h2>
<h2>
病情描述
<span>
<textarea name="appointment.description" cols="" rows="" class="contact-text-input"></textarea>
</span>
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
