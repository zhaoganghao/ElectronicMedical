<%@ include file="/WEB-INF/admin/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script language="JavaScript">
 function checkForm(){
	return true;
 }
</script>
<body>
	<div class="content" >
	<form id="formone" action="${pageContext.request.contextPath}/control/medicine_edit.action"  method="post"  onsubmit="return checkForm();">
    
    <table  class="pure-table pure-table-bordered" align="center"style="width:100%;">
       <input type="hidden" name="medicine.id" value="<s:property value="medicine.id"/>"/>
        <tbody>
            <tr bgcolor="6f8ac4" >
                <td colspan="2">
                更新药品
                </td>
            </tr>
             <tr >
                <td>名称</td>
                <td><s:textfield type="text" name="medicine.name" /></td>
            </tr>
            <tr >
                <td>描述</td>
                <td><s:textfield type="text" name="medicine.description"/></td>
            </tr>
            <tr >
                <td>价格</td>
                <td><s:textfield type="text" name="medicine.price" /></td>
            </tr>
             <tr >
                <td>使用方法</td>
                <td>
					<s:textfield type="text" name="medicine.use_method" />
                </td>
            </tr>
            <tr >
                <td>创建时间</td>
                <td>
                <s:date name="medicine.ctime" format="yyyy-MM-dd" /> 
                </td>
            </tr>
               <tr>
            	<td colspan="2"><input type="submit" class="button" value="保存" /></td>
        	</tr>
            
        </tbody>
    </table>
</form> 
	</div>
</body>
</html>
