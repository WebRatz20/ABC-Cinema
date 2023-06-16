<%-- 
    Document   : recipt
    Created on : Jan 11, 2023, 4:55:25 PM
    Author     : hash
--%>

<%@page import="srvltpkg.Config_Booking"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbcon.values"%>
<%@page import="java.sql.Connection"%>
<%@page import ="newpackage.paynow"%>

%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Receiept</title>
          <style>
            *{
                margin: 0%;
                padding: 0%;
                box-sizing: border-box;
            }
            body{
                background-color: #1E1717;
                max-width: 100%;
            }

            /*logo*/
            .logo{
                font-size: 20px;
                color: #F10000;
                letter-spacing: 0.5em;
                text-align: left;
                margin-left: 690px;
            }
            .logo span{
                font-size: 40px;
                color: #fff;
                margin-left: 10px;
                padding-bottom: 20%;
           }
             header{
                height: 85px;
                width: 100%;
                z-index: 100000;
                position: absolute;
                background-color: #000;
                top: 0;
                left: 0;
                display: flex;
                align-items: center;
           }

            /*table*/
            table{
                border-collapse: collapse;
                border: 1px solid black;
                width: 31%;
                font-family: monospace;
                text-align: left;
                color: #fff;
                letter-spacing: 1.5px;
                margin-left: auto;
                margin-right: auto;
                margin-top: 120px;
            }
            table tr:nth-child(even){
                background-image: linear-gradient(to right, #D2050C, 2% ,#1E1717);
            }
            table tr:nth-child(odd){
                background-image: linear-gradient(to left, #D2050C, 2% ,#1E1717);
            }
            
            table th{
                width: 62%;
                height: 68px;
                padding: 18px;
                border: none;
                text-indent: 10px;
                font-size: 18px;
            }
            table td{
                height: 68px;
                padding: 21px;
                border: none;
                text-indent: 9px;
                font-size: 13px;
            }

            /*buttons*/
           .btn_cnt{
                height: 40px;
                width: 130px;
                border-radius: 30px;
                border: 1px solid #000;
                display: inline;
                padding: 5px 8px;
                text-align: center;
                background-color: green;
                margin-top: 22px;
                margin-left: 850px;
            }
            .btn_cnt a{
                text-decoration: none;
                color: #fff;
            }

           .btn_bck{
                height: 40px;
                width: 130px;
                border-radius: 30px;
                border: 1px solid #000;
                display: inline;
                padding: 5px 8px;
                text-align: center;
                background-color: darkgray;
                margin-top: 22px;
                margin-left: 20px;
            }
            .btn_bck a{
                text-decoration: none;
                color: #fff;
            }
            .price{
                text-align: right;
            }
.btn{
    position: absolute;
    font-family: "Roboto", sams-serif;
    font-size: 18px;
    font-weight: bold;
    background: #f11017;
    width: 160px;
    padding: 20px ;
    right: 580px;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
    color: #ffffff;
    border-radius: 30px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
    bottom: -20px;
    margin-bottom: 50px;
}
.btn2{
    position: absolute;
    font-family: "Roboto", sams-serif;
    font-size: 18px;
    font-weight: bold;
    background: #f11017;
    width: 160px;
    padding: 20px ;
    right: 800px;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
    color: #ffffff;
    border-radius: 30px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
    bottom: -20px;
    margin-bottom: 50px;
}
.btn2:hover{
    background-color: black;
                color: white;
                transition: 0.5s;
                cursor: pointer;
                transform: scale(1.2);
                box-shadow: 2px 2px 2px black;
}
.btn:hover{
    background-color: black;
                color: white;
                transition: 0.5s;
                cursor: pointer;
                transform: scale(1.2);
                box-shadow: 2px 2px 2px black;
}
.backimg img{
    width: 100%;
    height: 100%;
    opacity: 20%;
}

</style>

          <header>
            <div class="menu"></div>
            <div class="logo"> <span>ABC</span> <br>CINEMA </div>
          </header>

           <body>
               <%
                   values val = new values();
                   %>
               <script>
                  let pat = localStorage.getItem('totalpay');
                  //alert(pat);
                  </script>
            
              <div class="pagewrapper"></div>
              
              <form action="emailcontroller" method="post">
             <table>
                  <tr>
                     <th>USER NAME :</th>
                     <th><div class="usernm"><%out.print(paynow.name);%></div></th>
                  </tr>

                  <tr>
                      <td>E-MAIL :</td>
                      <td><div class="mail"><%out.print(paynow.email);%></div></td>
                  </tr>
  
                  <tr>
                      <td>DATE :</td>
                      <td><div class="date"><%out.print(paynow.date);%></div></td>
                  </tr>

                  <tr>
                      <td>THEATER :</td>
                      <td><div class="theater"><%out.print(paynow.theator);%></div></td>
                  </tr>

                  <tr>
                      <td>SHOw-TIME :</td>
                      <td><div class="time"><%out.print(paynow.time);%></div></td>
                  </tr>

                  <tr>
                      <td>NO. OF FULL TICKETS :</td>
                      <td><div class="full"> <%out.print(Config_Booking.full_tickets);%> </div></td>
                  </tr>
                
                  <tr>
                      <td>NO. OF HALF TICKETS :</td>
                      <td><div class="half"> <%out.print(Config_Booking.kid_tickets);%> </div></td>
                  </tr>

                  <tr>
                      <td>TOTAL :</td>
                      <td><div class="price"><%out.print(Config_Booking.total_price);%></div></td>
                  </tr>
             </table>
                  <input type="submit" value="Proceed"class="btn">
              </form>
          <!--      <div btn_row>
                    <a href="#" class="btn">Continue</a>
                </div>
          -->
              <div btn_row>
                    <a href="sheetbokking.jsp" class="btn2">Cancel</a> 
              </div> 
                
            </body>
     </head>
</html>
