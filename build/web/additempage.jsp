<html> 
    <style>
        
        
        .tabletheme{
            background-image:url('image/PQR.jpg');
            background-size:100%;
            background-repeat:no-repeat;
            height:50px;
            font-family:arial;
            text-transform:uppercase;
            text-align:center;
            
            
        }
        .divtheme{
            background-image:url('image/DEF.jpg');
            background-repeat:no-repeat;
            background-size:100%;
            height:100%;
        }
        
        .innerdivtheme{
            background-color:rgba(255,255,255,0.5);
            width:100%;
            height:100%;
        }
        
        a{
            text-decoration: none;
            color:white;
            font-weight:bold;
            font-family:arial;
        }
        
        .logintheme{
            box-shadow: 5px 5px 10px black;
            background-color:rgba(255,255,255,0.7);
            width:30%;
            text-align: center;
        }
        

     </style>
     <body>
         <%@include file="additemtop.jsp"%>
         
         <div class="divtheme">
             <table  align='center' border='0' cellspacing='10' cellpadding='5'  class='citytheme'>
        
            <tr align='center'>
                <td colspan="2">
                    <h2>ENTER NEW ITEM</h2>
                </td>
            </tr>
            
             <tr align='center'>
                <td colspan="2">
                    <h2>ENTER NEW ITEM ID</h2>
                </td>
            </tr>
       
            </table>
         </div>
     </body>
</html>

                     