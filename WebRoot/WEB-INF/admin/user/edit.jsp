<%@ include file="/WEB-INF/admin/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<body>
	<div class="content" >
	<s:debug></s:debug>
	<s:form action="/control/user_edit.action" method="post" >
    <table  class="pure-table pure-table-bordered" align="center"style="width:100%;">
        <tbody>
            <tr bgcolor="6f8ac4" >
                <td colspan="2">用户信息</td>
            </tr>
            <tr >
                <td width="10%" >用户ID</td>
                <td> <input type="hidden" name="id" value="${id}" />${user.id} </td>
            </tr>
             <tr >
                <td>用户名</td>
                <td><s:textfield type="text" name="username" /></td>
            </tr>
            <tr >
                <td>email</td>
                <td><s:textfield type="text" name="email"/></td>
            </tr>
            <tr >
                <td>手机号</td>
                <td><s:textfield type="text" name="phone" /></td>
            </tr>
             <tr >
                <td>角色</td>
                <td>
                	<s:select list="roles" listKey="index"  name="role" listValue="name"></s:select>
                </td>
            </tr>
            <tr >
                <td>注册时间</td>
                <td><s:textfield type="text" name="ctime" readonly="true" /></td>
            </tr>
        </tbody>
    </table>
    <table  class="pure-table pure-table-bordered" align="center"style="width:100%;">
        <tbody>
            <tr  bgcolor="6f8ac4">
                <td colspan="2">用户身份信息</td>
            </tr>
            <tr >
                <td width="10%" >真实姓名</td>
                <td><s:textfield type="text" name="identity.name" /></td>
            </tr>
            <tr >
                <td>地址</td>
                <td><s:textfield type="text" name="identity.address" /></td>
            </tr>
            <tr >
                <td>性别</td>
                <td>
                <s:select list="genders" listKey="index"  name="identity.gender" listValue="name"></s:select>
                </td>
            </tr>
             <tr >
                <td>身份证</td>
                <td><s:textfield type="text" name="identity.ic_image" /></td>
            </tr>
             <tr >
                <td>身份证号码</td>
                <td><s:textfield type="text" name="identity.NRIC_FIN" /></td>
            </tr>
            <tr >
                <td>医生资格证书</td>
                <td><s:textfield type="text" name="identity.docter_licence_image" /></td>
            </tr>
             <tr >
                <td>资格证书时间</td>
                <td><s:textfield type="text" name="identity.license_pass_date" /></td>
            </tr>
             <tr>
                <td>医生资格过期时间</td>
                <td ><s:textfield type="text" name="identity.license_expired_date" /></td>
            </tr>
            <tr>
            	<td colspan="2"><input type="submit" class="button" value="保存" /></td>
        	</tr>
        </tbody>
    </table>
</s:form> 
	</div>
</body>
</html>
