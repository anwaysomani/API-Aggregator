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

	<link rel="stylesheet" type="text/css" href="retrieve.css">

	<!-- Pagination Effects -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="jquery.easyPaginate.js"></script>

	<!-- Font Awesome Icons -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Spicy+Rice" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poor+Story" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Luckiest+Guy" rel="stylesheet">



<body>
	<div class="init-block">
		Games Arena
		<div class="leftyre">
			By: Anway Somani
		</div>
	</div>

	<br><br>

	<div class="navbar">
		<a class="active" href="#"><i class="fa fa-fw fa-home"></i> Home</a> 
	  	<a href="#"><i class="fa fa-fw fa-search"></i> Search</a> 
	  	<a href="contact.jsp"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
	  	<a href="login.jsp"><i class="fa fa-fw fa-user"></i> Login</a>
	</div>

	<br><br>


	<div id="easyPaginate" class="clear">
		<%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql = "SELECT * FROM api_list ORDER BY score DESC ,release_year ASC, editors_choice DESC";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
		%>
		<div class="card" id="block">
  			<div class="card-body">
    			<h5 class="card-title"><a href="<%=resultSet.getString("url") %>"><%=resultSet.getString("title") %></a></h5>
    			<h6 class="card-subtitle mb-2 text-muted"><%=resultSet.getString("platform") %></h6>
    			<hr>
    			<div class="double-block">
    				<div class="lefty-block">
		    			<%
							if("Y".equals(resultSet.getString("editors_choice"))) {
						%>
							<div class="tooltip">
								<i class="fa fa-beer" aria-hidden="true"></i>
								<span class="tooltiptext">
									Editor's choice!
								</span>
							</div>
						<%
						}
						%>
					</div>
    				<div class="righty-block"><%=resultSet.getString("score") %></div>
    			</div>
    		
    			
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