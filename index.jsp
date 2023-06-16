<%-- 
    Document   : index
    Created on : Jan 11, 2023, 4:03:00 PM
    Author     : wishh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src=" https://kit.fontawesome.com/699f8f7756.js" crossorigin="anonymous"></script>
        <title>HomePage</title>
        
        <style>
            *{
    margin: 0%;
    padding: 0%;
    box-sizing: border-box;
}

body{
    background-color: #1E1717;
    height: 100vh;
   
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
/*posters*/
.home{
    position: relative;
    width: 100%;
    min-height: 110vh;
    display: flex;
    justify-content: center;
    flex-direction: column;
    background: #1E1717;
}
.home .content{
    z-index: 888;
    color: rgb(255, 255, 255);
    width: 60%;
    margin-top: 250px;
    display: none;
}
.home .content.active{
    display: block;
}
.home img{
    z-index: 0000;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 85%;
    object-fit: cover;
}
.slider-navigation{
    z-index: 888;
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    transform: translateY(80px);
    margin-bottom: -20%;
}
.slider-navigation .nav-btn{
    width: 15px;
    height: 15px;
    background: rgb(230, 228, 228);
    border-radius: 50%;
    cursor: pointer;
    box-shadow: 0 0 2px #000000;
    transition: 0.3s ease;
}
.slider-navigation .nav-btn.active{
    background: #F10000;
}
.slider-navigation .nav-btn:not(:last-child){
    margin-right: 20px;
}
.slider-navigation .nav-btn:hover{
    transform: scale(1.2);
}
.poster-slide{
    position: absolute;
    width: 100%;
    clip-path: circle(0% at 0 50%);
}
.poster-slide.active{
    clip-path: circle(150% at 0 50%);
    transition: 2s ease;
    transition-property: clip-path;
}
/*movies*/
.moviestittle{
    margin-left: 7%;
    margin-bottom: 3%;
}
.moviestittle h2{
    color: #fff;
    letter-spacing: 0.2cm;
}
.moviestittle h2::after{
    content: '';
    width: 1300px;
    height: 1px;
    margin-left: 30%;
    background: #D2050C;
    position: absolute;
    bottom: -160px;
    
transform: translateX(-50%);
}
/*posters*/
.main{
    float: left;
    width: 100%;
    height: auto;
    background: #1E1717;
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    flex-flow: wrap;
}
.box{
    width: 250px;
    height: 340px;
    background: #1E1717;
    margin: 20px;
    box-sizing: border-box;
    transition: 1s;
    padding: 20px;
}
.box:hover{
    transform: scale(1.02);
    box-shadow: 2px 2px 5px #D2050C;
}
.image2 img{
    width: 95%;
    height: 300px;
    padding: 0px;
    border-top-right-radius: 5px;
    border-top-left-radius: 5p;
}
.title{
    text-align: center;
    padding: 5px;
}
.title h1{
    color: #fff;
}
.title a{
    color: white;
}
.title button{
    width: 130px;
    height: 40px;
    margin-top: 30px;
    margin-bottom: 30px;
    background-color: #D2050C;
    border: 1px solid black;
    padding: 5px;
    border-radius: 30px 30px 30px;
}
.title button:hover{
    background-color: black;
    color: black;
    transition: .5s;
    cursor: pointer;
    transform: scale(1.2);
    box-shadow: 2px 2px 2px black;
}

/*showmore*/
.showmore{
    margin-left: 7%;
    margin-bottom: 3%;
    
}
.showmore button::after{
    content: '';
    width: 1100px;
    height: 1px;
    margin-left: -45%;
    background: #D2050C;
    position: absolute;
    bottom: -730px;
    
transform: translateX(-50%);
}
.showmorebutton{
    width: 150px;
    height: 60px;
    margin-left: 82%;
    margin-bottom: 20%;
}
.showmorebutton a{
    color: #fff;
}
.showmorebutton button {
    margin-top: 165px;
    width: 130px;
    height: 40px;
    background-color: #D2050C;
    border: 1px solid black;
    border-radius: 30px 30px 30px;
}
.showmorebutton button:hover{
    background-color: black;
    color: black;
    transition: .5s;
    cursor: pointer;
    transform: scale(1.2);
    box-shadow: 2px 2px 2px black;
}
/*addbox*/
.addboxslider{
    position: relative;
    width: 70%;
    overflow: hidden;
    left: 15%;
    bottom: -280px;
}
.addimages{
    display: flex;
    width: 100%;
}
.addimages img{
    height: 400px;
    width: 100%;
    transition: all 0.15s ease;
}
.addimages input{
    display: none;
}
.dots{
    display: flex;
    justify-content: center;
    margin: 5px;
}
.dots label{
    height: 20px;
    width: 20px;
    border-radius: 50%;
    border: solid #fff 3px;
    cursor: pointer;
    transition: all 0.15s ease;
    margin: 5px;
}
.dots label:hover {background: #fff;}
#img1:checked ~ .m1 {
    margin-left: 0;
}
#img2:checked ~ .m2 {
    margin-left: -100%;
}
#img3:checked ~ .m3 {
    margin-left: -200%;
}
#img4:checked ~ .m4 {
    margin-left: -300%;
}
#img5:checked ~ .m5 {
    margin-left: -400%;
}
/*upcomming*/

.upcommingtittle{
    margin-left: 7%;
    margin-bottom: 30%;
}
.upcommingtittle h2{
    color: #fff;
    letter-spacing: 0.2cm;
    position: absolute;
    bottom: -1340px;
}
.upcommingtittle h2::after{
    content: '';
    width: 1300px;
    height: 0.1px;
    left: -50px;
    background: #D2050C;
    position: absolute;
    margin-left: 350%;
    bottom: -30px;
    
transform: translateX(-50%);
}
/*showmore2*/
.showmoretwo{
    margin-left: 7%;
    margin-bottom: 3%;
}
.showmoretwo button::after{
    content: '';
    width: 1100px;
    height: 1px;
    margin-left: -45%;
    background: #D2050C;
    position: absolute;
    bottom: -2040px;
    
transform: translateX(-50%);
}
.showmoretwobutton{
    width: 150px;
    height: 60px;
    margin-left: 82%;
    margin-bottom: 10%;
}
.showmoretwobutton a{
    color: #fff;
}
.showmoretwobutton button {
    margin-top: 200px;
    width: 130px;
    height: 40px;
    background-color: #D2050C;
    border: 1px solid black;
    border-radius: 30px 30px 30px;
}
.showmoretwobutton button:hover{
    background-color: black;
    color: black;
    transition: .5s;
    cursor: pointer;
    transform: scale(1.2);
    box-shadow: 2px 2px 2px black;
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

/*commentsec*/
.container{
    position: relative;
    bottom: -650px;
    margin-left: 40%;
    transform: translate(-50%, -50%);   
}
.details-form2{
    position:absolute;
    left: 650px;
    height: 500px;
    width: 700px;
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    align-items: center;
    background: #1E1717;
    color: #fff;
    padding-top: 60px;
    box-shadow: 0 0 4px #fff;
    bottom: -2635px;
}
.details-form{
    height: 500px;
    width: 370px;
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    align-items: center;
    background: #1E1717;
    color: #fff;
    padding-top: 60px;
    box-shadow: 0 0 4px #fff;
}
.commenting h3{
    letter-spacing: 1px;
}
input{
    width: 300px;
    margin: 20px;
    background: transparent;
    outline: none;
    padding: 10px;
    font-size: 13px;
    border-radius: 30px;
    box-shadow: 0 0 4px #fff;
    transition: box-shadow 0.5s ease;
}
#commentera{
    width: 300px;
    margin: 20px;
    background: transparent;
    outline: none;
    padding: 10px;
    font-size: 13px;
    border-radius: 30px;
    box-shadow: 0 0 4px #fff;
    transition: box-shadow 0.5s ease;
}
#commentera[placeholder]:focus{
    color: #fff;
}
#commentera:focus,
.btn:hover{
    box-shadow: 0 0 10px #fff;
}
.btn{
    padding: 10px 10px;
    margin-top: 20px;
    background: transparent;
    border-radius: 30px;
    box-shadow: 0 0 4px #fff;
    cursor: pointer;
    width: 150px;
    text-align: center;
    position: absolute;
    left: 110px;
    color: #fff;
}
input[placeholder]:focus{
    color: #fff;
}
input:focus,
.btn:hover{
    box-shadow: 0 0 10px #fff;
}
select{
    width: 300px;
    margin: 20px;
    background: transparent;
    outline: none;
    padding: 10px;
    font-size: 13px;
    border-radius: 30px;
    color: #fff;
    box-shadow: 0 0 4px #fff;
    transition: box-shadow 0.5s ease;
}
select[placeholder]:focus{
    color: #fff;
}
.selection:focus,
.btn:hover{
    box-shadow: 0 0 10px #fff;
}
option{
    background-color: #222;
}
.txt{
    width: 100px;
    height: 100px;
}

/*disply success message*/
.pop-up{
    width: 350px;
    background: #552a2a;
    border-radius: 6px;
    position: absolute;
    top: 0;
    left: 20%;
    transform: translate(-50%, -50%) scale(0.1);
    text-align: center;
    padding: 0 30px 30px;
    color: rgb(220, 206, 206);
    visibility: hidden;
    transition: transform 0.4s, top 0.4s;
}
.pop-up img{
    width: 100px;
    margin-top: -50px;
    border-radius: 50%;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}
.pop-up h2{
    font-size: 38px;
    font-weight: 500;
    margin: 30px 0 10px;
}
.pop-up button{
    width: 100%;
    margin-top: 50px;
    padding: 10px 0;
    background: #D2050C;
    columns: #fff;
    border: 0;
    outline: none;
    font-size: 18px;
    border-radius: 30px 30px 30px;
    cursor: pointer;
    box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
}
.openpopup{
    visibility: visible;
   top: 50%;
    transform: translate(-50%,-50%) scale(1);
}
/*footer*/

a{
    text-decoration: none;
}
.footer{
    background: #361414;
    color: #fff;
    height: 400px;
    position: relative;
    bottom: -1400px;
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



/*crop*/

@media (max-width:1040px){
    header{
        padding: 15px 200px;
    }
    section{
        padding: 100px 20px;
    }
    .home .media-icons{
        right: 15px;
    }
    header .navigation{
       display: none;
    }
    header .navigation.active{
        position: fixed;
        width: 100%;
        height: 100vh;
        top: 0;
        left: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        background: #36454f;
    }
    header .navigation.active .navigation-items{
        background: rgb(255, 255, 255);
        width: 600px;
        max-width: 600px;
        margin: 20px;
        padding: 40px;
        display: flex;
        flex-direction: column;
        align-items: center;
        border-radius: 5px;
        box-shadow: 0 5px 25px rgb(1 1 1 / 20%);
    }
    header .navigation .navigation-items a{
color: #222;
        font-size: 1.2em;
        margin: 20px;
        left: -50px;
    }
    header .navigation .navigation-items a:before{
        background: #222;
        height: 5px;
    }
    .menu-btn{
      
background: url(img/menu.png)no-repeat;
background-size: 30px;
background-position: center;
width: 40px;
height: 40px;
cursor: pointer;
transition: 0.3s ease;
    }
}
.menu-btn.active{
    
z-index: 999;
background: url(menu.png)no-repeat;
background-size: 25px;
background-position: center;
transition: 0.3s ease;
}
.addboxslider{
    position: relative;
    left: 15%;
    bottom: -220px;
}
@media screen and (max-width:1500px) {
    .moviestittle h2{
       padding: 1px;
    }
    .moviestittle h2::after{
        
        width: 90%;
        height: 1px;
        position:absolute;
        margin-left: 10%;
        margin-bottom: -20px;

    }
    .upcommingtittle h2::after{
        content: '';
        width: 1300px;
        height: 0.1px;
        left: -50px;
        background: #D2050C;
        position: absolute;
        margin-left: 350%;
        bottom: -30px;
        
    transform: translateX(-50%);
    }
    .box {
        margin-top: 10%;
        margin-bottom: 10;
    }
    #up{
        margin-top: 50%;
        margin-bottom: -180px;
    }
    .showmore button::after{
        bottom: -1215px;
        width: 70%; 
        position: absolute;
        margin-left: -400px;
    }
    .showmore button{
        margin-left: -30px;
    }
    .showmoretwo button::after{
        width: 500px;
        left: -130%;
        position: absolute;
        bottom: -92em;
    }
    .showmoretwobutton {
        position: relative;
       left: -30px;
        bottom: -130px;
    }
    .upcomming{
        position: absolute;
        bottom: -450px;
    }
    .upcommingtittle h2{
            left: 70px;
         }
    .upcommingtittle h2::after{
        
             width: 600px;
             position:absolute;
             left: -240px;
             
             
         transform: translateX(-50%);
    }  
    .details-form {
        position: absolute;
        bottom: -1250px;
        left: -50px;
        width: 330px;
    }
    .details-form2{
        position: absolute;
        bottom: -219em;
        left: 370px;
        width: 350px;
    }
    .footer{
        
        height: 400px;
        position: relative;
        bottom: -190em;
        margin-top: -1000px;   
    }
    .media-icons a{
        font-size: 1.30em;
        margin-left: 20px;
        position: relative;
        left: -110px;
    }
    .footer .footer-bottom{
        width: 750px;
    }
    .footer .footer-bottom p{
        position: absolute;
        left: 200px;
    }
    .footer-section .logo{
        position: relative;
        left: -150px;
        top: -30px;
    }
    .footer-section p{
        position: relative;
        left: -120px;
    }
    .footer .footer-content h1,
    .footer .footer-content h2{
        position: relative;
        left: -160px;
        top: -30px;
    }
    .footer .footer-content .links ul a{
        position: relative;
        left: -60px;
        top: -30px;
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
                        <a href="index.jsp" id="active_page">HOME</a>
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


<section class="home">

    <!--posters-->
   <img class="poster-slide active" src="img/p.jpg" autoplay muted loop>
   <img class="poster-slide" src="img/4280009572-bd-w-mediumhigh_orig-1648118656261.jpg" autoplay muted loop>
   <img class="poster-slide" src="img/maxresdefault.jpg" autoplay muted loop>
   <img class="poster-slide" src="img/maxresdefault (1).jpg" autoplay muted loop>
   <img class="poster-slide" src="img/header.jpg" autoplay muted loop>

   <div class="slider-navigation">
    <div class="nav-btn active"></div>
    <div class="nav-btn"></div>
    <div class="nav-btn"></div>
    <div class="nav-btn"></div>
    <div class="nav-btn"></div>
   </div>

</section>
        
        <!--setting up to retrieve comments from database-->
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
        
<%
String id = request.getParameter("userid");
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
<!--end ->
<!--movies-->
<div class="movies-container">
    <div class="moviestittle">
       <h2>NOW showing</h2>
    </div>
</div>       

<!--nowshowingposter-->
<div class="main">

<!--poster1-->
<div class="box">
<div class="image2">
    <img src="img/p1.jpg"></div>
    <div class="title">
        <h1>MALEFICENT</h1>
        <button><a href="buyform.jsp">Buy Ticket </a></button> 
    </div> 
</div> 

<!--poster2-->
<div class="box">
    <div class="image2">
        <img src="img/p6.jpg"></div>
        <div class="title">
            <h1>AVENGERS</h1>
            <button><a href="buyform.jsp">Buy Ticket </a></button> 
        </div> 
    </div>    

<!--poster3-->
<div class="box">
    <div class="image2">
        <img src="img/p7.jpg"></div>
        <div class="title">
            <h1>STRANGER THINGS</h1>
            <button><a href="buyform.jsp">Buy Ticket </a></button> 
        </div> 
    </div>   

<!--poster4-->
<div class="box">
    <div class="image2">
        <img src="img/morbius.jpg"></div>
        <div class="title">
            <h1>MORBIUS</h1>
            <button><a href="buyform.jsp">Buy Ticket </a></button> 
        </div> 
    </div> 
    
</div>

<!--showmore-->
<div class="showmore">
    <div class="showmorebutton"><button><a href="nowshowing.jsp">SHOW MORE</a></button>  </div>
</div>

<!--addbox-->    
<div class="addboxslider">

<!--posters-->
    <div class="addimages">
        <input type="radio" name="addslide" id="img1" checked>
        <input type="radio" name="addslide" id="img2">
        <input type="radio" name="addslide" id="img3">
        <input type="radio" name="addslide" id="img4">
        <input type="radio" name="addslide" id="img5">
           <img src="img/add11.gif" class="m1" alt="img1">
           <img src="img/add4.jpg" class="m2" alt="img2">
           <img src="img/add2.webp" class="m3" alt="img3">
           <img src="img/add1.jpg" class="m4" alt="img4">
           <img src="img/add5.webp" class="m5" alt="img5">
    </div>
    <div class="dots">
        <label for="img1"></label>
        <label for="img2"></label>
        <label for="img3"></label>
        <label for="img4"></label>
        <label for="img5"></label>
    </div>

</div>

<!--upcomming-->
    <div class="upcomming">
        <div class="upcommingtittle">
           <h2>UP comming</h2>
        </div>      
    </div> 

    <div class="main">

        <!--poster1-->
        <div class="box" id="up">
        <div class="image2">
            <img src="img/p3.jpg">
        </div>
            <div class="title">
                <h1>WITH YOU</h1>
                <button><a href="buyform.jsp">Buy Ticket </a></button> 
            </div> 
        </div> 
        
        <!--poster2-->
        <div class="box" id="up">
            <div class="image2">
                <img src="img/p8.jpeg">
            </div>
                <div class="title">
                    <h1>RED SPARROW</h1>
                    <button><a href="buyform.jsp">Buy Ticket </a></button> 
                </div> 
            </div>    
        
        <!--poster3-->
        <div class="box" id="up">
            <div class="image2">
                <img src="img/p9.jpg">
            </div>
                <div class="title">
                    <h1>INCEPTION</h1>
                    <button><a href="buyform.jsp">Buy Ticket </a></button> 
                </div> 
            </div>   
        
        <!--poster4-->
        <div class="box" id="up">
            <div class="image2">
                <img src="img/p10.jpg">
            </div>
                <div class="title">
                    <h1>CURSED</h1>
                    <button><a href="buyform.jsp">Buy Ticket </a></button> 
                </div> 
            </div> 
            
    </div>

<!--showmore-->
<div class="showmoretwo">
    <div class="showmoretwobutton">
        <button><a href="upcomming.jsp">SHOW MORE</a></button>  
    </div>
</div>

<!--commentsec-->
    <!--boxcreate-->  
        <div class="container">
            <div class="details-form">
                <div class="commenting">
                    <h3>COMMENT</h3>
                </div>
                <form id="form" class="inputdetails" method="post" action="comment">
                    <input type="text" placeholder="Your Name" required id="name" name="name">
                    <input type="text" placeholder="Film Name"id="film" name="film">
                    <div class="selection">
                        <select id="theators"name="theators">
                            <option >Select</option>
                            <option >Nugegoda</option>
                            <option >kurunagala</option>
                            <option >Kandy</option>
                        </select>
                    </div>
                    <div class="txt"><textarea id="commentera" placeholder="add your feedback here" name="commentera"></textarea> </div>
                <!--    <input type="submit" class="btn" onclick="openpopup()" value="POST">-->
                <input type="submit" value="post" class="btn" onclick="openpopup()">
                </form>
                <!--sucsess popup-->
                <div class="pop-up" id="popupp">
                    <img src="img/check.png" alt="">
                    <h2>Thank You!</h2>
                    <p>Your details has been successfully submited. Thanks</p>
                <button type="button" onclick="closepopup()">OK</button>
                </div>
            </div>
        </div>
        
    <div class="details-form2">
        <table>
                        <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from comments";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
  <tr>
      
      <th style="background-color:purple;">
                     Name
                    </th>
                    <th>
                        <%=resultSet.getString("name") %> 
                    </th>
                </tr>
                <tr>
                    <th style="background-color:purple;">
                        Movie
                    </th>
                    <th>
                        <%=resultSet.getString("film") %>
                    </th>
                </tr>
                                    <th style="background-color:purple;">
                    Filmhall
                    </th>
                    <th>
                        <%=resultSet.getString("theator") %> 
                    </th>
                </tr>
                <tr>
                    <th style="background-color:purple;">
                      feedback
                    </th>
                    <th>
                        <%=resultSet.getString("comment") %>
                    </th>
                </tr>
                <tr>
                    <th colspan="2">
                        ...........................................................
                    </th>
                   
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
    </div>
        
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

<!--javascript-->
<!--navbar-->
<script type="text/javascript">
    window.addEventListener("scroll",function(){
        var header = document.querySelector("header");
        header.classList.toggle("sticky",window.scrollY > 0)
    });

</script>

<!--img-slider-->
<script type="text/javascript">
    const menubtn = document.querySelector(".menu-btn");
    const navigation = document.querySelector(".navigation");

    menubtn.addEventListener("click", () => {
    menubtn.classList.toggle("active");
   navigation.classList.toggle("active");
    });
        const btns = document.querySelectorAll(".nav-btn");
            const slides = document.querySelectorAll(".poster-slide");
            const contents = document.querySelectorAll(".content");

            var sliderNav = function(manual){
                btns.forEach((btn) => {
                    btn.classList.remove("active");


                }); 

                slides.forEach((slide) => {
                    slide.classList.remove("active");


                }); 

               contents.forEach((content) => {
                   content.classList.remove("active");


                }); 

                btns[manual].classList.add("active");
                slides[manual].classList.add("active");
                contents[manual].classList.add("active");
            }
            btns.forEach((btn, i) => {
                btn.addEventListener("click", () => {
                    sliderNav(i);

                });
            });
</script>

<script>
    var x=document.getElementById("comment");
    var y=document.getElementById("display");
    var z=document.getElementById("btn");
    function display()
    {
        x.style.left='-400px';
        y.style.left='50px';
        z.style.left='110px';
    }
    function comment()
    {
        x.style.left='50px';
        y.style.left='450px';
        z.style.left='0px';
    }
</script>

<!--sucsess popup-->
<script>
    let popup = document.getElementById("popupp");
    function openpopup(){
        popup.classList.add("openpopup");
    }
    function closepopup(){
        popup.classList.remove("openpopup");
    }
</script>
 </div>
 
</body>
</html>
    </body>
</html>
