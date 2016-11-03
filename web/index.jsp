<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.User" %><%--
  Created by IntelliJ IDEA.
  User: league
  Date: 11/2/16
  Time: 5:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link type="text/css" rel="stylesheet" href="/stylesheets/main.css"/>
    <title><%=Title%><%!
      private String Title = "hello";
    %></title>
  </head>
  <body>
  <%

    String guestbookName = request.getParameter("guestbookName");
    if (guestbookName == null) {
      guestbookName = "default";
    }
    pageContext.setAttribute("guestbookName", guestbookName);
    UserService userService = UserServiceFactory.getUserService();
    User name = userService.getCurrentUser();
    if(name != null){
      pageContext.setAttribute("user", name);

  %>

  <p>Hello, ${fn:escapeXml(user.nickname)}! (You can
    <a href="<%= userService.createLogoutURL(request.getRequestURI()) %>">sign out</a>.)</p>

  <%
    } else {
  %>

  <p>Hello!
    <a href="<%= userService.createLoginURL(request.getRequestURI()) %>">Sign in</a>
    to include your name with greetings you post.</p>

  <%
    }
  %>

  </body>
</html>