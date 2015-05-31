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
<table width="649" border="1" align="center" cellpadding="3" cellspacing="0"  bordercolor="#E0E0E0" >
  <tbody>
    <tr>
    <td width="131" height="127" align="center"><p><img src="${pageContext.request.contextPath}${user.avatar}" width="100" height="100"></p>
      <p><s:property value="#session.user.username"/></p></td>
    <td width="500">
    	<p>地址：<s:property value="#session.user.identity.address"/></p>
    	<p>电话：<s:property value="#session.user.phone"/></p>
        <p>邮箱：<s:property value="#session.user.email"/></p></td>
  </tr>
  <tr>
    <td align="center">
    
    <s:if test="#session.user.role == 'newuser'">
    
    <a href='<s:url action="register_secondUI" namespace="/"></s:url>?user.id=${user.id}'>选择角色</a>
	</s:if>
	 <s:if test="#session.user.role == 'pending'">
    	正在认证中
	</s:if>
	 <s:if test="#session.user.role == 'patient'">
    	病人
	</s:if>
	 <s:if test="#session.user.role == 'doctor'">
    	医生
	</s:if>
    </td>
    <td>&nbsp;</td>
  </tr>
  
  <tr>
    <td align="center">身份证：</td>
    <td><p><img src="${pageContext.request.contextPath}${user.identity.ic_image}" width="300" height="300"></p>
      <p>证件号：<s:property value="#session.user.identity.NRIC_FIN"/>&nbsp; &nbsp;&nbsp; &nbsp;  &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;姓名：<s:property value="#session.user.identity.name"/></p></td>
  </tr>
  
  <s:if test="#session.user.role == 'doctor'">
  <tr>
    <td align="center">医生资格证书</td>
    <td><img src="${pageContext.request.contextPath}${user.identity.doctor_licence_image}" width="300" height="300"></td>
  </tr>
  <tr>
    <td align="center">工作证明</td>
    <td><img src="${pageContext.request.contextPath}${user.identity.experience_image}" width="300" height="300"></td>
  </tr>
   <tr>
    <td align="center">毕业证明</td>
    <td><img src="${pageContext.request.contextPath}${user.identity.academic_certificate_image}" width="300" height="300"></td>
  </tr>
  </s:if>
</tbody></table>

</div>

<div class="right-bg"></div>

</div>
</div>
<!--Content End-->


<%@ include file="/WEB-INF/web/common/foot.jsp"%>
