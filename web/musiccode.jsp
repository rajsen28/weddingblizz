<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String musicId= request.getParameter("mId");
    String musicName= request.getParameter("mName");
    String musicPrice= request.getParameter("mPrice");
    String musicContact= request.getParameter("mCont");
    String musicMail= request.getParameter("mMail");
    String musicAddress= request.getParameter("");

    

  Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","rajsen@#0011");
            
            PreparedStatement st= connection.prepareStatement("insert into music18 values(?,?,?,?,?,?)");
            
               st.setString(1,musicId);
               st.setString(2,musicName);
               st.setString(3,musicPrice);               
               st.setString(4,musicContact);
               st.setString(5,musicMail);
               st.setString(6,musicAddress);
               
               st.executeUpdate();
               connection.close();
               response.sendRedirect("musicpage.jsp");
               

%>        