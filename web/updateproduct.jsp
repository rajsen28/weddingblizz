<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>




<%
    String photoId= request.getParameter("pId");
    String name= request.getParameter("pName");
    String contact= request.getParameter("pCont");
    String mail= request.getParameter("pMail");
    String address= request.getParameter("cMail");
   
    Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            PreparedStatement st= connection.prepareStatement("select * from photo18 where photoId=?");
            st.setString(1,photoId);
            
            ResultSet rs= st.executeQuery();
            if(rs.next())
            {
            PreparedStatement st1= connection.prepareStatement("update photo18 set name=? where photoId=?");
            st1.setString(1,photoId);
            st1.setString(2,name);
            st1.setString(3,contact);
            st1.setString(4,mail);
            st1.setString(5,address);
            connection.close();
            response.sendRedirect("home.jsp");
            
}


%>