<%-- 
    Document   : mess.jsp
    Created on : Sep 9, 2019, 12:00:04 PM
    Author     : Sushmitha
--%>

<%@page import="sss.sendSMS"%>
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
        <%
            String num;
            int rows=0;
            String mess=request.getParameter("message");
            String qry="select Mob_Num from members";
            action a=new action();
            sendSMS s=new sendSMS();
            ResultSet rs = a.act(qry);
            while(rs.next()){
                rs.last();
rows = rs.getRow();
rs.beforeFirst();
                num=rs.getString("Mob_Num");
                s.sendSms(mess,num);
                
        %>
        
        <% } %>
        <script>alert("The Message Has been send to <%= rows %> Residents")</script>
    </body>
</html>
