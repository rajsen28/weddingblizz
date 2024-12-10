<html> 
    <style>
        .tabletheme{
            background-image:url('image/PQR.jpg');
            background-size:100%;
            background-repeat:no-repeat;
            height:50px;
            font-family:arial;
            color:white;
            text-transform:uppercase;
            text-align:center;
        }
        .divtheme{
            background-image:url('image/xyz.gif');
            background-repeat:no-repeat;
            background-size:100%;
            height:100%;
        }
        
        .innerdivtheme{
            background-color:rgba(255,255,255,0.6);
            width:100%;
            height:100%;
        }
        a{
            text-decoration: none;
            color:black;
            font-weight:bold;
            font-family:arial;
        }
        
        .signuptheme{
            box-shadow: 5px 5px 10px black;
            background-color:rgba(255,255,255,0.7);
            width:50%;
            text-align: center;
            border-radius: 40px;
        }
        
        .textareatheme{
            height: 100px;
            width:250px;
            border-radius:20px;
            
        }
        .texttheme{
            width:250px;
            border-radius:20px;
            height: 24px;
        }
        .btntheme{
            width:100px;
            height:50px;
            border-radius:40px;
        }
        
    </style>
   <body>
       <%@include file="top.jsp" %>
       
               <div  class="divtheme">
            <div  class='innerdivtheme'>
                                   <br>                                   <br>

    <form action="signupcode.jsp">
        <table  align='center' border='0' cellspacing='10' cellpadding='5'  class='signuptheme'>
        
            <tr align='center'>
                <td colspan="2">
                    <h2>USER SINGUP FORM</h2>
                </td>
            </tr>
            
            
            <tr>
                <td>USER ID</td>
                
                <td><input type='text' name='uId' class='texttheme'></td>
            
            
            </tr>
            <tr>
                <td>USER NAME</td>
                <td><input type='text' name='uName' class='texttheme'></td>
            </tr>    
            
            
            
            <tr>
                <td>PASSWORD</td>
                <td><input type='password' name='uPass'  class='texttheme'></td>
            
            </tr>
            
             <tr>
                <td>CONTACT</td>
                <td><input type='number' name='uCont'  class='texttheme'></td>
            
            </tr>
            
             <tr>
                <td>MAIL ID</td>
                <td><input type='mail' name='uMail'  class='texttheme'></td>
            
            </tr>
            
             
            
             <tr>
                <td>ADDRESS</td>
                <td><textarea class='textareatheme'></textarea></td>
                
            
            </tr>
            
             
             <tr align='center'>
                 <td colspan='2'>
                     <input type='submit' value="signup" class='btntheme';
                     <input reset='submit' value="clear" class='btntheme';
                   
                 </td> 
            </tr>
    
            
        </table>

            </div>

        
        </div>
        
    </body>
</html>