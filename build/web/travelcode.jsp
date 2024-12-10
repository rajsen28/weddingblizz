<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String travelId= request.getParameter("tId");
    String name= request.getParameter("tName");
    String contact= request.getParameter("tCont");
    String mail= request.getParameter("tMail");
    String address= request.getParameter("");

    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into travel18 values(?,?,?,?,?)");
            
               st.setString(1,travelId);
               st.setString(2,name);
               st.setString(3,contact);
               st.setString(4,mail);
               st.setString(5,address);
               
               st.executeUpdate();
               connection.close();
               response.sendRedirect("travelpage.jsp");
               

%>        