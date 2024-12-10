<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String gardenId= request.getParameter("gId");
    String gardenName= request.getParameter("gName");
    String gardenAddress= request.getParameter("gAddr");
    String gardenPrice= request.getParameter("gPrice");
    String gardenContact= request.getParameter("gCont");

    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into gardens18 values(?,?,?,?,?)");
            
               st.setString(1,gardenId);
               st.setString(2,gardenName);
               st.setString(2,gardenAddress);
               st.setString(2,gardenPrice);
               st.setString(2,gardenContact);
               
               st.executeUpdate();
               connection.close();
               response.sendRedirect("gardenpage.jsp");
               

%>        