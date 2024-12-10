<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String photoId= request.getParameter("pId");
    String name= request.getParameter("pName");
    String contact= request.getParameter("pCont");
    String mail= request.getParameter("pMail");
    String address= request.getParameter("");

    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into photo18 values(?,?,?,?,?)");
            
               st.setString(1,photoId);
               st.setString(2,name);
               st.setString(3,contact);
               st.setString(4,mail);
               st.setString(5,address);
               
               st.executeUpdate();
               connection.close();
               response.sendRedirect("photographypage.jsp");
               

%>        