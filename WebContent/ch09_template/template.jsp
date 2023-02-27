<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%--template.jsp 동적배치 --%>

<%
	String pageFile = request.getParameter("page");

	if (pageFile == null) {
		pageFile = "newItem";
	}
%>

<body>
	<table width="90%" height="99%" align="center" border="1">
		<%--상단 메뉴 --%>
		<tr>
			<td height="43" colspan="3" align="right"><jsp:include
					page="top.jsp" /></td>
		</tr>

		<tr>
			<%--좌측메뉴 --%>
			<td width="15%" align="right" valign="top"><br> <jsp:include
					page="left.jsp" /></td>

			<%--중앙배치,본문내용 --%>
			<td colspan="2" align="center"><jsp:include
			page='<%=pageFile + ".jsp"%>' /></td>
		</tr>

		<%--footer bottom.jsp --%>
		<tr>
			<td colspan="3" height="40" align="center"><jsp:include
					page="bottom.jsp" /></td>
		</tr>


	</table>
</body>
</html>