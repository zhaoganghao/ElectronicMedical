<%@ include file="/WEB-INF/admin/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script language="JavaScript">
 function checkForm(){
	return true;
 }
</script>
<body>
	<div class="content" >
    <table  class="pure-table pure-table-bordered" align="center"style="width:100%;">
       <input type="hidden" name="medicalRecord.id" value="<s:property value="medicalRecord.id"/>"/>
        <tbody>
            <tr bgcolor="6f8ac4" >
                <td colspan="2">
                病历
                </td>
            </tr>
             <tr >
                <td>ID</td>
                <td><s:property value="medicalRecord.id"/></td>
            </tr>
            <tr >
                <td>病人</td>
                <td><s:property value="medicalRecord.patient.username"/></td>
            </tr>
            <tr >
                <td>医生</td>
                <td><s:property value="medicalRecord.doctor.username"/></td>
            </tr>
             <tr >
                <td>内容</td>
                <td><s:property value="medicalRecord.content"/>
                </td>
            </tr>
            <tr >
                <td>结果建议</td>
                <td><s:property value="medicalRecord.result"/>
                </td>
            </tr>
            <tr >
                <td>创建时间</td>
                <td>
                <s:date name="medicalRecord.ctime" format="yyyy-MM-dd" /> 
                </td>
        </tbody>
    </table>
	</div>
</body>
</html>
