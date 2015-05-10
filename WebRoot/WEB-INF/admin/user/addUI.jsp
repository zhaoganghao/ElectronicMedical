<%@ include file="/WEB-INF/admin/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<body>
	<s:form action="/control/user_add.action" method="post" >
	<table width="98%" border="0" cellspacing="1" cellpadding="3" align="center">
    <tr bgcolor="6f8ac4"> 
      <td colspan="2" ><font color="#FFFFFF">添加用户：</font></td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td width="25%"> <div align="right">用户名  ：</div></td>
      <td width="75%"><s:textfield type="text" name="user.username" class="InputStyle"/>*</font>
							</td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td width="25%"> <div align="right">密码  ：</div></td>
      <td width="75%"><s:password type="text" name="user.password" class="InputStyle"/>*</font>
							</td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td width="25%"> <div align="right">email：</div></td>
      <td width="75%"><s:textfield type="text" name="user.email" class="InputStyle"/>
							</td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td width="25%"> <div align="right">电话：</div></td>
      <td width="75%"><s:textfield type="text" name="user.phone" class="InputStyle"/>
							</td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td width="25%"> <div align="right">角色：</div></td>
      <td width="75%">
      
		 <select name="user.role" >
		    <option value="newuser" >newuser</option>
		    <option value="pending" >pending</option>
		    <option value="rejected" >rejected</option>
		    <option value="doctor"  >doctor</option>
		    <option value="patient" >patient</option>
		    <option value="admin"  >admin</option>
		</select>
							</td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td colspan="2"> <div align="center"> 
          <input type="submit" name="Add" value=" 确 认 " class="frm_btn" onClick="javascript:SureSubmit(this.form)">
          &nbsp;&nbsp;<input type="button" name="Button" value=" 返 回 " class="frm_btn" onclick="javascript:history.back()">
        </div></td>
    </tr>
  </table>
	</s:form>
</body>
</html>
