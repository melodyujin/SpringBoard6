<%@page import="org.sp.springapp.domain.Admin"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
	Admin admin = (Admin)session.getAttribute("admin");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><%=admin.getName() %>님 로그인 중</h3>
	<ul>
		<li><a href="/admin/gallery/list">갤러리게시판관리</a></li>
		<li>회원관리</li>
		<li>숙박관리</li>
		<li>Q&A관리</li>
	</ul>
</body>
</html>