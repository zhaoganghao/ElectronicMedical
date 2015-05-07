<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/admin/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pure-min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_head.css" />
<script language="JavaScript">
	function topage(page){
		var form = document.forms[0];
		form.page.value=page;
		form.submit();
	}
	function querySubmit(){
		var form = document.forms[0];
		form.query.value="true";
		form.submit();
	}
</script>
</head>
