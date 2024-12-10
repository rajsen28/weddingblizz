<html>
    <style>
        .tabletheme{
/*            background-color:lightblue;*/
        background-image:url('image/ABC.jpg');
        background-size:100%;
            height: 50px;
            font-family:arial;
            text-transform: uppercase;
            text-align: center;
        }
        .divtheme{
            background-image:url('image/ABC.jpg');
            background-repeat: no-repeat;
            background-size:100%;
           width:100%;
           height: 100%;
        }
        
        .innerdivthemecust{
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
            background-color:rgba(255,255,255,0.7);
                width:30%;
                text-align: center;
                
        }
    </style>
    <body>
        

        <div  class="divtheme">
            <div class="innerdivtheme" >
            <form action="deleteitemcode.jsp">
            <table  align='center' border='0' cellspacing='10' cellpadding='5'  class='logintheme'>
              <tr align='center'>
                  <td>
                      DELETE ITEM SECTION
                  </td>
              </tr>
                
               <tr>
                <td>ITEM ID</td>
            </tr>
            
            
            <tr>
                <td><input type='text' name='dId'  class='texttheme'></td>
            </tr>
            
            
            <tr>
                <td>ITEM NAME</td>
            </tr>
            
            
            <tr>
                <td><input type='text' name='dName'  class='texttheme'></td>
            </tr>
            
            
            <tr align='center'>
                <td>
                    <input type='submit' value="delete" class='btntheme'>
                    
                </td>
            </tr>
            </table>
                </form>
            </div>
            </div>
        
        
    </body>
</html>