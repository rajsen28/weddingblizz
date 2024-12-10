<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String userId= request.getParameter("uId");
    String userName= request.getParameter("uName");
    String userPass= request.getParameter("uPass");
    String userContact= request.getParameter("uCont");
    String userMail= request.getParameter("uMail");
    String userAddress= request.getParameter("uAddr");
    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into user18 values(?,?,?,?,?,?)");
            
               st.setString(1,userId);
               st.setString(2,userName);
               st.setString(3,userPass);
               st.setString(4,userContact);
               st.setString(5,userMail);
               st.setString(6,userAddress);
               st.executeUpdate();
               connection.close();
               response.sendRedirect("signin.jsp");
               

%>        