<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String idP = request.getParameter("id");
		String pw = request.getParameter("pw");
		session.setAttribute("id", idP);
		
		String forwardPage = null;
		
		String id = (String)session.getAttribute("id");
		
		if(id.equals("smart") && pw.equals("123")){
			forwardPage="Ex04LoginSuccess.jsp";
			
		}
		else{
			response.sendRedirect("Ex04LoginFail.jsp");
		}
		request.setAttribute("id", id);
	%>
	
	<jsp:forward page="<%=forwardPage %>">
		<jsp:param value="<%=id %>" name="user"/>
	</jsp:forward>
</body>
</html>