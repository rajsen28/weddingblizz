<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>




<%
    String cateringId= request.getParameter("cId");
    String cateringName= request.getParameter("cName");
    String cateringPrice= request.getParameter("cPrice");
    String cateringContact= request.getParameter("cCont");
    String cateringMail= request.getParameter("cMail");
   
    Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            PreparedStatement st= connection.prepareStatement("select * from catering18 where cateringId=?");
            st.setString(1,cateringId);
            
            ResultSet rs= st.executeQuery();
            if(rs.next())
            {
            PreparedStatement st1= connection.prepareStatement("update catering18 set cateringName=? where cateringId=?");
            st1.setString(1,cateringId);
            st1.setString(2,cateringName);
            st1.setString(3,cateringPrice);
            st1.setString(4,cateringContact);
            st1.setString(1,cateringMail);
            connection.close();
            response.sendRedirect("home.jsp");
            
}


%>