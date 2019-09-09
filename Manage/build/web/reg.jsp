<%-- 
    Document   : reg
    Created on : Sep 7, 2019, 11:03:24 AM
    Author     : Sushmitha
--%>
<%@page import="sss.action"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% String qry;
           int a=0;
           String name=request.getParameter("name");
           String block=request.getParameter("block");
           String door=request.getParameter("door");
           String mob=request.getParameter("mob");
           action s= new action();
           try{
           qry="insert into members(Name,Block_No,Door_No,Mob_Num) values('"+name+"','"+block+"','"+door+"','"+mob+"')";
           a=s.insert(qry);
  
           }
           catch(Exception e){
               out.println("error"+e); 
           }
        %>
        <script> alert("Registeration Success !"); </script>
         <script>window.location.href = "index.html";</script>

    </body>
</html>
