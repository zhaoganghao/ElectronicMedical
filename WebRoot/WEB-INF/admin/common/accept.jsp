<%@ include file="/WEB-INF/admin/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<body>
	<div class="pure-menu pure-menu-open">
		<ul style="font-size: 16px;">
			<li class="pure-menu-heading"><b>请选择受理范围</b></li>
			<li class="pure-menu-separator"></li>
			<li><a href="<html:rewrite action='/control/inbusiness'/>">业务范围内</a></li>
			<li><a href="<html:rewrite action='/control/other/manage'/>?method=addUI">业务范围外</a></li>
			<li><a href="<html:rewrite action='/control/nocontent/manage'/>?method=addUI">无实质内容的信访举报</a></li>
		</ul>
	</div>
</body>
</html>
