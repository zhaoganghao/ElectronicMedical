<%@ include file="/WEB-INF/admin/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<body>
	<s:form action="/control/category_add.action" method="post" >
	<input type="hidden" name="category.parent.id" value="<s:property value="pid"/>"/>
	<table width="98%" border="0" cellspacing="1" cellpadding="3" align="center">
    <tr bgcolor="6f8ac4"> 
      <td colspan="2" ><font color="#FFFFFF">添加科室：</font></td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td width="25%"> <div align="right">科室名  ：</div></td>
      <td width="75%"><s:textfield type="text" name="category.name" class="InputStyle"/>*</font>
							</td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td width="25%"> <div align="right">描述：</div></td>
      <td width="75%"><s:textfield type="text" name="category.description" class="InputStyle"/>
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
