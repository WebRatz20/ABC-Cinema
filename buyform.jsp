<%-- 
    Document   : buyform
    Created on : Jan 11, 2023, 4:47:11 PM
    Author     : aruni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            *{
    list-style: none;
    margin: 0%;
    padding: 0%;
    box-sizing: border-box;
   
}
body{
    background-color: #1E1717;
    background-repeat: no-repeat;
    background-size: cover;
    display: flex;
    justify-content: center;
}
.backimg img{
    width: 100%;
    height: 100%;
    opacity: 20%;
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

div.box{
        width: 450px;
       
        position: absolute;
        margin-top: 120px;       
}
h2{
    margin: 16px;
    padding: 20px;
    text-align: center;
    border: 100px;
    color: rgb(255, 255, 255);
}
 
 h3{  
    margin: 18px;
    text-align: left;
    border: 3px;
    color: black;
}
div.container{
    background-color: rgb(98, 8, 8);
    width: 120%;
    font-size: 18px;
    border-radius: 10px;
    border: 1px soid #ffffff;
    box-shadow: 2px 2px 15px rgba(247, 202, 202, 0.3);
    color: rgb(255, 255, 255);
    height: 805px;
}
select{
    outline: 0;
    box-shadow: none;
    background-image: none;
    width: 300px;
    outline: none;
    margin-top: 10px;
}

#format{
    
    padding: 10px 20px;
    margin-bottom: 20px;
    box-sizing: border-box;
    background: #ffffff;
    border-radius: 6px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    cursor: pointer;
    outline: 0;
    text-align: left;

}



.container input[type="text"]{
    
    padding: 10px 65px;
    margin-bottom: 10px;
    box-sizing: border-box;
    background: #ffffff;
    border-radius: 6px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    cursor: pointer;
    text-align: left;
    outline: 0;
    box-shadow: none;
    background-image: none;
    width: 300px;
    outline: none;
 
}
input[type="date"]{
    position: relative;
    width: 300px;
    height: 20px;
    padding: 20px;
    border: #ffffff;
    box-sizing: border-box;
    border-radius: 6px;

}

.btn{
    position: absolute;
    font-family: "Roboto", sams-serif;
    font-size: 18px;
    font-weight: bold;
    background: #f11017;
    width: 160px;
    padding: 20px ;
    right: 500px;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
    color: #ffffff;
    border-radius: 30px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
    bottom: -130px;
}
.btn2{
    position: absolute;
    font-family: "Roboto", sams-serif;
    font-size: 18px;
    font-weight: bold;
    background: #f11017;
    width: 160px;
    padding: 20px ;
    right: 750px;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
    color: #ffffff;
    border-radius: 30px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
    bottom: -130px;
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

        </style>
    </head>
    <body>
       <div class="backimg" >
  <img src="img/PicsArt_01-08-01.57.05.jpg">
</div>
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

    <div class="box">
        <div class="container">
            <div class="form">
                <h2>BUY TICKECTS NOW</h2>
                <form name="buyform" method="post" action="paynow">
                <table>
                       <tr>
              <td>
              <h3>Name</h3>
             </td>
              <td>
                <div class="qr" id="id">
              <input type="text" name="name">
            </div>
              </td>
              </tr>
                 <tr>
              <td>
              <h3>Email</h3>
             </td>
              <td>
                <div class="qr" id="id">
              <input type="text" name="email">
            </div>
              </td>
              </tr>
             <tr>
                <td>
              <h3>Movie</h3>
                </td>
                <td>
                    <div class="select">
                        <select name="movies" id="format">
                         <option selected disabled>choose a movie</option>
                         <option >Avengers End Game</option>
                         <option >American Pie </option>
                         <option>Thor Love and Thunder</option>
                         <option >Interstellar</option>
                         <option >Morbius</option>
                        </select>
                      </div>
             </td>
              </tr>
    
             <tr>
             <td>
               <h3>Theater</h3>
              </td>
              <td>
             <div class="select">
               <select name="theators" id="format">
                <option selected disabled>choose a theater</option>
                <option >PVR Cinema</option>
                <option >Event Cinemas </option>
                <option >Savoy-3D</option>
               </select>
             </div>
             </td>
              </tr>
         
              <tr>
              <td>
              <h3>Time</h3>
              </td>
              <td>
             <div class="select">
               <select name="Time" id="format">
                <option selected disabled>choose your time</option>
                <option  >10.30 AM</option>
                <option >2.30 PM </option>
                <option >4.30 PM</option>
               </select>
             </div>
              </td>
              </tr>
    
              <tr>
              <td>
             <h3>Date</h3>
              </td>
              <td>
                <div class="dt" id="dat">
                    <input type="date" name="dte">
                </div>
    
             </td>
              </tr>
    
              <tr>
              <td>
              <h3>NIC Number</h3>
             </td>
              <td>
                <div class="qr" id="id">
              <input type="text" name="nic">
            </div>
              </td>
              </tr>
    
              
    
    
            
              
    
 
                     </table>
             
            </div>
                   </div>
                 </div>
              </div>
         </div>
      </div>
    </div>

 <input type="submit" value="submit" class="btn">
    

   <!-- <a href="sheetbokking.jsp" class="btn">Buy ticket</a>-->
    <a href="index.jsp" class="btn2">Cancel</a> 
</form>
<!--navi_bar-->
<script type="text/javascript">
  window.addEventListener("scroll",function(){
      var header = document.querySelector("header");
      header.classList.toggle("sticky",window.scrollY > 0)
  });

</script>
    </body>
</html>
