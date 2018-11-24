<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Process</title>
    </head>

<body> 
        <%
            Connection theConnection = null;
            PreparedStatement Statement = null;

            try{  
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apiaggregator", "Anway", "anway123");
                Statement = con.prepareStatement("SELECT * FROM user WHERE email=? and password=?");
                Statement.setString(1, request.getParameter("email"));
                Statement.setString(2, request.getParameter("password"));
                ResultSet Result = Statement.executeQuery();


                if(Result.next()) {
                    String redirectURL = "retrieve.jsp";                    
                    response.sendRedirect(redirectURL);
                }
                else {
                    String redirectURL = "text.jsp";
                    response.sendRedirect(redirectURL);
                }
            } catch(Exception e){
                out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
            }  
        %>
</body>

</html>