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

<head>
	<title>Games Arena</title>
	<link rel="stylesheet" type="text/css" href="../../static/css/retrieve.css">

	<!-- Pagination Effects -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="jquery.easyPaginate.js"></script>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Spicy+Rice" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poor+Story" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">


<body>
	<div class="init-block">
		Games Arena
	</div>

	<br>
	<a href="../../retrieve.jsp"><-- Return to main</a>
	<br><br>

	<div id="easyPaginate" class="clear">
		<%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql = "SELECT * FROM api_list WHERE genre LIKE '%Shooter%' ORDER BY score DESC";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
		%>
		<div class="card" id="block">
  			<div class="card-body">
    			<h5 class="card-title"><%=resultSet.getString("title") %></h5>
    			<h6 class="card-subtitle mb-2 text-muted"><%=resultSet.getString("platform") %></h6>
    			<p><%=resultSet.getString("score") %></p>
  			</div>
		</div>
		<%
			}
			connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
		<div class="clear"></div>
	</div>

	<script type="text/javascript">
		$('#easyPaginate').easyPaginate({
    		paginateElement: 'div.card',
    		elementsPerPage: 2499,
    		effect: 'slide'
		});
	</script>
</body>
</html>