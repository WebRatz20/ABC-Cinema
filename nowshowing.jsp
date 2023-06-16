<%-- 
    Document   : nowshowing
    Created on : Jan 11, 2023, 3:56:20 PM
    Author     : hash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src=" https://kit.fontawesome.com/699f8f7756.js"crossorigin="anonymous"></script>> 
        <title>NowshowingPage</title>
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

             /*poster*/
             .poster{
                position: relative;
                width: 100%;
                min-height: 100vh;
                display: flex;
                justify-content: center;
                flex-direction: column;
                background: #1E1717;
            }
            .poster .content{
                z-index: 888;
                color: rgb(255, 255, 255);
                width: 60%;
                margin-top: 250px;
                display: none;
            }
            .img1 img{
                z-index: 0000;
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 55%;
                object-fit: cover;
                opacity: 0.5;
            }
            
            /*now showing*/
            .name{
                margin-left: 7%;
                margin-bottom: 7%;
            }
            .name h2{
                color: #fff;
                letter-spacing: 0.2cm;
                position: absolute;
               bottom: 150px;
               left: 100px;
            }
            .name h2:after{
                content: '';
                width: 1300px;
                height: 1px;
                margin-left: 30%;
                background: #D2050C;
                position: absolute;
                bottom: -80px;
                transform: translateX(-50%);
                left: 550px;
            }
            /*movies*/
            .cols{
                padding: 20px;
                position: relative;
                bottom: 100px;
            }
            .mov{
                float: left;
                width: 15%;
                height: 350px;
                padding: 1px;
                margin-top: 45px;
                margin-left: 15%;
            }
            .poster2 img{
                height: 300px;
                padding: 0px;
                display: block;
                margin-left: auto;
                margin-right: auto;
            }
            .title{
                text-align: center;
                margin-left: auto;
                margin-top: 22px;
            }
            h1{
                color: #fff;
            }
            .det{
                float: left;
                width: 55%;
                height: 350px;
                padding: 1px;
                background-color: #1E1717;
                margin-top: 45px;
                margin-right: 15%;
            }
            
            /*description*/
            .desc{
                background-color: #1E1717;
                color: #fff;
                width: 600px;
                height: 170px;
                border: 1px solid white;
                padding: 40px;
                margin: 30px;
                border-radius: 20px;
                margin-left: auto;
                margin-right: auto;
                overflow: auto;
            }
            .t_period{
                background-color: #F10000;
                width: 550px;
                height: 48px;
                margin: auto;
                border-radius: 40px;
                opacity: 0.8;
            }
            .t{
                display: flex;
                justify-content: center;
            }
            h3{
                text-align: center;
                color: #fff;
                display: flex;
                padding: 13px;
            }
            .date{
                color: #fff;
                border: 2px solid white;
                background-color: #D2050C;
                margin-left: auto;
                text-align: center;
                padding: 6px;
                margin-top: -7px;
                    
            }
            .det a{
                color: white;
                text-decoration: none;
            }

            /*buy tickets*/
            .det button{
                width: 130px;
                height: 40px;
                margin-top: 37px;
                margin-bottom: 20px;
                margin-right: 40px;
                background-color: #D2050C;
                border: 1px solid black;
                padding: 5px;
                border-radius: 30px;
                float: right;
            }
            .det button:hover{
                background-color: black;
                color: black;
                transition: 0.5s;
                cursor: pointer;
                transform: scale(1.2);
                box-shadow: 2px 2px 2px black;
            }
            .row:after{
                content: "";
                display: table;
                clear:both;
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

    </style>
    </head>
    <body>
        <!--pagewrapper-->
<div class="page-wrapper">

    <header>
        <!--logo--> 
        
        <div class="logo"><span>ABC</span><br>CINEMA</div>
           
        <div class="menu-btn"></div>             
               <div class="navigation">              
                   <section class="banner">
                       <div class="navigation-items">                    
                         <a href="index.jsp">HOME</a>
                        <a href="#" id="active_page">MOVIES</a>
                        <div class="dropdown">
                            <button class="dropbtn">
                                <i class="fa fa-caret-down"></i>
                            </button>
                        <div class="dropdownmenu">
                        <a href="nowshowing.jsp" id="active_page">NOW SHOWING</a>
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

            
            <!--poster-->
            <section class="poster">
                <div class="img1">
                    <img src="img\p.jpg">
                </div>
            </section>
            
            <div class="now">
                <div class="name"><h2>NOW SHOWING</h2></div>
            </div>
            
            <!--movies-->
            <!--mov 1-->
            <div class="cols">
                <div class="row">
                  <div class="mov">
                        <div class="box">
                          <div class="poster2"> <img src="img\m1.jpg"> </div>
                          <div class="title"><h1>MALEFICENT</h1></div>
                        </div>
                  </div>
                   <div class="det">
                     <div class="desc">Maleficent is a kind-hearted fairy, who is deceived 
                        by the love of her life, Stefan. Soon, she places a curse on his daughter, Aurora, in order to exact revenge.</div>
                     <div class="t_period"><div class="t"><h3> FROM &nbsp;
                             <div class="date">JAN 2</div> &nbsp; TO &nbsp;
                             <div class="date">FEB 27</div></h3></div></div>
                     <button><a href="buyform.jsp">BUY TICKETS</a></button>
                   </div>
                </div>
                </div>

                <!--mov 2-->
            <div class="cols">
                <div class="row">
                  <div class="mov">
                        <div class="box">
                          <div class="poster2"> <img src="img\m2.jpg"> </div>
                          <div class="title"><h1>AVENGERS</h1></div>
                        </div>
                  </div>
                   <div class="det">
                     <div class="desc">Avengers: Secret Wars is an upcoming superhero film, based on the Marvel Comics superhero team of
                         the same name. The film is a sequel to The Avengers, Avengers: Age of Ultron, Avengers: Infinity War, Avengers:
                          Endgame and Avengers: The Kang Dynasty.</div>
                      <div class="t_period"><div class="t"><h3> FROM &nbsp;
                             <div class="date">JAN 2</div> &nbsp; TO &nbsp;
                             <div class="date">FEB 27</div></h3></div></div>
                     <button><a href="buyform.jsp">BUY TICKETS</a></button>
                   </div>
                </div>
                </div>

                <!--mov 3-->
            <div class="cols">
                <div class="row">
                  <div class="mov">
                        <div class="box">
                          <div class="poster2"> <img src="img\m7.jpg"> </div>
                          <div class="title"><h1>INCEPTION</h1></div>
                        </div>
                  </div>
                   <div class="det">
                     <div class="desc">Cobb steals information from his targets by entering their dreams. Saito offers to wipe clean 
                        Cobb's criminal history as payment for performing an inception on his sick competitor's son.

                     </div>
                      <div class="t_period"><div class="t"><h3> FROM &nbsp;
                             <div class="date">JAN 2</div> &nbsp; TO &nbsp;
                             <div class="date">FEB 27</div></h3></div></div>
                     <button><a href="buyform.jsp">BUY TICKETS</a></button>
                   </div>
                </div>
                </div>

                <!--mov 4-->
            <div class="cols">
                <div class="row">
                  <div class="mov">
                        <div class="box">
                          <div class="poster2"> <img src="img\morb.jpg"> </div>
                          <div class="title"><h1>MORBIUS</h1></div>
                        </div>
                  </div>
                   <div class="det">
                     <div class="desc">Dangerously ill with a rare blood disorder, and determined to save others suffering his same fate, Dr. Morbius 
                        attempts a desperate gamble. What at first appears to be a radical success soon reveals itself to be a remedy potentially worse 
                        than the disease.</div>
                     <div class="t_period"><div class="t"><h3> FROM &nbsp;
                             <div class="date">JAN 2</div> &nbsp; TO &nbsp;
                             <div class="date">FEB 27</div></h3></div></div>
                     <button><a href="buyform.jsp">BUY TICKETS</a></button>
                   </div>
                </div>
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

<!--navi_bar-->
<script type="text/javascript">
    window.addEventListener("scroll",function(){
        var header = document.querySelector("header");
        header.classList.toggle("sticky",window.scrollY > 0)
    });

</script>
    </body>
</html>
