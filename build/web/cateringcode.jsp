<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String cateringId= request.getParameter("cId");
    String cateringName= request.getParameter("cName");
    String cateringPrice= request.getParameter("cPrice");
    String cateringContact= request.getParameter("cCont");
    String cateringMail= request.getParameter("cMail");

    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into catering18 values(?,?,?,?,?)");
            
               st.setString(1,cateringId);
               st.setString(2,cateringName);
               st.setString(3,cateringPrice);
               st.setString(4,cateringContact);
               st.setString(5,cateringMail);
               
               st.executeUpdate();
               connection.close();
               response.sendRedirect("cateringpage.jsp");
               

%>        