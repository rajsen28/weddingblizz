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
        
        .traveltheme{
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
       <%@include file="traveltop.jsp" %>
       
               <div  class="divtheme">
            <div  class='innerdivtheme'>
                                   <br>                                   <br>

    <form action="travelcode.jsp"> 
        <table  align='center' border='0' cellspacing='10' cellpadding='5'  class='traveltheme'>
        
            <tr align='center'>
                <td colspan="2">
                    <h2>TRAVEL FORM</h2>
                </td>
            </tr>
            
            
            <tr>
                <td>TRAVEL ID</td>
                
                <td><input type='text' name='tId' class='texttheme'></td>
            
            
            </tr>
            
             <tr>
                <td>NAME</td>
                
                <td><input type='text' name='tName' class='texttheme'></td>
            
            
            </tr>
            
            <tr>
                <td>CONTACT</td>
                <td><input type='number' name='tCont' class='texttheme'></td>
            </tr>    
            
             <tr>
                <td>MAIL ID</td>
                <td><input type='mail' name='tMail' class='texttheme'></td>
            </tr>  
            
            
            <tr>
                <td>ADDRESS</td>
                <td><textarea class='textareatheme'></textarea></td>
                
            
            </tr>
            
              <tr align='center'>
                <td colspan="2"><input type='submit' value="SUBMIT" class='btntheme'>
           
                </td>
            </tr>
    
        </table>
        </form>

            </div>

        
        </div>
        
    </body>
</html>