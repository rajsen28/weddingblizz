<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.Connection" %> 
<%@page import="java.sql.PreparedStatement" %> 
<%@page import="java.sql.ResultSet" %> 

<%
    int RESULT=0;
    String button1=request.getParameter("btn1");
    String button2=request.getParameter("btn2");
    
    if(button1!=null  && button1.equalsIgnoreCase("signin_1"))
    {
    String userId=request.getParameter("uId");
    String userPass=request.getParameter("pwd");
    
     
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection=
DriverManager.getConnection(
"jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st=
            connection.prepareStatement(
"select * from  user18 where  userId=? and userPass=?");
    st.setString(1,userId);
    st.setString(2,userPass);
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
        session.setAttribute("CALL",userId);
   response.sendRedirect("customerpage.jsp");
    }
    else
    {
//        out.println("invalid id/password");
        RESULT=1;
    }
    }
    if(button2!=null  && button2.equalsIgnoreCase("signup"))
    {
        response.sendRedirect("signup.jsp");
    }
%>

<html>
    <style>
        .tabletheme{
/*            background-color:lightblue;*/
        background-image:url('images/back1.jpg');
        background-size:100%;
            height: 50px;
            font-family:arial;
            text-transform: uppercase;
            text-align: center;
        }
        .divtheme{
            background-image:url('images/back.gif');
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
            background-color:rgba(255,255,255,0.7);
                width:30%;
                text-align: center;
                border-radius: 40px;
        }
        .texttheme{
            width:250px;
            border-radius: 20px;
            height: 24px;
        }
        .btnheme{
            width:100px;
            height: 50px;
            border-radius: 40px;
        }
    </style>
    <body>
        <%@include file="top.jsp" %>

        <div  class="divtheme">
            <div  class='innerdivtheme'>
                
                <form action="">
        <table  align='center' border='0' cellspacing='10' cellpadding='5'  class='logintheme'>
        
            <tr>
                <td colspan="2">
                    <%
                    if(RESULT==1)
                    {
                    %>
                    <font color="red">invalid id/password</font>
                    <%}%>
                </td>
            </tr>
            <tr align='center'>
                <td>
                    <img src='image/wedd.png'>
                </td>
            </tr>
            
            
            <tr>
                <td>USER ID</td>
            </tr>
            
            
            <tr>
                <td><input type='text' name='uId'  class='texttheme'></td>
            </tr>
            
            
            <tr>
                <td>PASSWOD</td>
            </tr>
            
            
            <tr>
                <td><input type='password' name='pwd'  class='texttheme'></td>
            </tr>
            
            
            <tr align='center'>
                <td>
                    <input type='submit' value="signin" class='btnheme'  name="btn1">
                    <input type='submit' value="signup" class='btnheme'  name="btn2">
                </td>
            </tr>
            
            
        </table>
</form>
            </div>

        
        </div>
        
    </body>
</html>