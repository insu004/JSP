<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");%>
<h3>요청 파라미터 출력</h3>
<h4 style="color:red">request.getParameter() 메서드 사용</h4>
name 파라미터 = <%=request.getParameter("name") %>,
addr 파라미터 = <%=request.getParameter("addr") %>

<h4 style="color:red">request.getParameterValues() 메서드 사용</h4>
<%
	String[] values = request.getParameterValues("pet");
	if(values != null){
		for(int i =0; i < values.length; i++){
			out.println(values);
		}
	}
%>

</body>
</html>