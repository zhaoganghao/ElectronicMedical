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
<form action="${pageContext.request.contextPath}/register_three.action"  enctype="multipart/form-data" method="post" >
<div class="contact-form">
<h1><img src="${pageContext.request.contextPath}/images/web/step-3.png" width="30px" height="30px"/>  填写身份信息</h1>
<input type="hidden" name="identity.id" value="<s:property value="user.identity.id"/>" />
<input type="hidden" name ="user.id" value ='<s:property value="user.id"/>'/>
<h2>
真实姓名
<span><input name="identity.name" type="text" class="contact-input" />*</span>
</h2>

<h2>
地址
<span><input name="identity.address" type="text" class="contact-input" />*</span>
</h2>

<h2>
身份证
<span><input name="ic_image" type="file" class="contact-input" />*</span>
</h2>
<h2>
身份证号码
<span><input name="identity.NRIC_FIN" type="text" class="contact-input" />*</span>
</h2>
<s:if test="user.role=='pending'">
                	<h2>
医生资格证书
<span><input name="doctor_licence_image" type="file" class="contact-input" />*</span>
</h2>
<h2>
工作经验
<span><input name="identity.experience_age" type="text" class="contact-input" />*</span>
</h2>
<h2>
工作证明
<span><input name="experience_image" type="file" class="contact-input" />*</span>
</h2>
<h2>
文凭
<span><input name="identity.diploma" type="text" class="contact-input" />*</span>
</h2>
<h2>
毕业高校
<span><input name="identity.diploma_school" type="text" class="contact-input" />*</span>
</h2>
<h2>
毕业学校证书
<span><input name="academic_certificate_image" type="file" class="contact-input" />*</span>
</h2>
<h2>
科室
<span>
 <select name="user.category.id">
			 <s:iterator value="#categorys" status="st">
				 <option value="${id}"  >${name}</option>
			</s:iterator>
 </select>

</span>
</h2>
</s:if>

<h3><a href="#" onclick="submitRegister();" ><img src="${pageContext.request.contextPath}/images/web/send-now.png" width="91" height="29" alt="" /></a></h3>
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
<s:debug/>