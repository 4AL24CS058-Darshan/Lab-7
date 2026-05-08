<%@ page import="javax.servlet.http.Cookie" %>
<%@ page language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Active Cookies</title>
</head>
<body>

<h2>Active Cookie List</h2>

<%
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
        for (Cookie c : cookies) {
%>

<p>
    <b><%= c.getName() %></b> = <%= c.getValue() %>
</p>

<%
        }
    } else {
%>

<p>No Active Cookies Found</p>

<%
    }
%>

<br>

<a href="index.jsp">Back</a>

</body>
</html>