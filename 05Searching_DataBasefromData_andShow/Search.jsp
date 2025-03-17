<%-- 
    Document   : Search
    Created on : Mar 11, 2025, 2:50:51 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Searching Page</title>
    </head>
    <body>
        
       
        <h1>Search Example</h1>
        <form action="search_result.jsp">
            Enter Email:<input type="email" name="txt_email">
            <input type="submit" value="search now">
            
        </form>
    </body>
</html>
