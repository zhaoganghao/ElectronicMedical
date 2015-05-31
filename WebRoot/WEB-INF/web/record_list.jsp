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


<div class="specialty-doctors-part">

<h1>
<s:if test="#session.user.role == 'doctor' ">
医生看过的病人病历
</s:if>
<s:if test="#session.user.role == 'patient' ">
病人病历
</s:if>
</s>
</h1>

<div class="specialty-doctors-inner">



    <table width="649" border="1" align="center" cellpadding="3" cellspacing="0"  bordercolor="#E0E0E0" >
    <tr>
    <s:if test="#session.user.role == 'patient' ">
	    <td >
	    	医生
	    </td>
	</s:if>    
	    <td >
	    	病历内容
	    </td>
	     <td >
	    	结果
	    </td>
	    <td >
	    	时间
	    </td>
	    <s:if test="#session.user.role == 'patient' ">
		    <td >
		    	评价
		    </td>
	</s:if>   
    </tr>
    <s:iterator value="#records" status="st">
    <tr>
     <s:if test="#session.user.role == 'patient' ">
	    <td >${appointment.doctor.identity.name}
	    </td>
	 </s:if>  
	    <td>
	    	${content}
	    </td>
	    <td>
	    	${result }
	    </td>
	     <td >
	    	${ctime }
	    </td>
	    <s:if test="#session.user.role == 'patient' ">
	    <td >
	    	 <a href="<s:url action="reviews_addUI" namespace="/"></s:url>?doctorId=${appointment.doctor.id}">评价</a>
	    </td>
	 </s:if> 
    </tr>
    </s:iterator>
    </table>

</div>
</div>


</div>
<!--Content Left End-->

<!--Sidebar start-->
<div class="sidebar">
<div class="sidebar-inner">

<!--Our Facilities start-->
<div class="facilities">
<h1>我们的服务</h1>
<div class="facilities-list">
<ul>
<li><a href="#">预约挂号</a></li>
<li><a href="#">咨询诊断</a></li>
<li><a href="#">病历</a></li>
</ul>
</div>
<h2><img src="images/side-divater.png" width="248" height="2" alt="" /></h2>
</div>
<!--Our Facilities End-->



<!--24/7 Service part start-->
<div class="service-sidebar">
<h1>24/7 服务</h1>
<p>随时服务<br />
<span>电话: <br />
xxx-xxx-xxxx</span>
</p>
<h2><img src="images/web/side-divater.png" width="248" height="2" alt="" /></h2>
</div>
<!--24/7 Service part End-->

<!--Download part start-->
<div class="download">
<h1><a href="#"></a></h1>
</div>
<!--Download part End-->


<!--Newsletter part start-->
<div class="news-letter">
<h1>注册<br /><span>了解更多内容</span></h1>
<div class="sign-up">
<div class="sign-up-bg"></div>
<div class="sign-up-buttion"></div>
</div>
</div>
<!--Newsletter part End-->

</div>
</div>
<!--Sidebar End-->


</div>
<div class="right-bg"></div>


</div>
</div>
<!--Content End-->


<%@ include file="/WEB-INF/web/common/foot.jsp"%>
