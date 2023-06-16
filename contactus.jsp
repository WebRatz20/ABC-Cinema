<%-- 
    Document   : contactus
    Created on : Jan 11, 2023, 4:42:37 PM
    Author     : aruni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>contactuspage</title>
        <style>
            *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Courier New', Courier, monospace;
   
}
body{
    background: #1E1717;
    background-size: 100%;
    background-repeat: no-repeat;

}
body:before{
    content: "";
    position: fixed;
    top: 0;
    bottom: 0;
    width: 100%;
    z-index: -1;
    background: #1E1717;

}
a{
    text-decoration: none;
}
.main{
    width: 100%;
    height: 70vh;
    display: flex;
    justify-content: center;
    align-items: center;
    
    }
    .title{
        font-size: 65px;
        text-align: center;
        text-transform: capitalize;
        color: #ffffff;
        margin: 70px;
    }
    .title span{
        font-style: italic;
        font-size: 35px;
    }
    .title::after{
        content: "";
        position: absolute;
        width: 20%;
        height: 2px;
        
    }
.profile-card{
     position: relative;
     width: 300px;
     height: 300px;
     background: #361414;
     padding: 40px;
     border-radius: 50%;
     box-shadow: 0 0 30px #F10000;
     transition: .6s;
    margin: 90px;

    

 } 
 .profile-card:hover{
     border-radius: 10px;
     height: 350px;
 }
 .profile-card .img{
     position: relative;
     width: 100%;
     height: 100%;
     transition: .4s;
     z-index: 90;
    
 } 
 .profile-card.profile-card:hover .img{
transform: translateY(-60px);
 } 
 .img img{
     width: 100%;
     border-radius: 50%;
     box-shadow: 0 0 22px rgba(63, 63, 63, 0.4);
     transition: .6s;
 }
 .profile-card:hover img{
     border-radius: 10px;
 }
 .caption{
     text-align: center;
     transform: translateY(-80px);
     opacity: 0;
     transition: .6s;
 }
 .profile-card:hover .caption{
     opacity: 1;
 }
 .caption h3{
     font-size: 20px;
     font-style: italic;
     font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif
 }
 .caption p{
font-size: 13px;
color: #ffffff;
margin: 0;
font-family:'Courier New', Courier, monospace
 }

 /*button*/
.btn-back{
       bottom: 5%;
       left: 0;
        position: fixed;
        display: inline-flex;
        height: 60px;
        width: 200px;
        border-radius: 15px;
        margin: 600px 30px;
       overflow: hidden;
        
        
    }
    .btn-back .inner{
        position: absolute;
        width: 300%;
        height: 100%;
        left: -100%;
        background: -webkit-linear-gradient(right, #F10000,#ffe0e0,#F10000,#ffe0e2 );
        z-index: -1;
        transition: all .4s;
      
    }
    .btn-back button{
        height: 100%;
        width: 100%; 
        border: #4f3636;
        outline:36454f ;
        background: none;
        color: white;
        font-family: 'Courier New', Courier, monospace;
        font-size: 17px;
        letter-spacing: 1px;
        text-transform: uppercase;
        cursor: pointer;
       
    }
    .btn-back:hover{
        transform: scale(1.3);
    }
    .btn-back:hover .inner{
    left: 0;
    
    
}
.caption h3{
    color: #ffffff;
}


        </style>
    </head>
    <body>
        <h1 class="title"></span>Meet The Developers</h1>
        <div class="main">
            <div class="profile-card">
                <div class="img">
                    <img src="cg team/wish.jpg">
                </div>
                <div class="caption">
                    <h3>Wishmi Hiranya</h3>
                    <p> email:wishhiranyaco@gmail.com </p>
                    <p> Telephone:0760593828</p>
                </div>
            </div>
            <div class="profile-card">
                <div class="img">
                    <img src="cg team/hash.jpg">
                </div>
                <div class="caption">
                    <h3>Hashini Herath</h3>
                    <p> email:hashiniherath5@icloud.com  </p>
                    <p> Telephone:0762510062</p>
                </div>
            </div>
            <div class="profile-card">
                <div class="img">
                    <img src="cg team/aruni.jpg">
                </div>
                <div class="caption">
                    <h3>Aruni Nethmini</h3>
                    <p> email:nethminiaruni@gmail.com  </p>
                    <p> Telephone:0774071013</p>
                </div>
            </div>
            </div>
            <div class="main">
            <div class="profile-card">
                <div class="img">
                    <img src="cg team/navindu.jpg">
                </div>
                <div class="caption">
                    <h3>Navindu Lakshan</h3>
                    <p>email:<br>navinindulakshan99@gmail.com</p><br>
                    <p> Telephone:0766715356</p>
                </div>
            </div>
            <div class="profile-card">
                <div class="img">
                    <img src="cg team/dumindu.jpg">
                </div>
                <div class="caption">
                    <h3>Dumindu Athukorala</h3>
                    <p> email:<br>duminduathukorala123@gmail.com </p><br>
                    <p> Telephone:0761064671</p>
                </div>
            </div>
            <div class="profile-card">
                <div class="img">
                    <img src="cg team/pasindu.jpg">
                </div>
                <div class="caption">
                    <h3>Pasindu Rathnathilaka</h3>
                    <p> email:<br>pasindurathnathilake19@gmail.com  </p><br>
                    <p> Telephone:0702027128</p>
                </div>
                </div>
            </div>
        </div>
        <div class="btn-back">
            <div class="inner"></div>
            <button><a href="index.jsp">BACK</a></button>
            
        </div>
    </body>
</html>
    </body>
</html>
