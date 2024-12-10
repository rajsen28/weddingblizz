<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String location= request.getParameter("cLocat");
    String cityPincode= request.getParameter("cPin");

    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into city18 values(?,?)");
            
               st.setString(1,location);
               st.setString(2,cityPincode);
               
               st.executeUpdate();
               connection.close();
               response.sendRedirect("citypage.jsp");
               

%>        