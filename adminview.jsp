<%-- 
    Document   : adminview
    Created on : Jan 15, 2023, 5:54:56 PM
    Author     : NaVindu69;
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
              body
    {
      background: url(img/finall.png);
     background-repeat: no-repeat;
    }
    topic 
    {
        background-color: lightcyan;
    }
    <style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #04AA6D;
  color: white;
  
 
}
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color:red;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
  
  .button a{
    text-decoration:none;
    
  }

</style>
            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
            <!--setting up to retrieve comments from database-->
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
    <body> 
    <center>
        <div id="topic" style="background-color: lightcyan">
        <h1>Ticket Reservation Report</h1>
        </div>
        <table style="background-color: lightpink">
  <tr>
    <th>Name</th>
    <th>NIC</th>
    <th>Email</th>
    <th>Movie </th>
     <th> Theator</th>
      <th>Date </th>
       <th> Time</th>
        <th>Full Tickets </th>
         <th>Half Tickets </th>
  </tr>
  <%
//String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "abc_cinema";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

                       <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from pay";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
  <tr>
    <td><%=resultSet.getString("name") %> </td>
    <td><%=resultSet.getString("id") %> </td>
    <td><%=resultSet.getString("email") %> </td>
    <td> <%=resultSet.getString("film") %> </td>
    <td><%=resultSet.getString("filmhall") %>  </td>
    <td><%=resultSet.getString("dt") %>  </td>
    <td><%=resultSet.getString("tm") %>  </td>
    <td><%=resultSet.getInt("ftck") %>  </td>
    <td><%=resultSet.getInt("htck")%></td>
  </tr>
                  
                <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
        </table>
        <br>
        <button type="button" class="button"><a href="index.jsp"> Home</a></button>
    </center>
    
    
    </body>
</html>
