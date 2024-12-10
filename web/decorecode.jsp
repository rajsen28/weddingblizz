<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String decoreId= request.getParameter("dId");
    String decoreName= request.getParameter("dName");
    String decoreContact= request.getParameter("dCont");
    String decoreMail= request.getParameter("dMail");
    String decoreAddress= request.getParameter("");

    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into decore18 values(?,?,?,?,?)");
            
               st.setString(1,decoreId);
               st.setString(2,decoreName);
               st.setString(3,decoreContact);
               st.setString(4,decoreMail);
               st.setString(5,decoreAddress);
               
               st.executeUpdate();
               connection.close();
               response.sendRedirect("decorepage.jsp");
               

%>        