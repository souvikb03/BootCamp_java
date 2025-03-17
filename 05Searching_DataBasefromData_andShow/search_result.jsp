<%-- 
    Document   : search_result.jsp
    Created on : Mar 11, 2025, 3:16:42 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String em=request.getParameter("txt_email");
            Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con= DriverManager.getConnection( "jdbc:mysql://localhost:3306/tmsl_data","root", "");
           
           String s="select id,name,email from registration where email=?";
           
           PreparedStatement ps=con.prepareStatement(s);
           ps.setString(1,em);
           ResultSet rs=ps.executeQuery();
            
           
           
            %>
        <h1>User Details</h1>
        <%@include file="Search.jsp" %>
        <table border="1">
            <tr>
                <th> ID </th>
                <th> Name </th>
                <th> Email </th>
            </tr>
            <%
if(rs.next()){
%>
<tr>
    <td><%= rs.getInt(1) %></td>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
    
</tr>
<% 
}
else{
    %>
    <tr>
        <td colspan="3">No Such Data!!</td>
    </tr>
    <% } %>
    
    
        </table>
    </body>
</html>
