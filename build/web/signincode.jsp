<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<% 
   String userId=request.getParameter("uId");
   String userPass=request.getParameter("uPass");
   
  
   Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("select * from user18 where userId=? and userPass=?");
            
               st.setString(1,userId);
               st.setString(2,userPass);
      
               ResultSet rs= st.executeQuery();
               if(rs.next())
               {
               response.sendRedirect("customerpage.jsp");
}
               else
               {
               out.println("invalid id/password");
}
               

%>
  
