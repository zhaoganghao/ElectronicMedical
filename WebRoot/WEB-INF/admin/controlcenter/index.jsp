<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/admin/common/taglib.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Frameset//EN">
<HTML>
<HEAD>
<TITLE>在线医疗管理系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META http-equiv=Pragma content=no-cache>
<META http-equiv=Cache-Control content=no-cache>
<META http-equiv=Expires content=-1000>
<LINK href="${pageContext.request.contextPath}/css/admin.css" type="text/css" rel="stylesheet">
</HEAD>
<FRAMESET border=0 frameSpacing=0 rows="60, *" frameBorder=0 >
<FRAME name=head src="<s:url action="client_head" namespace="/control"></s:url>" frameBorder=0 noResize scrolling=no>
<FRAMESET cols="170, *">
<FRAME name=menu src="<s:url action="client_menu" namespace="/control"></s:url>" frameBorder=0 noResize>
<FRAME name=main scrolling="yes"  src="<s:url action="client_main" namespace="/control"></s:url>" frameBorder=0 noResize scrolling=yes>
</FRAMESET>
</FRAMESET>
<noframes>
</noframes>
</HTML>
