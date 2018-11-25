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
        <title>Search By Genre</title>
        
        <link rel="stylesheet" href="static/css/search.css"/>
        
        <!--Google Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Jua|Mate+SC" rel="stylesheet">

        
    </head>
    <body>
        <div class="mainblockSearch">
            Search Section
        </div>
        <div class="search-title">
            Genres
        </div>
        <a href="retrieve.jsp">
            <div class="search-title1">
                <-- Back to Main
            </div>
        </a>
        <a href="Sorts/Genre/action.jsp">
            <div class="element">
                <img src="static/img/machinegun.png"><br>
                Action
            </div>
        </a>
        <a href="Sorts/Genre/adventure.jsp">
            <div class="element">
                <img src="static/img/adventure.png"><br>
                Adventure
            </div>
        </a>
        <a href="Sorts/Genre/battle.jsp">
            <div class="element">
                <img src="static/img/battle.png"><br>
                Battle
            </div>
        </a>
        <a href="Sorts/Genre/board.jsp">
            <div class="element">
                <img src="static/img/board.png"><br>
                Board
            </div>
        </a>
        <a href="Sorts/Genre/card.jsp">
            <div class="element">
                <img src="static/img/cards.png"><br>
                Card
            </div>
        </a>
        <a href="Sorts/Genre/casino.jsp">
            <div class="element">
                <img src="static/img/casino.png"><br>
                Casino
            </div>
        </a>
        <a href="Sorts/Genre/compilation.jsp">
            <div class="element">
                <img src="static/img/compilation.png"><br>
                Compilation
            </div>
        </a>
        <a href="Sorts/Genre/editor.jsp">
            <div class="element">
                <img src="static/img/editor.png"><br>
                Editor
            </div>
        </a>
        <a href="Sorts/Genre/educational.jsp">
            <div class="element">
                <img src="static/img/educational.png"><br>
                Educational
            </div>
        </a>
        <a href="Sorts/Genre/fighting.jsp">
            <div class="element">
                <img src="static/img/fighting.png"><br>
                Fighting
            </div>
        </a>
        <a href="Sorts/Genre/flight.jsp">
            <div class="element">
                <img src="static/img/flight.png"><br>
                Flight
            </div>
        </a>
        <a href="Sorts/Genre/hunting.jsp">
            <div class="element">
                <img src="static/img/hunting.png"><br>
                Hunting
            </div>
        </a>
        <a href="Sorts/Genre/music.jsp">
            <div class="element">
                <img src="static/img/music.png"><br>
                Music
            </div>
        </a>
        <a href="Sorts/Genre/party.jsp">
            <div class="element">
                <img src="static/img/party.png"><br>
                Party
            </div>
        </a>
        <a href="Sorts/Genre/pinball.jsp">
            <div class="element">
                <img src="static/img/pinball.png"><br>
                PinBall
            </div>
        </a>
        <a href="Sorts/Genre/platformer.jsp">
            <div class="element">
                <img src="static/img/platformer.png"><br>
                Platformer
            </div>
        </a>
        <a href="Sorts/Genre/productivity.jsp">
            <div class="element">
                <img src="static/img/productivity.png"><br>
                Productivity
            </div>
        </a>
        <a href="Sorts/Genre/puzzle.jsp">
            <div class="element">
                <img src="static/img/puzzle.png"><br>
                Puzzle
            </div>
        </a>
        <a href="Sorts/Genre/racing.jsp">
            <div class="element">
                <img src="static/img/racing.png"><br>
                Racing
            </div>
        </a>
        <a href="Sorts/Genre/rpg.jsp">
            <div class="element">
                <img src="static/img/rpg.png"><br>
                RPG
            </div>
        </a>
        <a href="Sorts/Genre/shooter.jsp">
            <div class="element">
                <img src="static/img/shooter.png"><br>
                Shooter
            </div>
        </a>
        <a href="Sorts/Genre/simulation.jsp">
            <div class="element">
                <img src="static/img/simulation.png"><br>
                Simulation
            </div>
        </a>
        <a href="Sorts/Genre/strategy.jsp">
            <div class="element">
                <img src="static/img/strategy.png"><br>
                Strategy
            </div>
        </a>
        <a href="Sorts/Genre/trivia.jsp">
            <div class="element">
                <img src="static/img/trivia.png"><br>
                Trivia
            </div>
        </a>
        <a href="Sorts/Genre/virtual_pet.jsp">
            <div class="element">
                <img src="static/img/virtualpet.png"><br>
                Virtual Pet
            </div>
        </a>
        <a href="Sorts/Genre/word_game.jsp">
            <div class="element">
                <img src="static/img/wordgame.png"><br>
                Word Game
            </div>
        </a>
        <a href="Sorts/Genre/wretling.jsp">
            <div class="element">
                <img src="static/img/wrestling.png"><br>
                Wrestling
            </div>
        </a>
        <a href="Sorts/Genre/other.jsp">
            <div class="element">
                <img src="static/img/other.png"><br>
                Other
            </div>
        </a>

        
    </body>
</html>
