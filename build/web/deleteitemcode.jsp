<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<% 
   String decoreId=request.getParameter("dId");
   String decoreName=request.getParameter("dName");
   
  
   Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("select * from decore18 where decoreId=? and decoreName=?");
            
               st.setString(1,decoreId);
               st.setString(2,decoreName);
      
               ResultSet rs= st.executeQuery();
               if(rs.next())
               
               {
               PreparedStatement st1= connection.prepareStatement("select * from decore18 where decoreId=? and decoreName=?");
            
               st1.setString(1,decoreId);
               st1.setString(2,decoreName);
      
               st1.executeUpdate();
               
               response.sendRedirect("home.jsp");
}
               else
               {
               out.println("invalid id/password");
}
               

%>
  
