<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/admin/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pure-min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admin_head.css" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/jquery/date_input.css"/ >
	<script
		src="${pageContext.request.contextPath}/js/jquery/jquery-1.3.1.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery/jquery.date_input.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery/jquery.date_input.js"></script>
<script language="JavaScript">
	function topage(page) {
		var form = document.forms[0];
		form.page.value = page;
		form.submit();
	}
	function querySubmit() {
		var form = document.forms[0];
		form.query.value = "true";
		form.submit();
	}

	//改英文为中文
	jQuery.extend(DateInput.DEFAULT_OPTS, {
		month_names : [ "一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月",
				"十月", "十一月", "十二月" ],
		short_month_names : [ "一", "二", "三", "四", "五", "六", "七", "八", "九", "十",
				"十一", "十二" ],
		short_day_names : [ "一", "二", "三", "四", "五", "六", "日" ]
	});

	//改变输出格式
	$.extend(DateInput.DEFAULT_OPTS, {
		stringToDate : function(string) {
			var matches;
			if (matches = string.match(/^(\d{4,4})-(\d{2,2})-(\d{2,2})$/)) {
				return new Date(matches[1], matches[2] - 1, matches[3]);
			} else {
				return null;
			}
			;
		},
		dateToString : function(date) {
			var month = (date.getMonth() + 1).toString();
			var dom = date.getDate().toString();
			if (month.length == 1)
				month = "0" + month;
			if (dom.length == 1)
				dom = "0" + dom;
			return date.getFullYear() + "-" + month + "-" + dom;
		}
	});

	//在页面调用方法   
	//$(".biuuu").date_input();

	           $(function(){
	               $(".biuuu").date_input();
	           });
</script>
</head>