<%-- 
    Document   : newTheater
    Created on : Jan 11, 2023, 4:35:07 PM
    Author     : pasindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>theaternew</title>
    
    <script src=" https://kit.fontawesome.com/699f8f7756.js"crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
.moviestitle{
    position: relative;
    margin-top: 100px;
    padding: 80px 70px;
    color: #fff;
}
.topnav input[type=search]{
    position: relative;
    margin-top: 100px;
    float: right;
    padding: 6px;
    border: none;
    color: #fff;
    
    margin-right: 21px;
    font-size: 15px;
    background-color: #c2b1b1  
}

.center{
    margin-top: 150px;
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 80%;
    height: 60%;
}

.text{
    position: relative;
    margin-top: 50px;
    padding-left: 350px;
    color: #F10000;
}
.symbol{
    position: relative;
    margin-top: 50px;
    padding-left: 500px;
    line-height: 2;
    
}

.symbol h1{
    color: #fff;
}
/*footer*/
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
    bottom: -1000px;
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
.icon1{
    position: relative;
    left: 590px;
    bottom: 182px;
}
.material-icons{
    position: relative;
    transition: 0.10s ease; 
}
.material-icons:hover{
    color: #D2050C;
    transform: scale(1.3);
}

.icon2{
    position: relative;
    left: 750px;
    bottom: 320px;
}
.icon3{
    position: relative;
    left: 850px;
    bottom: 200px;
}
.btn{
    position: relative;
    bottom: 655px;
    left: 965px;
    background: transparent;
    width: 35px;
    height: 35px;
    border: 0;
    outline: none;
    cursor: pointer;
    border-radius: 30px;
}
.btn2{
    position: relative;
    bottom: 773px;
    left: 775px;
    width: 35px;
    height: 35px;
    background: transparent;
    border: 0;
    outline: none;
    cursor: pointer;
    font-size: 22px;
    font-weight: 500;
    border-radius: 30px;
   
}
.btn3{
    position: relative;
    bottom: 635px;
    left: 519px;
    width: 35px;
    height: 35px;
    background: transparent;
    border: 0;
    outline: none;
    cursor: pointer;
    font-size: 22px;
    font-weight: 500;
    border-radius: 30px;
   
}
.popup{
    width: 400px;
    background: #fff;
    border-radius: 6px;
    position: absolute;
    top: 0;
    left: 50%;
    transform: translate(-50%,-50%) scale(0.1);
    text-align: center;
    padding: 0 20px 20px;
    color: #333;
    visibility: hidden;
    transition: transform 0.4s, top 0.4s;
}
.open-popup{
    visibility: visible;
    top: 50%;
    transform: translate(-50%,-50%) scale(1);
}
.open-popup2{
    visibility: visible;
    top: 50%;
    transform: translate(-50%,-50%) scale(1);
}

.popup img{
    margin-top: 30px;
    width: 350px;
    height: 200px;
    border: 100px;
}
.popup p{
       margin-top: 0px;

}
.popup button{
    width: 100%;
    margin-top: 15px;
    padding: 10px 0;
    background: #480f0f;
    color: #fff;
    border: 0;
    outline: none;
    font-size: 18px;
    border-radius: 4px;
    cursor: pointer;
    box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
}


    </style>
    </head>
    <body>
        
    <!--pagewrapper-->

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
                        <a href="newTheater.jsp" id="active_page">THEATERS</a>
                        <a href="contactus.jsp">CONTACTUS</a>
                        <a href="adminlogin.jsp">ADMIN</a>
                       </section>   
                       </div>
              </div>
           </header>                
</section>


<!--Map-->
<img src="img/newmap2.png" alt="workplace" class="center" usemap="#theator" >

<a href="#" class="icon1">
    <i class="material-icons" style="font-size:50px;color:red">place</i><!--negombo-->
</a>

<a href="#" class="icon2">
    <i class="material-icons" style="font-size:50px;color:red">place</i><!--kurunagala-->
</a>

<a href="#" class="icon3">
    <i class="material-icons" style="font-size:50px;color:red">place</i><!--kandy-->
</a>



<!--text-->
<div class="text">
    <h1> Screening at........ </h1><br>
  </div> 

  <div class="symbol">
    <h1> &diams; Negombo </h1>
    <h1> &diams; Kurunegala </h1>
    <h1> &diams; Kandy </h1>

  </div>
<br><br><br>


<!--Popup kandy-->

    <button type="submit" class="btn" onclick="openPopup()"></button>
    <div class="popup" id="popup">
       <img src="img/liberty.jpg"><br><br>
       <p>Address:No 166/2,Kulugammana,Kandy</p><br>
       <p>phone number: +9499223838</p><br>
       <p>E-mail: libertycinema@gmail.com</p><br>


   <button type="button" onclick="closePopup()">OK</button>

    </div>

 <script>
    let popup = document.getElementById("popup");

    function openPopup(){
        popup.classList.add("open-popup");
    }

    function closePopup(){
        popup.classList.remove("open-popup");
    }
</script>
<!--Popup kandy end-->

<!--Popup kurunegala-->
<button type="submit" class="btn2" onclick="openPopup()"></button>
    <div class="popup" id="popup">
       <img src="img/scope2.jpg"><br><br>
       <p>Address: No 122/4,Main Steet,Kurunegala</p><br>
       <p>phone number: +9499223348</p><br>
       <p>E-mail: scopecinema@gmail.com</p><br>


   <button type="button" onclick="closePopup()">OK</button>

    </div>
 </div>

 <script>
    let closepopup = document.getElementById("popup");

    function openPopup(){
        popup.classList.add("open-popup");
    }

    function closePopup(){
        popup.classList.remove("open-popup");
    }
</script>
<!--Popup kurunegala end-->

<!--Popup Negombo-->
<button type="submit" class="btn3" onclick="openPopup()"></button>
    <div class="popup" id="popup">
       <img src="img/savoym.jpg"><br><br>
       <p>Address: No 800/3,Negombo</p><br>
       <p>phone number: +9499224736</p><br>
       <p>E-mail: savoymetro@gmail.com</p><br>


   <button type="button" onclick="closePopup()">OK</button>

    </div>
 </div>

 <script>
    let openpopup = document.getElementById("popup");

    function openPopup(){
        popup.classList.add("open-popup");
    }

    function closePopup(){
        popup.classList.remove("open-popup");
    }
</script>
<!--Popup Negombo end-->


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

 </div>
 
</body>
</html>
    </body>
</html>
