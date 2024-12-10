<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String complainId= request.getParameter("cId");
    String complain= request.getParameter("cName");

    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into complaint18 values(?,?)");
            
               st.setString(1,complainId);
               st.setString(2,complain);
               
               st.executeUpdate();
               connection.close();
               response.sendRedirect("complainpage.jsp");
               

%>        