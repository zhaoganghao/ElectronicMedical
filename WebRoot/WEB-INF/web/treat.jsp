<%@ include file="/WEB-INF/web/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script language="JavaScript">
function submitRegister() {
		var form = document.forms[0];
		form.submit();
	}
</script>
<<style>
<!--
.contact-form h2 {
font: Normal 24px Arial, Helvetica, sans-serif;
color: rgb(71, 71, 71);
padding-bottom: 15px;
}
-->
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


<div class="service-text-part" style="width:100%">
<h1 align="center" style="width:100%">视频语言会诊</h1>
<h3 style="width: 100% ;background: #DDDDDD;" >
 <iframe width=" 100%" height="340"  frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src=""></iframe>

</h3>
</div>



<div class="contact-form-part" style="width:100%" >
<form action="${pageContext.request.contextPath}/process_treatFirst.action" method="post" >
<input type="hidden" name="appointment.id"   value="${appointment.id}"  />
<div class="contact-form" style="width:100%">
<h1 >病人病历</h1>

<h2 style="width:100%">
内容:
<span style="width:100%"><textarea name="medicalRecord.content"  style="width:100%;height:300px"  rows="40" class="contact-text-input"></textarea></span>
</h2>
<h2 >
是否要体检:
<span style="width:100%;float: none;" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;否<input name="medicalRecord.is_check" type="radio" value="0" />&nbsp;&nbsp;
是<input name="medicalRecord.is_check" type="radio" value="1" />
</span>
</h2>
<h2 style="width:100%">
诊断结果:
<span style="width:100%"><textarea name="medicalRecord.result"  style="width:100%;height:300px"  cols="" rows="" class="contact-text-input"></textarea></span>
</h2>

<h3>
<a href="#" onclick="submitRegister();"><img src="${pageContext.request.contextPath}/images/web/send-now.png" width="91" height="29" alt="" /></a></h3>
</div>
</form>

</div>






<!--Content Left End-->

</div>
<div class="right-bg"></div>

</div>
</div>
<!--Content End-->


<%@ include file="/WEB-INF/web/common/foot.jsp"%>
