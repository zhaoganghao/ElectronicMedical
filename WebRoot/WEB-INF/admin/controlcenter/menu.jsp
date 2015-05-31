<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/admin/common/taglib.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="${pageContext.request.contextPath}/css/admin.css"
	type="text/css" rel="stylesheet">
<SCRIPT language=javascript>
	function expand(el) {
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none') {
			childObj.style.display = 'block';
		} else {
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
</HEAD>
<BODY>
	<TABLE height="100%" cellSpacing=0 cellPadding=0 width=170
		background="${pageContext.request.contextPath}/images/menu_bg.jpg"
		border=0>
		<TR>
			<TD vAlign=top align=middle>
				<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>

					<TR>
						<TD height=10></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px"
							background="${pageContext.request.contextPath}/images/menu_bt.jpg"><A href="<s:url action="admin" namespace="/control"></s:url>" target="main">首页</A>
						</TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				
				
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px"
							background="${pageContext.request.contextPath}/images/menu_bt.jpg">
							<A class=menuParent
							href='<s:url action="user_list" namespace="/control"></s:url>'
							target="main">医生管理</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px"
							background="${pageContext.request.contextPath}/images/menu_bt.jpg">
							<A class=menuParent
							href='<s:url action="user_list" namespace="/control"></s:url>'
							target="main">病人管理</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px"
							background="${pageContext.request.contextPath}/images/menu_bt.jpg">
							<A class=menuParent
							href='<s:url action="user_list" namespace="/control"></s:url>?check=true'
							target="main">审核认证</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px"
							background="${pageContext.request.contextPath}/images/menu_bt.jpg">
							<A class=menuParent
							href='<s:url action="category_list" namespace="/control"></s:url>'
							target="main">科室</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px"
							background="${pageContext.request.contextPath}/images/menu_bt.jpg">
							<A class=menuParent
							href='<s:url action="medicine_list" namespace="/control"></s:url>'
							target="main">药品</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px"
							background="${pageContext.request.contextPath}/images/menu_bt.jpg">
							<A class=menuParent
							href='<s:url action="medicalRecord_list" namespace="/control"></s:url>'
							target="main">病历</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px"
							background="${pageContext.request.contextPath}/images/menu_bt.jpg">
							<A class=menuParent
							href='<s:url action="medicalRecord_list" namespace="/control"></s:url>'
							target="main">权限管理</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px"
							background="${pageContext.request.contextPath}/images/menu_bt.jpg">
							<A class=menuParent
							href='<s:url action="medicalRecord_list" namespace="/control"></s:url>'
							target="main">宣传模块</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px"
							background="${pageContext.request.contextPath}/images/menu_bt.jpg">
							<A class=menuParent
							href='<s:url action="medicalRecord_list" namespace="/control"></s:url>'
							target="main">系统设置</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				</TD>
			<TD width=1 bgColor=#d1e6f7></TD>
		</TR>
	</TABLE>
</BODY>
</HTML>
