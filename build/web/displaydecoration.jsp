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
            background-image:url('image/ABC.jpg');
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
        
        .citytheme{
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
       <%@include file="userviewitemtop.jsp" %>
       <%@page import= "java.sql.DriverManager"%>
       <%@page import= "java.sql.Connection"%>
       <%@page import= "java.sql.PreparedStatement"%>
       <%@page import= "java.sql.ResultSet,java.util.ArrayList"%>
       
              
<%  
   Class.forName("com.mysql.jdbc.Driver");
   Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
   
    PreparedStatement st= connection.prepareStatement("select * from decore18");
            
              ResultSet rs= st.executeQuery();
              ArrayList list1= new ArrayList();
              ArrayList list2= new ArrayList();
              ArrayList list3= new ArrayList();
              ArrayList list4= new ArrayList();
              ArrayList list5= new ArrayList();
    
              while(rs.next())
              {
              list1.add(rs.getString(1));
              list2.add(rs.getString(2));
              list3.add(rs.getString(3));
              list4.add(rs.getString(4));
              list5.add(rs.getString(5));
              }
              
              
%>

   <div class="divtheme">
       <br><br>
       
       <table width="80%" align="center">
           <tr align="center"bgcolor="white">
               <td></td>
               <td>decoreId</td>
               <td>decoreName</td>
               <td>decoreContact</td>
               <td>decoreMail</td>
               <td>decoreAddress</td>
                
                <%
                    for(int i=0; i<list1.size(); i++)
                    {
                %>
                <tr align="center">
                    <td><%=list1.get(i)%></td>
                    <td><%=list2.get(i)%></td>
                    <td><%=list3.get(i)%></td>
                    <td><%=list4.get(i)%></td>
                    <td><%=list5.get(i)%></td>
                    
                </tr>
                <%}%>
       </table>
   </div>
</html>