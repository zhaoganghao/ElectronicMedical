<%@ include file="/WEB-INF/web/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script language="JavaScript">
function selectRole(role) {
		var form = document.forms[0];
		form['user.role'].value = role;
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
<input type="hidden" name ="user.role"/>
<input type="hidden" name ="user.id" value ='<s:property value="user.id"/>'/>
<div class="contact-form">
<h1>请等待医生同意</h1>

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
