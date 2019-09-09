<%@page import="sss.action"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Responsive Table + Detail View</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="table/css/style.css">

  
</head>

<body>
    <% String qry;
           ResultSet re;
           int rows=0;
           String Name=request.getParameter("username");
           String pass=request.getParameter("pass"); 
           action s= new action();
           try{
           qry="select* from users where user='"+Name+"' and pass='"+pass+"'";
           re=s.act(qry);
            re.last();
 rows = re.getRow();
re.beforeFirst();
           }
           catch(Exception e){
               out.println("error"+e); 
           }
           if(rows==0){
        %>
        <script> alert("Please Check The User Name Or Password")</script>
        <script>window.location.href = "index.html";</script>
        <% }
else {%>
    <%
        String qr;
        ResultSet rs;
        qr="select * from members";
        action a=new action();
        rs=a.act(qr);
    %>
  <h1>
  Apartment Members
</h1>
<p>
  (SMS Services)
</p>
<main>
  <table>
    <thead>
      <tr>
          <th>
        
        </th>
        
        <th>
          Name
        </th>
        <th>
          Block No
        </th>
        <th>
          Door No
        </th>
        <th>
          Mobile No
        </th>
        <th></th>
      </tr>
    </thead>
    <tfoot>
      <tr>
        <th colspan='3'>
          Year: 2014
        </th>
      </tr>
    </tfoot>
    <tbody>
    <form action="sms.jsp" method="post">
        <%
            while(rs.next()){
                String name=rs.getString("Name");
                String block=rs.getString("Block_No");
                String door=rs.getString("Door_No");
                String mob=rs.getString("Mob_Num");
        %>
      <tr>
        <td data-title='Check'>
            <input type="checkbox" name="check[]" value="<%= name %>" >
        </td>
        
          <td data-title='Provider Name'>
          <%= name %>
        </td>
        <td data-title='E-mail'>
          <%= block %>
        </td>
        <td data-title='E-mail'>
          <%= door %>
        </td>
        <td data-title='E-mail'>
          <%= mob %>
        </td>
        <td class='select'>
          <a class='button' href='#'>
            Send
          </a>
        </td>
      </tr>
      <% } %>
    </form>
      </tbody>
  </table>
  <div class='detail'>
    <div class='detail-container'>
      <dl>
        <dt>
          Provider Name
        </dt>
        <dd>
          John Doe
        </dd>
        <dt>
          E-mail
        </dt>
        <dd>
          email@example.com
        </dd>
        <dt>
          City
        </dt>
        <dd>
          Detroit
        </dd>
        <dt>
          Phone-Number
        </dt>
        <dd>
          555-555-5555
        </dd>
        <dt>
          Last Update
        </dt>
        <dd>
          Jun 20 2014
        </dd>
        <dt>
          Notes
        </dt>
        <dd>
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.
        </dd>
      </dl>
    </div>
    <div class='detail-nav'>
      <button class='close'>
        Close
      </button>
    </div>
  </div>
</main>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="table/js/index.js"></script>
<% } %>
</body>
</html>
