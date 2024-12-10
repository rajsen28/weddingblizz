<html>
    <style>
        .tabletheme{
/*            background-color:lightblue;*/
        background-image:url('image/PQR.jpg');
        background-size:100%;
            height: 50px;
            font-family:arial;
            text-transform: uppercase;
            text-align: center;
          
        }
        .divtheme{
            background-image:url('image/lmn.gif');
            background-repeat: no-repeat;
            background-size:100%;
           width:100%;
           height: 100%;
        }
        
        .innerdivtheme{
            background-color:rgba(255,255,255,0.5);
           width:100%;
           height: 100%;
        }
        a{
            text-decoration: none;
            color:black;
            font-weight: bold;
            font-family: arial;
        }
        .logintheme{
            box-shadow: 5px 5px  10px  black;
            background-color:rgba(255,255,255,0.4);
                width:30%;
                text-align: center;
                border-radius: 40px;
        }
        .texttheme{
            width:250px;
            border-radius: 20px;
            height: 24px;
        }
        .btntheme{
            width:100px;
            height: 50px;
            border-radius: 40px;
        }
    </style>
    <body>
        <%@include file="complaintop.jsp" %>

        <div  class="divtheme">
            <div  class='innerdivtheme'>
               <br>                  <br>
               
               <form action="complaincode.jsp"> 
        <table  align='center' border='0' cellspacing='10' cellpadding='5'  class='logintheme'>
        
            
            
            <tr>
                <td>COMPLAINT ID</td>
            </tr>
            
            
            <tr>
                <td><input type='number' name='cId'  class='texttheme'></td>
            </tr>
            
            
            <tr>
                <td>COMPLAINT</td>
            </tr>
            
            
            <tr>
                <td><input type='text' name='cName'  class='texttheme'></td>
            </tr>
            
            
            <tr align='center'>
                <td>
                    <input type='submit' value="SAVE" class='btntheme'>
                    
                </td>
            </tr>
            
            
        </table>
          </form>
            </div>

        
        </div>
        
    </body>
    
</html>