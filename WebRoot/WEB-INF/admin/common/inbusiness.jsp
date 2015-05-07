<%@ include file="/WEB-INF/admin/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
  
  <body>
  	<div class="pure-menu pure-menu-open">
		<ul style="font-size: 16px;">
			<li class="pure-menu-heading"><a href="<html:rewrite action='/control/inbusiness'/>"><b>业务范畴内：</b></a></li>
			<li class="pure-menu-separator"></li>
			<li><a href="<html:rewrite action='/control/register/manage'/>?method=addUI">检举控告类</a></li>
			<li><a href="<html:rewrite action='/control/appeal/manage'/>?method=addUI">申诉</a></li>
			<li><a href="<html:rewrite action='/control/criticize/manage'/>?method=addUI">批评与建议</a></li>
		</ul>
	</div>
  </body>
</html>
