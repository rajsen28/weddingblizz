<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.Connection" %> 
<%@page import="java.sql.PreparedStatement" %> 
<%@page import="java.sql.ResultSet" %> 


<%
 String id=request.getParameter("oId");
    String pass=request.getParameter("oPass");
    String post=request.getParameter("post");
        
        if(post.equalsIgnoreCase("admin"))
        {
        

    Class.forName("com.mysql.jdbc.Driver");
    Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
    PreparedStatement st= connection.prepareStatement("select * from  employee18 where  id=? and pass=?");
    st.setString(1,id);
    st.setString(2,pass);
    ResultSet rs=st.executeQuery();
    
   response.sendRedirect("ownerpage.jsp");
        }
        if(post.equalsIgnoreCase("manager"))
        {
          Class.forName("com.mysql.jdbc.Driver");
    Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
    PreparedStatement st =connection.prepareStatement("select * from  employee18 where  id=? and pass=?");
    st.setString(1,id);
    st.setString(2,pass);
    ResultSet rs=st.executeQuery();
   response.sendRedirect("managerpage.jsp");
        }
        if(post.equalsIgnoreCase("operator"))
        {
          Class.forName("com.mysql.jdbc.Driver");
    Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
    PreparedStatement st= connection.prepareStatement("select * from  employee18 where  id=? and pass=?");
    st.setString(1,id);
    st.setString(2,pass);
    ResultSet rs=st.executeQuery();
   response.sendRedirect("operatorpage.jsp");
        }
    
    
%>



