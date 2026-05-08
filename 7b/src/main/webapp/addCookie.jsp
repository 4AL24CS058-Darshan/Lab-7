<%@ page import="javax.servlet.http.Cookie" %>
<%@ page language="java" %>

<%
    String name = request.getParameter("name");
    String domain = request.getParameter("domain");
    int maxAge = Integer.parseInt(request.getParameter("maxage"));

    Cookie cookieName = new Cookie("name", name);
    Cookie cookieDomain = new Cookie("domain", domain);

    cookieName.setMaxAge(maxAge);
    cookieDomain.setMaxAge(maxAge);

    response.addCookie(cookieName);
    response.addCookie(cookieDomain);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Cookie Added</title>
</head>
<body>

<h2>Cookie Created Successfully</h2>

<p><b>Name:</b> <%= name %></p>
<p><b>Domain:</b> <%= domain %></p>
<p><b>Max Age:</b> <%= maxAge %> seconds</p>

<br>

<a href="activeCookies.jsp">Go to Active Cookie List</a>

</body>
</html>