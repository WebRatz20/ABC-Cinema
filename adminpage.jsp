<%-- 
    Document   : adminpage
    Created on : Jan 12, 2023, 5:10:51 PM
    Author     : wishh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>adminpage</title>
        <style>
                    *{
                    margin: 0%;
                    padding: 0%;
                    box-sizing: border-box;
                }

                body{
                    background-color: #1E1717;
                    
                }
                .backimg img{
    width: 100%;
    height: 100%;
    opacity: 20%;
}
                .box{
        width: 450px;
       
        position: absolute;
        margin-top: 100px;
        margin-bottom: 0;
}
.container{
    background-color: rgb(98, 8, 8);
    width: 120%;
    font-size: 18px;
    border-radius: 10px;
    border: 1px solid #ffffff;
    box-shadow: 2px 2px 15px rgba(247, 202, 202, 0.3);
    color: rgb(255, 255, 255);
    height: 700px;
    position: absolute;
    top: -1100px;
    left: 500px
}
h2{
                    text-align: center;
                    padding: 20px;
                    font-family: sans-serif;
                }
 input{
                    margin-bottom: 30px;
                    margin-left: 30px;
                }
                h3{
                    margin-bottom: 40px;
                    margin-left: 10px;
                }                
input#name{
                    width: 300px;
                    border: 1px solid #ddd;
                    border-radius: 5px;
                    outline: 0;
                    padding: 7px;
                    background-color: #fff;
                    box-shadow: inset 1px 1px 5px rgba (0,0,0,0.3);

                }
                .textarea{
                    resize: none;
                    border-radius:5px;
                    padding: 1em;
                    width: 300px;
                    height: 100px;
                    position: absolute;
                    margin-bottom: 30px;
                    margin-left: 30px;
                    transition: all 0.2s;
                   top: 180px;
                    
                }
                input#image{
                    width: 300px;
                    border: 1px solid #ddd;
                    border-radius: 5px;
                    outline: 0;
                    padding: 7px;
                    background-color: #fff;
                    box-shadow: inset 1px 1px 5px rgba (0,0,0,0.3);
                    margin-top: 60px;

                }
                input#date{
                    width: 300px;
                    border: 1px solid #ddd;
                    border-radius: 5px;
                    outline: 0;
                    padding: 7px;
                    background-color: #fff;
                    box-shadow: inset 1px 1px 5px rgba (0,0,0,0.3);

                }
                input#movie{
                    width: 30px;
                    margin-left: 10px;
                    left: 50px;
                    cursor: pointer;
                }
                
               
.btn{
    position: absolute;
    font-family: "Roboto", sams-serif;
    font-size: 18px;
    font-weight: bold;
    background: #f11017;
    width: 160px;
    padding: 20px ;
    right: 100px;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
    color: #ffffff;
    border-radius: 30px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
    bottom: 15px;
}
.btn2{
    position: absolute;
    font-family: "Roboto", sams-serif;
    font-size: 18px;
    font-weight: bold;
    background: #f11017;
    width: 160px;
    padding: 20px ;
    right: 300px;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
    color: #ffffff;
    border-radius: 30px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
    bottom: 15px;
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
         <div class="box">
        <div class="container">
            <div class="form">
             <h2>UPDATE MOVIE DETAILS</h2>
                <table>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <div class="radio-group">
                        <lable class="radio">
                            <input type="radio" value="Up-comming" name="movie" id="movie">UP-COMMING
                        <span></span>
                        </lable>
                        <lable class="radio">
                            <input type="radio" value="Now-showing" name="movie" id="movie">NOW-SHOWING
                        <span></span>
                        </lable>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>Movie name</h3>
                    </td>
                    <td>
                       <input type="text" name="name" id="name" placeholder="movie name" >
                    </td>
                </tr>
                 <tr>
                    <td>
                        <h3>Movie description</h3>
                    </td>
                    <td>
                        <textarea class="textarea" name="description" id="description" placeholder="Enter description..."></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>Movie image</h3>
                    </td>
                    <td>
                        <input type="file" name="image" id="image">
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>From</h3>
                    </td>
                    <td>
                       <input type="date" name="date" id="date" placeholder="" >
                    </td>
                </tr>
                 <tr>
                    <td>
                        <h3>To</h3>
                    </td>
                    <td>
                       <input type="date" name="date" id="date" placeholder="" >
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <div class="radio-group-2">
                        <lable class="radio2">
                            <input type="radio" value="slot-1" name="slot" id="slot">SLOT 1
                        <span></span>
                        </lable>
                        <lable class="radio2">
                            <input type="radio" value="slot-2" name="slot" id="slot">SLOT 2
                        <span></span>
                        </lable>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <div class="radio-group2">
                        <lable class="radio2">
                            <input type="radio" value="slot-3" name="slot" id="slot">SLOT 3
                        <span></span>
                        </lable>
                        <lable class="radio2">
                            <input type="radio" value="slot-4" name="slot" id="slot">SLOT 4
                        <span></span>
                        </lable>
                        </div>
                    </td>
                </tr>
            
            <a href="#" class="btn">submit</a>
            <a href="index.jsp" class="btn2">Cancel</a> 
        </form>        
             </table>        
            </div>  
        </div>
        </div>
    </body>
</html>
