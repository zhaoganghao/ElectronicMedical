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
 <s:if test="#session.user.role=='doctor'">

<table width="649" border="1" align="center" cellpadding="3" cellspacing="0"  bordercolor="#E0E0E0" >

<tr>
    <td>预约ID：</td>
    <td>
                      病人姓名
    </td>
    <td>
                      病人预约时间
    </td>
    <td>
                      病人病情描述
    </td>
     <td>
             操作
    </td>
  </tr>
  <s:iterator value="#appointments" status="st">
	  <tr>
	  <td>
                      ${id }
    </td>
	    <td >${patient.identity.name}</td>
	    <td>
                      ${begin}
    </td>
    <td>
                      ${description}
    </td>
    <td>
                      <s:if test="status=='agree'">
                    			  同意
                    <s:if test="is_fee == 1">
                    	<s:a action="process_treatUI?appointment.id=%{id}">就诊</s:a>
                    </s:if>
					 </s:if>
					  <s:if test="status=='rejected'">
					  	拒绝
					 </s:if>
					  <s:if test="status=='pending'">
					  	  <s:a action="process_edit?appointment.id=%{id}&appointment.status=agree">同意</s:a>
						<s:a action="process_edit?appointment.id=%{id}&appointment.status=rejected">拒绝</s:a>
					 </s:if>
    </td>
	  </tr>
  </s:iterator>
</table>
 </s:if>
 <s:if test="#session.user.role=='patient'">

<table width="649" border="1" align="center" cellpadding="3" cellspacing="0"  bordercolor="#E0E0E0" >

<tr>
    <td >预约ID：</td>
    <td>
                      医生姓名
    </td>
    <td>
                     预约时间
    </td>
    <td>
                      病情描述
    </td>
     <td>
             操作
    </td>
  </tr>
  <s:iterator value="#appointments" status="st">
	  <tr>
	  <td>
                      ${id }
    </td>
	    <td >${doctor.identity.name}</td>
	    <td>
                      ${begin}
    </td>
    <td>
                      ${description}
    </td>
    <td>
                      <s:if test="status=='agree'">
                    			  同意
                    <s:if test="is_fee == 0">
                    	<s:a action="process_pay?appointment.id=%{id}">缴费</s:a>
                    </s:if>
                    <s:if test="is_fee == 1">
                    	<s:a action="process_treatUI?appointment.id=%{id}">就诊</s:a>
                    </s:if>
					 </s:if>
					  <s:if test="status=='rejected'">
					  	拒绝
					 </s:if>
					  <s:if test="status=='cancel'">
					  	已取消
					 </s:if>
					  <s:if test="status=='pending'">
						<s:a action="process_edit?appointment.id=%{id}&appointment.status=cancel">取消</s:a>
					 </s:if>
    </td>
	  </tr>
  </s:iterator>
</table>
 </s:if>
</div>
<!--Content Left End-->

</div>
<div class="right-bg"></div>

</div>
</div>
<!--Content End-->


<%@ include file="/WEB-INF/web/common/foot.jsp"%>
