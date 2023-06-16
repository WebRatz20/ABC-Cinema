<%-- 
    Document   : adminlogin
    Created on : Jan 12, 2023, 3:19:58 PM
    Author     : wishh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>adminloginage</title>
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
                .background img{
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    opacity: 10%;
                    object-fit: cover;
                }  
                .container{
                    position: relative;
                    width: 380px;
                    height: 420px;
                    background-color: #361414;
                    border-radius: 8px;
                    left: 37%;
                    bottom: -170px;
                    overflow: hidden;
                }
                .container::before{
                    content: '';
                    position: absolute;
                    top: -50%;
                    left: -50%;
                    width: 380px;
                    height: 420px;
                    background: linear-gradient(0deg,transparent,#F10000,#F10000);
                    transform-origin: bottom right;
                    animation: animate 6s linear infinite;

                }
                .container::after{
                    content: '';
                    position: absolute;
                    top: -50%;
                    left: -50%;
                    width: 380px;
                    height: 420px;
                    background: linear-gradient(0deg,transparent,#F10000,#F10000);
                    transform-origin: bottom right;
                    animation: animate 6s linear infinite;
                    animation-delay: -3s;

                }
                @keyframes animate
                {
                    0%
                    {
                        transform: rotate(0deg);
                    }
                    100%{
                        transform: rotate(360deg);
                    }
                }
                .form{
                    position: absolute;
                    inset: 2px;
                    border-radius: 8px;
                    background: #361414;
                    z-index: 10;
                    padding: 50px 40px;
                    display: flex;
                    flex-direction: column;
                }
                .form h2{
                    color: #F10000;
                    font-weight: 500;
                    text-align: center;
                    letter-spacing: 0.1em;
                }
                .inputarea{
                    position: relative;
                    width: 300px;
                    margin-top: 35px;
                }
                .inputarea input{
                    position: relative;
                    width: 100%;
                    padding: 20px 10px 10px;
                    background: transparent;
                    border: none;
                    color: #fff;
                    font-size: 1em;
                    letter-spacing: 0.05em;
                    z-index: 10;
                }
                .inputarea span{
                    position: absolute;
                    left: 0;
                    padding: 20px 10px 10px;
                    font-size: 1.2em;
                    color: #fff;
                    pointer-events: none;
                    letter-spacing: 0.05em;
                    transition: 0.5s;
                }
                .inputarea input:valid ~ span,
                .inputarea input:focus ~ span{
                    color: #361414;
                    transform: translateX(-10px) translateY(-34px);
                    font-size: 1em;
                }
                h5{
                    color: bisque;
                    cursor: pointer;
                    margin-top: 50px;
                    text-align: center;
                }
                h5:hover{
                    color: bisque;
                    cursor: pointer;
                    margin-top: 50px;
                    text-align: center;
                }
                .inputarea i{
                    position: absolute;
                    left: 0;
                    bottom: 0;
                    width: 100%;
                    height: 2px;
                    background: #F10000;
                    border-radius: 4px;
                    transition: 0.5s;
                    pointer-events: none;
                    z-index: 9;
                }
                .inputarea input:valid ~ i,
                .inputarea input:focus ~ i{
                    height: 44px;
                }
                input[type="submit"]{
                    border: none;
                    outline: none;
                    color: #fff;
                    background: #F10000;
                    font-size: 1.2em;
                    padding: 11px 25px;
                    border-radius: 4px;
                    margin-top: 40px;
                    font-weight: 600;
                    cursor: pointer;
                }
                input[type="submit"]:active{
                    opacity: 0.8;
                }
    </style>
    </head>
    <body>
        <div class="background"><img src="img/p.jpg">
    <div class="container">
        <form action="adminloginservlet" method="post">
        <div class="form">
            <h2>Sign In</h2>
            <div class="inputarea">
                <input type="text" id="uname" name="txtusername" required="required">
                <span>Username</span>
           </div>
            <div class="inputarea">
                <input type="password" id="pass" name="txtpassword" required="required">
                <span>password</span>    
            </div>
            
            <input type="submit" value="log in" action="adminpage.jsp">
            <h5><a href="index.jsp">back to home</a></h5>
        </form>
    </div>        
    </div>
    </div>
    </body>
</html>
