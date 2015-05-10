<%@ include file="/WEB-INF/admin/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<body>
	<div class="content" >
		<table class="pure-table pure-table-bordered" align="center"style="width:100%;">
			<tr>
				<td colspan="4">
					<s:form action="/control/medicine_list.action" method="post" onsubmit="return querySubmit();">
						<s:hidden name="query" />
						<s:hidden name="page" />
						<span>药品名称</span>
						<s:textfield type="text" name="medicine.name" />
						<a href="javascript:querySubmit()" >查询</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:a class="pure-button pure-button-primary" action="medicine_addUI">添加</s:a>
					</s:form>
				</td>
			</tr>
			<tr style="background:rgb(38, 108, 193)" >
				<td class="category" >ID</td>
				<td class="category">药品名称</td>
				<td class="category">描述</td>
				<td class="category">价格</td>
				<td class="category">使用方法</td>
				<td class="category">操作</td>
			</tr>
			<s:iterator value="#pageView.records" status="st">
				<tr>
					<td>${id}</td>
					<td>${name}</td>
					<td>${description}</td>
					<td>${price}</td>
					<td>${use_method}</td>
					<td>
						<s:a action="medicine_delete?medicine.id=%{id}" onclick="return window.confirm('确定删除吗')">删除</s:a>
						<s:a action="medicine_editUI?medicine.id=%{id}">修改</s:a>
					</td>
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
