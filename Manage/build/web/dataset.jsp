<%-- 
    Document   : dataset
    Created on : Sep 6, 2019, 11:01:32 AM
    Author     : Sushmitha
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="sss.action"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <th>user</th>
            <th>password</th>
            <%
                ResultSet rs=null;
                String name,pass;
                String qry="select * users";
                action a=new action();
                try{
                    rs=a.act(qry);
                }
                catch(Exception e){
                    out.println("error :"+e.getMessage());
                }
                while(rs.next()){
                    name=rs.getString("user");
                    pass=rs.getString("pass");
            %>
            <td><%= name  %> </td>
            <td><%= pass %> </td>
            <% } %>
        
            
        </table>
    </body>
</html>
