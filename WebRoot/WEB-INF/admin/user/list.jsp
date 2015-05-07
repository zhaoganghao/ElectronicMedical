<%@ include file="/WEB-INF/admin/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<body>
	<div class="content" >
		<table class="pure-table pure-table-bordered" align="center"style="width:100%;">
			<tr>
				<td colspan="4">
					<s:form action="/control/user_list.action" method="post" onsubmit="return querySubmit();">
						<s:hidden name="query" />
						<s:hidden name="page" />
						<span>用户名</span>
						<s:textfield type="text" name="username" />
						<span>手机号</span>
						<s:textfield type="text" name="phone" />
						<a href="javascript:querySubmit()" >查询</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:a class="pure-button pure-button-primary" action="user_addUI">添加</s:a>
					</s:form>
				</td>
			</tr>
			<tr style="background:rgb(38, 108, 193)" >
				<td class="category" >用户名</td>
				<td class="category">Email</td>
				<td class="category">手机号</td>
				<td class="category">操作</td>
			</tr>
			<s:iterator value="#pageView.records" status="st">
				<tr>
					<td>${username}</td>
					<td>${email}</td>
					<td>${phone}</td>
					<td>
						<s:a action="user_delete?id=%{id}" onclick="return window.confirm('确定删除吗')">删除</s:a>
						<s:a action="user_editUI?id=%{id}">修改</s:a>
					</td>
				</tr>
			</s:iterator>
			<tr>
				<td colspan="5" bgcolor="6f8ac4" align="right">
					<%@ include file="/WEB-INF/admin/common/fenye.jsp"%>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
