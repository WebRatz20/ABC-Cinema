<%-- 
    Document   : index
    Created on : Jan 1, 2023, 10:46:56 PM
    Author     : adnAthukorala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src=" https://kit.fontawesome.com/699f8f7756.js"crossorigin="anonymous"></script>> 
        <title>Buy Tickets</title>
        <style>
* {
    box-sizing: border-box;
}
body {
    margin: 0px;
    font-family: Arial, Helvetica, sans-serif;
    background-color: #1E1717;
}
.banner{
              position: relative;
              width: 100%;
              height: fit-content;
              background-size: cover;
              line-height: 20px;  
            }

            /*logo*/
            .logo{
               
              font-size: 20px;
              color: #F10000;
              left: 60%;
              margin-left: 80px;
              letter-spacing: 0.5em;
            }
            .logo span{
              color: #fff;
              font-size: 40px;
              margin-left: 10px;
              padding-bottom: 20%;
            }

             /*navbar*/
  header{
    height: 70px;
    z-index: 100000;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px 100px;
    transition: 0.5s ease;
    
}
header.sticky{
    padding: 20px 100px;
    background: #F10000;
}
.sticky .logo{
    color: #fff;
}
header .navigation{
    position: relative;
}
#active_page {
    
    color: red;
   
}
.sticky #active_page{
    color: #1E1717;
}
.navigation-items a{
    position: relative;
    color: #fff;
    font-size: 17px;
    font-weight: 500;
    text-decoration: none;
    margin-left: 30px;
    transition: 0.3 ease;
    left: 30%;
   
}
header .navigation .navigation-items a:hover{
   color: #D2050C;
}

.navigation.banner.navigation-items a {
    text-align: right;
}
/*dropdown menu*/
.dropdown{
    float: left;
    overflow: hidden;
}
.dropdown .dropbtn{
    font-size: 17px;
    border: none;
    outline: none;
    color: #fff;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
    position: absolute;
    left: 530px;
    bottom: 90px;
   
}
.dropdown .dropbtn:hover{
    color: #F10000;
}
.dropdownmenu{
    display: none;
    position: absolute;
    background: transparent;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.5);
    z-index: 1;
    left: 490px;
}
.dropdownmenu a {
    float: none;
    color: #fff;
    padding: 10px 10px;
    text-decoration: none;
    display: block;
    text-align: left;
    position: relative;
    margin-top: 20px;
}
.dropdownmenu a:hover{
    background: transparent;
    color: white;
}
.dropdown:hover .dropdownmenu{
    display: block;
}
section{
    padding: 100px 200px;
}
.head_panel {
    color: white;
    background-color: #1E1717;
    padding: 16px;
    margin-top: 110px;
}

.row {
    display: flex;
}

.col-25 {
    flex: 25%;
}

.col-40 {
    flex: 40%;
}

.col-60 {
    flex: 60%;
}

.col-100 {
    flex: 100%;
}

#film_name {
    font-size: 25px;
    margin-bottom: 0px;
}

#theater_name {
    margin-top: 0px;
}

label {
    display: block;
    margin-bottom: 8px;
}

#total_tickets {
    display: inline-block;
    background-color: gray;
    padding: 12px 16px;
}

#full_tickets, #kid_tickets, #total_tickets {
    border-radius: 4px;
    text-align: center;
    width: 100px;
    height: 40px;
    font-size: 18px;
    margin-bottom: 8px;
}

.timebtns_container {
    display: flex;  
}

#btn_time1, #btn_time2, #btn_time3, #btn_time4 {
    background-color: red;
    color: white;
    padding: 12px 16px;
    margin-bottom: 8px;
    border: none;
    font-size: 16px;
    transition: 0.3s ease;
}

#btn_time1:hover, #btn_time2:hover, #btn_time3:hover, #btn_time4:hover {
    background-color: black;
}

#showdate_container {
    background-color: #361414;
    padding: 12px 16px;
}

#show_date {
    font-size: 25px;
    margin: 0px;
}

#seat_table {
    margin: 12px auto;
    border-collapse: collapse;
}

#seat_table td {
    padding: 2px;
}

#theater_screen {
    display: inline-block;
    background-color: #361414;
    color: white;
    font-size: 25px;
    padding: 12px 16px;
    width: 100%;
    height: 80px;
    margin-bottom: 20px;
}

.btn_seat {
    display: inline-block;
    border: 1px solid red;
    border-radius: 8px;
    font-size: 10px;
    width: 25px;
    height: 25px;
    padding: 1px;
    margin: 0px;
    transition: 0.1s ease;
}

.btn_seat:hover {
    transform: scale(1.5);
    background-color: green;
    color: white;
}

.no_seat {
    display: inline-block;
    color: white;
    width: 25px;
    height: 25px;
}

.btnnext_container {
    width: 100%;
    text-align: center;
}

#btn_next {
    background-color: red;
    color: white;
    padding: 12px 16px;
    margin-bottom: 8px;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    width: 200px;
    transition: 0.3s ease;
}

#btn_next:hover {
    background-color: black;
}
 /*footer*/
.-wrapper{
    min-height: 100%;
    }
a{
    text-decoration: none;
}
.footer{
    background: #361414;
    color: #fff;
    height: 400px;
    position: relative;
    bottom: -1100px;
    margin-top: -1000px;   
}
.footer .footer-content{
    height: 350px;
    display: flex;
    position: absolute;
    left: -1px;
    margin-left: 100px;
    bottom: 0px;;
    }
.footer .logo{
    position: relative;
    left: -50px;
}
.footer p{
    position: relative;
    left: -80px;
    text-align: center;
   
}
.footer .footer-bottom{
    background: #3B2A2A;
    color: #686868;
    height: 50px;
    width: 1520px;
   text-align: center;
    position: absolute;
    bottom: 0px;
    left: -100px;
    padding-top: 20px;
}
.footer .footer-bottom p{
    position: absolute;
    left: 600px;
}
.footer .footer-content .footer-section {
    flex: 1;
    padding: 30px;
}
.footer .footer-content h1,
.footer .footer-content h2{
    color: #fff;
    
margin-left: 100px;
}
.footer .footer-content .links ul a{
    display: block;
    margin-bottom: 10px;
    font-size: 1.2em;
    transition: all .3s;
    color: #865353;
    position: relative;
    left: 10px;
}
.footer .footer-content .links ul a:hover{
    color: white;
    margin-left: 0px;
    transition: all .5s; 
}
/*social*/
.media-icons {
    position: absolute;
    left: 10px;
    margin-top: 30px;
    transition: 0.5s ease; 
    display: inline-block;
}
.media-icons a{
    font-size: 2em;
    transition: 0.3s ease;
    margin-left: 20px;
    color: #fff;
}
.media-icons a:not(:last-child){
    margin-bottom: 20px;
}
.media-icons a:hover{
    color: #D2050C;
    transform: scale(1.3);
}

@media screen and (max-width: 800px) {
    .row {
        flex-direction: column;
    }
     
    .head_panel {
        margin-top: 110px;
    }
    
    #fulltickets_container, #kidtickets_container, #totaltickets_container {
        text-align: center;
    }
    
    #btn_time1, #btn_time2, #btn_time3, #btn_time4 {
        flex-grow: 1;
    }
}
    </style>
    </head>
    <body>
        <header>
        <!--logo--> 
        
        <div class="logo"><span>ABC</span><br>CINEMA</div>
           
        <div class="menu-btn"></div>             
               <div class="navigation">              
                   <section class="banner">
                       <div class="navigation-items">                    
                         <a href="index.jsp">HOME</a>
                        <a href="#">MOVIES</a>
                        <div class="dropdown">
                            <button class="dropbtn">
                                <i class="fa fa-caret-down"></i>
                            </button>
                        <div class="dropdownmenu">
                        <a href="nowshowing.jsp">NOW SHOWING</a>
                        <a href="upcomming.jsp">UP COMMING</a>
                        </div>
                        </div>
                        <a href="newTheater.jsp">THEATERS</a>
                        <a href="contactus.jsp">CONTACTUS</a>
                        <a href="adminlogin.jsp">ADMIN</a>
                       </section>   
                       </div>
              </div>
           </header>        
        
        <form id="booking_tickets" name="booking_tickets" action="Config_Booking" method="POST">
            <div class="head_panel" id="head_panel">       
                <div class="row">
                    <div class="col-40">
                        <p id="film_name">Avatar The Way of Water (3D)</p>
                        <p id="theater_name">Savoy Metro Gampaha , Gampaha</p>
                    </div>          
                    <div class="col-60">
                        <div class="row">
                            <div class="col-25" id="fulltickets_container">
                                <label>No.Of Full Tickets</label>
                                <select id="full_tickets" name="full_tickets" onchange="getTotalTickets()">
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                </select>
                            </div>
                            <div class="col-25" id="kidtickets_container">
                                <label>No.Of Kid Tickets</label>
                                <select id="kid_tickets" name="kid_tickets" onchange="getTotalTickets()">
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                </select>
                            </div>
                            <div class="col-25" id="totaltickets_container">
                                <label>Total No.Of Tickets</label>
                                <div id="total_tickets">0</div>
                            </div>
                        </div>
                
                        <div class="row">
                            <div class="col-100">
                                <label>Show Times</label>
                                <div class="timebtns_container">
                                    <button type="button" id="btn_time1">10:30 AM</button>
                                    <button type="button" id="btn_time2">12:30 PM</button>
                                    <button type="button" id="btn_time3">4:30 PM</button>
                                    <button type="button" id="btn_time4">7:30 PM</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        
                <div class="row">
                    <div class="col-100" id="showdate_container">
                        <p id="show_date">December 28th Wednesday, 2022</p>
                    </div>
                </div>
            </div>
        
            <div class="seattable_container">
                <div class="row">
                    <p style="border: 1px solid black; margin: 4px; flex: 50%; background-color: #361414; color: white; padding: 12px 16px; text-align: center">Full Ticket Price = Rs.450.00</p>
                    <p style="border: 1px solid black; margin: 4px; flex: 50%; background-color: #361414; color: white; padding: 12px 16px; text-align: center">Kid Ticket Price = Rs.250.00</p>
                </div>
                <table id="seat_table">
                    <tr>
                        <th></th>
                        <th colspan="2"><span id="theater_screen">Theater Screen</span></th>
                    </tr>
                    <tr>
                        <td><span class="seat_letter">H</span></td>
                        <td>
                            <input type="button" id="h1" name="h1" value="H1" class="btn_seat">
                            <input type="button" id="h2" name="h2" value="H2" class="btn_seat">
                            <input type="button" id="h3" name="h3" value="H3" class="btn_seat">
                            <input type="button" id="h4" name="h4" value="H4" class="btn_seat">
                            <input type="button" id="h5" name="h5" value="H5" class="btn_seat">
                            <input type="button" id="h6" name="h6" value="H6" class="btn_seat">
                            <input type="button" id="h7" name="h7" value="H7" class="btn_seat">
                            <span class="no_seat">.</span>
                            <span class="no_seat">.</span>
                            <input type="button" id="h8" name="h8" value="H8" class="btn_seat">
                            <input type="button" id="h9" name="h9" value="H9" class="btn_seat">
                            <input type="button" id="h10" name="h10" value="H10" class="btn_seat">
                            <input type="button" id="h11" name="h11" value="H11" class="btn_seat">
                            <input type="button" id="h12" name="h12" value="H12" class="btn_seat">
                            <input type="button" id="h13" name="h13" value="H13" class="btn_seat">
                            <input type="button" id="h14" name="h14" value="H14" class="btn_seat">
                        </td>
                    </tr>
                    <tr>
                        <td><span class="seat_letter">G</span></td>
                        <td>
                            <span class="no_seat">.</span>
                            <input type="button" id="g1" name="g1" value="G1" class="btn_seat">
                            <input type="button" id="g2" name="g2" value="G2" class="btn_seat">
                            <input type="button" id="g3" name="g3" value="G3" class="btn_seat">
                            <input type="button" id="g4" name="g4" value="G4" class="btn_seat">
                            <input type="button" id="g5" name="g5" value="G5" class="btn_seat">
                            <input type="button" id="g6" name="g6" value="G6" class="btn_seat">
                            <span class="no_seat">.</span>
                            <span class="no_seat">.</span>
                            <input type="button" id="g7" name="g7" value="G7" class="btn_seat">
                            <input type="button" id="g8" name="g8" value="G8" class="btn_seat">
                            <input type="button" id="g9" name="g9" value="G9" class="btn_seat">
                            <input type="button" id="g10" name="g10" value="G10" class="btn_seat">
                            <input type="button" id="g11" name="g11" value="G11" class="btn_seat">
                            <input type="button" id="g12" name="g12" value="G12" class="btn_seat">
                            <span class="no_seat">.</span>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="seat_letter">F</span></td>
                        <td>
                            <input type="button" id="f1" name="f1" value="F1" class="btn_seat">
                            <input type="button" id="f2" name="f2" value="F2" class="btn_seat">
                            <input type="button" id="f3" name="f3" value="F3" class="btn_seat">
                            <input type="button" id="f4" name="f4" value="F4" class="btn_seat">
                            <input type="button" id="f5" name="f5" value="F5" class="btn_seat">
                            <input type="button" id="f6" name="f6" value="F6" class="btn_seat">
                            <input type="button" id="f7" name="f7" value="F7" class="btn_seat">                           
                            <span class="no_seat">.</span>
                            <span class="no_seat">.</span>
                            <input type="button" id="f8" name="f8" value="F8" class="btn_seat">
                            <input type="button" id="f9" name="f9" value="F9" class="btn_seat">
                            <input type="button" id="f10" name="f10" value="F10" class="btn_seat">
                            <input type="button" id="f11" name="f11" value="F11" class="btn_seat">
                            <input type="button" id="f12" name="f12" value="F12" class="btn_seat">
                            <input type="button" id="f13" name="f13" value="F13" class="btn_seat">
                            <input type="button" id="f14" name="f14" value="F14" class="btn_seat">
                        </td>
                    </tr>
                    <tr>
                        <td><span class="seat_letter">E</span></td>
                        <td>
                            <span class="no_seat">.</span>
                            <input type="button" id="e1" name="e1" value="E1" class="btn_seat">
                            <input type="button" id="e2" name="e2" value="E2" class="btn_seat">
                            <input type="button" id="e3" name="e3" value="E3" class="btn_seat">
                            <input type="button" id="e4" name="e4" value="E4" class="btn_seat">
                            <input type="button" id="e5" name="e5" value="E5" class="btn_seat">
                            <input type="button" id="e6" name="e6" value="E6" class="btn_seat">                                                      
                            <span class="no_seat">.</span>
                            <span class="no_seat">.</span>
                            <input type="button" id="a7" name="a7" value="E7" class="btn_seat">
                            <input type="button" id="e8" name="e8" value="E8" class="btn_seat">
                            <input type="button" id="e9" name="e9" value="E9" class="btn_seat">
                            <input type="button" id="e10" name="e10" value="E10" class="btn_seat">
                            <input type="button" id="e11" name="e11" value="E11" class="btn_seat">
                            <input type="button" id="e12" name="e12" value="E12" class="btn_seat">
                            <span class="no_seat">.</span>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="seat_letter">D</span></td>
                        <td>
                            <input type="button" id="d1" name="d1" value="D1" class="btn_seat">
                            <input type="button" id="d2" name="d2" value="D2" class="btn_seat">
                            <input type="button" id="d3" name="d3" value="D3" class="btn_seat">
                            <input type="button" id="d4" name="d4" value="D4" class="btn_seat">
                            <input type="button" id="d5" name="d5" value="D5" class="btn_seat">
                            <input type="button" id="d6" name="d6" value="D6" class="btn_seat">
                            <input type="button" id="d7" name="d7" value="D7" class="btn_seat">                           
                            <span class="no_seat">.</span>
                            <span class="no_seat">.</span>
                            <input type="button" id="d8" name="d8" value="D8" class="btn_seat">
                            <input type="button" id="d9" name="d9" value="D9" class="btn_seat">
                            <input type="button" id="d10" name="d10" value="D10" class="btn_seat">
                            <input type="button" id="d11" name="d11" value="D11" class="btn_seat">
                            <input type="button" id="d12" name="d12" value="D12" class="btn_seat">
                            <input type="button" id="d13" name="d13" value="D13" class="btn_seat">
                            <input type="button" id="d14" name="d14" value="D14" class="btn_seat">
                        </td>
                    </tr>
                    <tr>
                        <td><span class="seat_letter">C</span></td>
                        <td>
                            <span class="no_seat">.</span>
                            <input type="button" id="c1" name="c1" value="C1" class="btn_seat">
                            <input type="button" id="c2" name="c2" value="C2" class="btn_seat">
                            <input type="button" id="c3" name="c3" value="C3" class="btn_seat">
                            <input type="button" id="c4" name="c4" value="C4" class="btn_seat">
                            <input type="button" id="c5" name="c5" value="C5" class="btn_seat">
                            <input type="button" id="c6" name="c6" value="C6" class="btn_seat">                                                      
                            <span class="no_seat">.</span>
                            <span class="no_seat">.</span>
                            <input type="button" id="c7" name="c7" value="C7" class="btn_seat">
                            <input type="button" id="c8" name="c8" value="C8" class="btn_seat">
                            <input type="button" id="c9" name="c9" value="C9" class="btn_seat">
                            <input type="button" id="c10" name="c10" value="C10" class="btn_seat">
                            <input type="button" id="c11" name="c11" value="C11" class="btn_seat">
                            <input type="button" id="c12" name="c12" value="C12" class="btn_seat">
                            <span class="no_seat">.</span>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="seat_letter">B</span></td>
                        <td>
                            <input type="button" id="b1" name="b1" value="B1" class="btn_seat">
                            <input type="button" id="b2" name="b2" value="B2" class="btn_seat">
                            <input type="button" id="b3" name="b3" value="B3" class="btn_seat">
                            <input type="button" id="b4" name="b4" value="B4" class="btn_seat">
                            <input type="button" id="b5" name="b5" value="B5" class="btn_seat">
                            <input type="button" id="b6" name="b6" value="B6" class="btn_seat">
                            <input type="button" id="b7" name="b7" value="B7" class="btn_seat">                         
                            <span class="no_seat">.</span>
                            <span class="no_seat">.</span>
                            <input type="button" id="b8" name="b8" value="B8" class="btn_seat">
                            <input type="button" id="b9" name="b9" value="B9" class="btn_seat">
                            <input type="button" id="b10" name="b10" value="B10" class="btn_seat">
                            <input type="button" id="b11" name="b11" value="B11" class="btn_seat">
                            <input type="button" id="b12" name="b12" value="B12" class="btn_seat">
                            <input type="button" id="b13" name="b13" value="B13" class="btn_seat">
                            <input type="button" id="b14" name="b14" value="B14" class="btn_seat">
                        </td>
                    </tr>
                    <tr>
                        <td><span class="seat_letter">A</span></td>
                        <td>
                            <span class="no_seat">.</span>
                            <input type="button" id="a1" name="a1" value="A1" class="btn_seat">
                            <input type="button" id="a2" name="a2" value="A2" class="btn_seat">
                            <input type="button" id="a3" name="a3" value="A3" class="btn_seat">
                            <input type="button" id="a4" name="a4" value="A4" class="btn_seat">
                            <input type="button" id="a5" name="a5" value="A5" class="btn_seat">
                            <input type="button" id="a6" name="a6" value="A6" class="btn_seat">                                                     
                            <span class="no_seat">.</span>
                            <span class="no_seat">.</span>
                            <input type="button" id="a7" name="a7" value="A7" class="btn_seat">
                            <input type="button" id="a8" name="a8" value="A8" class="btn_seat">
                            <input type="button" id="a9" name="a9" value="A9" class="btn_seat">
                            <input type="button" id="a10" name="a10" value="A10" class="btn_seat">
                            <input type="button" id="a11" name="a11" value="A11" class="btn_seat">
                            <input type="button" id="a12" name="a12" value="A12" class="btn_seat">
                            <span class="no_seat">.</span>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="btnnext_container">
                <input type="submit" id="btn_next" value="next">
            <!--    <button type="submit" id="btn_next"><a href="recipt.jsp">Next</a></button>-->
            </div>
        </form>
        
       <!--footer-->
 <div class="footer">
    <div class="footer-content">
        <div class="footer-section about">
            <div class="logo"><span>ABC</span><br>CINEMA</div>  
            <p>Lorem ipsum dolor sit amet, 
                consetetur sadipscing elitr,
                Lorem ipsum dolor sit amet, 
                consetetur sadipscing elitr, 
                sed diam nonumy eirmod tempor
                invidunt ut labore et dolore magna 
                aliquyam erat, 
                sed diam voluptua. At vero eos  
            </p> 
            <div class="media-icons">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-google"></i></a>
                <a href="#"><i class="fa fa-youtube"></i></a>
            </div>
        </div>                        
                <div class="footer-section links"> 
                    <h1>Quick Links</h1>
                             <br>   
                    <ul>               
                       <a href="index.jsp"><li>HOME</li></a>
                        <a href="nowshowing.jsp"><li>MOVIES</li></a>
                        <a href="newTheater.jsp"><li>THEATERS</li></a>
                        <a href="contactus.jsp"><li>CONTACTUS</li></a>
                        <a href="adminlogin.jsp"><li>ADMIN</li></a>
                    </ul> 
                </div>
               
                <div class="footer-section links"> 
                    <h1>Theaters</h1>
                             <br>   
                    <ul>               
                    <a href="newTheater.jsp"><li>NUGEGODA</li></a>
                    <a href="newTheater.jsp"><li>MAHARAGAMA</li></a>
                    <a href="newTheater.jsp"><li>KANDY</li></a>
                    </ul> 
                </div>    

            <div class="footer-bottom">
            <p>&copy; CGdevelopers.com | ABC cinema all right reserved</p>
            </div>
    </div>
</div>
       <script>
           function getTotalTickets() {
    var fullTickets = document.getElementById('full_tickets');
    var kidTickets = document.getElementById('kid_tickets');
    var totalTickets = parseInt(fullTickets.value) + parseInt(kidTickets.value);
    //var tot=Parse.int(fullTickets.value)*450 + parseInt(kidTickets.value*250;
    var fullval = parseInt(fullTickets.value)*450;
    var halfval = parseInt(kidTickets.value)*250;
    var tot = fullval + halfval;
    document.getElementById('total_tickets').innerHTML = (totalTickets);
    localStorage.setItem('totalpay',tot);
}
</script>
<script type="text/javascript">
    window.addEventListener("scroll",function(){
        var header = document.querySelector("header");
        header.classList.toggle("sticky",window.scrollY > 0)
    });

       </script>
    </body>
</html>
