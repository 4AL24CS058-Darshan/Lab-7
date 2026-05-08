<%@ page language="java" %>
<%
    String name = request.getParameter("username");

    session.setMaxInactiveInterval(60); // 1 minute session expiry

    session.setAttribute("user", name);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>

<%
    String user = (String) session.getAttribute("user");

    if (user != null) {
%>

<h2>Hello <%= user %>!</h2>
<p>Your session will expire in 1 minute.</p>

<%
    } else {
%>

<h2>Session Expired</h2>
<p>Please login again.</p>
<a href="index.jsp">Go Back</a>

<%
    }
%>

</body>
</html>