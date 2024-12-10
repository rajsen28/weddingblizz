<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String orderId= request.getParameter("oId");
    String userId= request.getParameter("uId");
    String orderItem= request.getParameter("oItem");
    String orderDate= request.getParameter("oDate");

    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into order18 values(?,?)");
            
               st.setString(1,orderId);
               st.setString(2,userId);
               st.setString(3,orderItem);
               st.setString(4,orderDate);
               
               st.executeUpdate();
               connection.close();
               response.sendRedirect("orderpage.jsp");
               

%>        