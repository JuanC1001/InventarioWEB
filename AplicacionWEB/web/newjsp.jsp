<%-- 
    Document   : newjsp
    Created on : 06-feb-2019, 17:32:52
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<%
out.print(session.getAttribute("value"));

%>