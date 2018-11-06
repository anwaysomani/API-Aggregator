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
<!DOCTYPE html>
<html>
<body>

<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>Id</td>
<td>Title</td>
<td>Url</td>
<td>Platform</td>
<td>Score</td>
<td>Genre</td>
<td>Editor's Choice</td>
<td>Release Year</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from api_list";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("title") %></td>
<td><%=resultSet.getString("url") %></td>
<td><%=resultSet.getString("platform") %></td>
<td><%=resultSet.getString("score") %></td>
<td><%=resultSet.getString("genre") %></td>
<td><%=resultSet.getString("editors_choice") %></td>
<td><%=resultSet.getString("release_year") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>