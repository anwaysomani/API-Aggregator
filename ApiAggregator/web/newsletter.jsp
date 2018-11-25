<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String name = request.getParameter("n_name");
    String email = request.getParameter("n_email");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apiaggregator", "Anway", "anway123");
        Statement st = con.createStatement();

        st.executeUpdate("INSERT INTO newsletter(name, email) VALUES('"+name+"', '"+email+"')");

        String redirectURL = "http://localhost:8080/APIAggregator/contact.jsp";   
        response.sendRedirect(redirectURL);
    }
    catch(Exception e) {
        out.println(e);
    }
%>
