<%@ include file="/WEB-INF/admin/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script language="JavaScript">
 function checkForm(){
		if($("#license_expired_date").val().trim()==""){
			$("#license_expired_date").val("");
		}
		
		if($("#license_pass_date").val().trim()==""){
			$("#license_pass_date").val("");
		}
	return true;
 }
</script>
<body>
	<div class="content" >
	<form id="formone" action="${pageContext.request.contextPath}/control/user_edit.action"  method="post"  onsubmit="return checkForm();">
    <table  class="pure-table pure-table-bordered" align="center"style="width:100%;">
        <tbody>
            <tr bgcolor="6f8ac4" >
                <td colspan="2">
                <s:if test="user.role=='newuser'">
                	新用户需要认证
                </s:if>
                <s:else>
                                            用户已经认证
                </s:else>
                </td>
            </tr>
            <tr >
                <td width="10%" >用户ID</td>
                <td> <input type="hidden" name="user.id" value="<s:property value="user.id"/>" /><s:property value="user.id"/>  </td>
            </tr>
             <tr >
                <td>用户名</td>
                <td><s:textfield type="text" name="user.username" /></td>
            </tr>
            <tr >
                <td>email</td>
                <td><s:textfield type="text" name="user.email"/></td>
            </tr>
            <tr >
                <td>手机号</td>
                <td><s:textfield type="text" name="user.phone" /></td>
            </tr>
             <tr >
                <td>角色</td>
                <td>
					<s:property value="user.role"/>
                </td>
            </tr>
            <tr >
                <td>注册时间</td>
                <td>
                <s:date name="user.ctime" format="yyyy-MM-dd" /> 
                </td>
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
                <td>
                 <input type="hidden" name="identity.id" value="<s:property value="user.identity.id"/>" />
                <input type="text" name="identity.name" value="<s:property value="user.identity.name"/>" />
                </td>
            </tr>
            <tr >
                <td>地址</td>
                <td>
					<input type="text" name="identity.address" value="<s:property value="user.identity.address"/>" />
				</td>
            </tr>
            <tr >
                <td>性别</td>
                <td>
                <select name="identity.gender" id="user_edit_user_role">
					    <option value="MAN"  <s:if test='user.identity.gender == "MAN"' >selected="selected"</s:if> >MAN</option>
					    <option value="WOMAN" <s:if test='user.identity.gender == "WOMAN"' >selected="selected"</s:if> >WOMAN</option>
				</select>
                </td>
            </tr>
             <tr >
                <td>身份证</td>
                <td><input type="text" name="identity.ic_image" value="<s:property value="user.identity.ic_image"/>" /></td>
            </tr>
             <tr >
                <td>身份证号码</td>
                <td><input type="text" name="identity.NRIC_FIN" value="<s:property value="user.identity.NRIC_FIN"/>" /></td>
            </tr>
            <tr >
                <td>医生资格证书</td>
                <td><input type="text" name="identity.doctor_licence_image" value="<s:property value="user.identity.doctor_licence_image" />" /></td>
            </tr>
             <tr >
                <td>资格证书时间</td>
                <td><input type="text" id="license_pass_date" class="biuuu"  name="identity.license_pass_date" value="<s:date name="user.identity.license_pass_date" format="yyyy-MM-dd"/> " /></td>
            </tr>
             <tr>
                <td>医生资格过期时间</td>
                <td ><input type="text" id="license_expired_date"  class="biuuu"  name="identity.license_expired_date" value="<s:date name="user.identity.license_expired_date" format="yyyy-MM-dd" /> " /></td>
            </tr>
             <s:if test="user.role=='pending'">
			<tr>
                <td>认证</td>
                <td >
	                                        同意<input type="radio" name="user.role" value="doctor" />
	               	拒绝<input type="radio" name="user.role" value="rejected" />
                </td>
            </tr>	
			 </s:if>
			<tr>
                <td>认证备注</td>
                <td >
	               <textarea name="user.check_remark" rows="3" cols="20">
	               <s:property value="user.check_remark"/>
					</textarea>拒绝理由，同意理由
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
