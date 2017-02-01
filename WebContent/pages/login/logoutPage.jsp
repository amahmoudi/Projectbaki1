<%@page session="true"%>
<%
	session.removeAttribute("loggerAdmin");
	session.invalidate();
	response.sendRedirect("index.jsp");
%>