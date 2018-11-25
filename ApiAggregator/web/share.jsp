<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String semail = request.getParameter("s_email");
    String platform = request.getParameter("s_platform");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apiaggregator", "Anway", "anway123");
        Statement st = con.createStatement();

        st.executeUpdate("INSERT INTO share(email, platform) VALUES('"+semail+"', '"+platform+"')");

        String redirectURL = "http://localhost:8080/APIAggregator/contact.jsp";                    
        response.sendRedirect(redirectURL);
    }
    catch(Exception e) {
        out.println(e);
    }
%>
