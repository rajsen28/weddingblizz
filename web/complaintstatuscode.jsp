<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String complainId= request.getParameter("cId");
    String complainStatus= request.getParameter("oldCom");
    String newStatus= request.getParameter("newCom");
    String cnewStatus= request.getParameter("cnewCom");
    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("select * from complaint18 where complainid=? and complainStatus=?");
            
               st.setString(1,complainId);
               st.setString(2,complainStatus);
               ResultSet rs=st.executeQuery();
               if(rs.next())
               {
                 if(newStatus.equals(cnewStatus))
                 {
                  PreparedStatement st1= connection.prepareStatement("update complaint18 set complainStatus=? where complainId=?");
            
               st1.setString(1,complainId);
               st1.setString(2,complainStatus);
               st1.executeUpdate();
               response.sendRedirect("complain.jsp");
                 
}
               else{
               System.out.println("new Status and confirm new status doesnt match");
}
}
               else
               {
               System.out.println("null");
}
              
               

%>        