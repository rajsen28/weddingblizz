<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String id= request.getParameter("uId");
    String pass= request.getParameter("oldpass");
    String newPass= request.getParameter("newPass");
    String cNewPass= request.getParameter("cnPass");
    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("select * from employee18 where id=? and pass=?");
            
               st.setString(1,id);
               st.setString(2,pass);
               ResultSet rs=st.executeQuery();
               if(rs.next())
               {
                 if(newPass.equals(cNewPass))
                 {
                  PreparedStatement st1= connection.prepareStatement("update employee18 set pass=? where id=?");
            
               st1.setString(1,id);
               st1.setString(2,pass);
               st1.executeUpdate();
               response.sendRedirect("signin.jsp");
                 
}
               else{
               System.out.println("new password and confirm new password doesnt match");
}
}
               else
               {
               System.out.println("invalid id/old password");
}
              
               

%>        