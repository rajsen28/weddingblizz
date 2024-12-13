<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String firstName= request.getParameter("cLocat");
    String lastName= request.getParameter("cPin");

    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into customers values(?,?)");
            
               st.setString(1,firstName);
               st.setString(2,lastName);
               
               st.executeUpdate();
               connection.close();
               response.sendRedirect("citypage.jsp");
               

%>        