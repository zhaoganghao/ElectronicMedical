<%@ include file="/WEB-INF/admin/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<body>
	<div class="content" >
		<table class="pure-table pure-table-bordered" align="center"style="width:100%;">
			<tr>
				<td colspan="4">
					<s:form action="/control/medicalRecord_list.action" method="post" onsubmit="return querySubmit();">
						<s:hidden name="query" />
						<s:hidden name="page" />
						<span>药品名称</span>
						<s:textfield type="text" name="medicalRecord.name" />
						<a href="javascript:querySubmit()" >查询</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</s:form>
				</td>
			</tr>
			<tr style="background:rgb(38, 108, 193)" >
				<td class="category" >ID</td>
				<td class="category">病人</td>
				<td class="category">医生</td>
				<td class="category">结果</td>
				<td class="category">时间</td>
			</tr>
			<s:iterator value="#pageView.records" status="st">
				<tr>
					<td>
					<s:a action="medicalRecord_editUI?medicalRecord.id=%{id}"> ${id}</s:a>
					</td>
					<td>${appointment.patient.username}</td>
					<td>${appointment.patient.username}</td>
					<td>${result}</td>
					<td>${ctime}</td>
				</tr>
			</s:iterator>
			<tr>
				<td colspan="6" bgcolor="6f8ac4" align="right">
					<%@ include file="/WEB-INF/admin/common/fenye.jsp"%>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
