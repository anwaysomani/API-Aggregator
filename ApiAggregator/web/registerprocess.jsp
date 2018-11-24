<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Process</title>
    </head>
    <body>
        <% 
            String username = request.getParameter("username");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apiaggregator", "Anway", "anway123");
                Statement st = con.createStatement();
                
                st.executeUpdate("INSERT INTO user(username, first_name, last_name, email, password) VALUES('"+username+"', '"+firstName+"', '"+lastName+"', '"+email+"', '"+password+"')");
                
                String redirectURL = "http://localhost:8080/APIAggregator/login.jsp";                    
                response.sendRedirect(redirectURL);
            }
            catch(Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>
