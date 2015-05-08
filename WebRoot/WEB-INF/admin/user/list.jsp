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
						<s:textfield type="text" name="user.username" />
						<span>手机号</span>
						<s:textfield type="text" name="user.phone" />
						<span>角色</span>
						<select name="user.role" id="user_edit_user_role">
						 <s:if test="check=='true'">
						  <option value="pending" >pending</option>
						 </s:if>
						 <s:else>
						    <option value="" >无</option>
						    <option value="newuser" >newuser</option>
						    <option value="pending" >pending</option>
						    <option value="rejected" >rejected</option>
						    <option value="docter" >docter</option>
						    <option value="patient" >patient</option>
						    <option value="admin" >admin</option>
						</s:else>
						    
					</select>
						<a href="javascript:querySubmit()" >查询</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:a class="pure-button pure-button-primary" action="user_addUI">添加</s:a>
					</s:form>
				</td>
			</tr>
			<tr style="background:rgb(38, 108, 193)" >
				<td class="category" >用户名</td>
				<td class="category">Email</td>
				<td class="category">手机号</td>
				<td class="category">角色</td>
				<td class="category">操作</td>
			</tr>
			<s:iterator value="#pageView.records" status="st">
				<tr>
					<td>${username}</td>
					<td>${email}</td>
					<td>${phone}</td>
				  <td>${role}</td>
					<td>
					 <s:if test="check=='true'">
						<s:a action="user_editUI?user.id=%{id}&check=true">认证</s:a>
					 </s:if>
					 <s:else>
					   <s:a action="user_delete?user.id=%{id}" onclick="return window.confirm('确定删除吗')">删除</s:a>
						<s:a action="user_editUI?user.id=%{id}">修改</s:a>
					 </s:else>
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
