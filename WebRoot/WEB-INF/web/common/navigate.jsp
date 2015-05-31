<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<div class="menu-part">
<ul>
<li><a href='<s:url action="index" namespace="/"></s:url>'>首页</a> </li>
<li><a href='<s:url action="index" namespace="/"></s:url>'>服务</a></li>
<li><a href='<s:url action="doctor_list" namespace="/"></s:url>'>医生</a></li>
<li><a href='<s:url action="index" namespace="/"></s:url>'>病人</a></li>
<li><a href='<s:url action="health-information" namespace="/"></s:url>'>健康信息</a></li>
<li><a href='<s:url action="liuchengtu" namespace="/"></s:url>'>平台原理</a></li>


<s:if test="#session.user != null">
  <li >
    <a href="<s:url action="login_detial" namespace="/"></s:url>"><s:property value="#session.user.username"/></a>
      
  </li>
  <li>
  <a href="<s:url action="login_logout" namespace="/"></s:url>">退出</a>
  </li>
</s:if>
<s:else>
<li><a href='<s:url action="register_firstUI" namespace="/"></s:url>'>免费注册</a></li>
   <li >
    <a href="<s:url action="login_index" namespace="/"></s:url>">登录</a>
    </li>
</s:else>
<s:if test="#session.user.role == 'doctor' || #session.user.role == 'patient' ">
 <li >
    <a href="<s:url action="process_appointList" namespace="/"></s:url>">预约</a>
 </li>
 <li >
    <a href="<s:url action="record_list" namespace="/"></s:url>">病历</a>
 </li>
</s:if>

</ul>

</div>