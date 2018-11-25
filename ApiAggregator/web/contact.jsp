<%-- 
    Document   : contact
    Created on : 23 Nov, 2018, 12:13:35 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact | API Aggregator</title>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/parallax/3.1.0/parallax.min.js"></script>
        
        <!--Font Awesome-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

        <link rel="stylesheet" href="static/css/contact.css"/>
        
        <script async type="text/javascript" src="static/js/background.js"></script>
        
        <!-- Google Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">

    </head>
    <body>
        <canvas id="background"></canvas>
        <div class="ac-title">
            Contact | AnnyCorp.
        </div>
        
<!--        <div class="container">
            <br><br>
            <i class="fas fa-phone">   9096052940</i>
        </div>-->
 
        
        
        <div class="left-tile">
            <!-- Query Form -->
            <legend>Query...??</legend>
            <form action="query.jsp">
                Name:
                <input type="text" name='q_name' /><br><br>
                Email: 
                <input type="text" name='q_email' /><br><br>
                Query:
                <input type="text" name='q_query' /><br><br><br><br><br><br>
                <button type="submit">Submit</button>
            </form>
        </div>
        
        <div class="right-tile">
            <!-- Subscribe to Newsletter -->
            <legend>I want the Awesome Newsletter!!!</legend>
            <form action="newsletter.jsp">
                Name:
                <input type="text" name='n_name' /><br><br>
                Email:
                <input type="text" name='n_email' /><br><br><br><br><br><br>
                <button type="submit">Submit</button>
            </form>
        </div>
        
        <div class="left-tile lt1">
            <!-- Contact Developer -->
            <legend>Who's the Amazing Developer??</legend>
            <form action="contactme.jsp">
                Name:
                <input type="text" name='c_name' /><br><br>
                Email:
                <input type="text" name='c_email' /><br><br>
                Contact Number:
                <input type="text" name='c_contact' /><br><br>
                Mention things to keep in mind while contacting?
                <input type="text" name='c_precaution' /><br><br><br>
                <button type="submit">Submit</button>
        </div>
        
        <div class="right-tile rt1">
            <!-- Request Link to Share -->
            <legend>I wanna spread this....</legend>
            <form action="share.jsp">
                Email:
                <input type="text" name='s_email' /><br><br>
                Platforms:
                <input type="text" name='s_platform' /><br><br><br><br><br><br><br><br>
                <button type="submit">Submit</button>
        </div>
	
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-46156385-1', 'cssscript.com');
        ga('send', 'pageview');
    </script>
    
    <script>
        'undefined'=== typeof _trfq || (window._trfq = []);
        'undefined'=== typeof _trfd && (window._trfd=[]),_trfd.push({'tccl.baseHost':'secureserver.net'}),_trfd.push({'ap':'cpsh'},{'server':'p3plcpnl0805'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.
    </script>
    
    <script src='https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js'></script>
        
    </body>
</html>
