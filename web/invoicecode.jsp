<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String invoiceId= request.getParameter("dinId");
    String invoiceDate= request.getParameter("inDate");
    String invoiceUser= request.getParameter("inUser");
    String invoiceStatus= request.getParameter("inStatus");
    String invoiceAmount= request.getParameter("inAmou");

    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into invoice18 values(?,?,?,?,?)");
            
               st.setString(1,invoiceId);
               st.setString(2,invoiceDate);
               st.setString(3,invoiceUser);
               st.setString(4,invoiceStatus);
               st.setString(5,invoiceAmount);
               
               st.executeUpdate();
               connection.close();
               response.sendRedirect("invoicepage.jsp");
               

%>        