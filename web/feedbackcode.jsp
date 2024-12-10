<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String feedbackId= request.getParameter("fId");
    String feedbackUser= request.getParameter("fUser");
    String feedback= request.getParameter("fFeed");

    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into feedback18 values(?,?,?)");
            
               st.setString(1,feedbackId);
               st.setString(2,feedbackUser);
               st.setString(3,feedback);
               
               st.executeUpdate();
               connection.close();
               response.sendRedirect("feedbackpage.jsp");
               

%>        