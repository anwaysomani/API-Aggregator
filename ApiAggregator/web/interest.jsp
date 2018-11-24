<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
	String id = request.getParameter("api_list");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "apiaggregator";
	String userid = "Anway";
	String password = "anway123";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Interests</title>
        
        <!--Local CSS-->
        <link rel="stylesheet" href="static/css/interest.css"/>
        
        <!--Google Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Itim" rel="stylesheet">

    </head>
    <body>
        <div class="title">
            INTERESTS!!!
        </div>
        
        <hr>
        
        <form action="interestprocess.jsp">
            <%
                try{
                    connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                    statement=connection.createStatement();
                    String sql = "SELECT DISTINCT(genre) FROM api_list WHERE genre is NOT NULL AND genre NOT LIKE '%,%' ORDER BY genre";
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
            %>
            <p class="blocks">
              <input type="checkbox" class="single-checkbox" id="<%=resultSet.getString("genre") %>" name="radio-group"> 
              <label for="<%=resultSet.getString("genre") %>"><%=resultSet.getString("genre") %></label>
            </p>
            <%
                    }
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            <input type="submit" value="Submit" class="submit">  
          </form>
            
            <script>
                var limit = 3;
                $('input.single-checkbox').on('change', function(evt) {
                   if($(this).siblings(':checked').length >= limit) {
                       this.checked = false;
                   }
                });
            </script>
    </body>
</html>
