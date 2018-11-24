<%-- 
    Document   : login
    Created on : 23 Nov, 2018, 12:13:18 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login | API Aggregator</title>
        
        <!--Local Css-->
        <link rel="stylesheet" href="static/css/login.css"/>
        
        <!--Google Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Poppins:600" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Sedgwick+Ave" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Patrick+Hand" rel="stylesheet">
        
    </head>
    <body>
        <div class="tnc"><a href="">Terms and Conditions</a></div>
        <form action="loginprocess.jsp">
            <div class="page">
            <div class="container">
              <div class="left">
                <div class="login">Login</div>
                <div class="eula">By logging in you agree to the ridiculously long terms that you didn't bother to read!</div>
              </div>
              <div class="right">
                <svg viewBox="0 0 320 300">
                  <defs>
                    <linearGradient
                                    inkscape:collect="always"
                                    id="linearGradient"
                                    x1="13"
                                    y1="193.49992"
                                    x2="307"
                                    y2="193.49992"
                                    gradientUnits="userSpaceOnUse">
                      <stop
                            style="stop-color:#ff00ff;"
                            offset="0"
                            id="stop876" />
                      <stop
                            style="stop-color:#ff0000;"
                            offset="1"
                            id="stop878" />
                    </linearGradient>
                  </defs>
                  <path d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
                <div class="form">
                  <label for="email">Email</label>
                  <input type="email" id="email" name="email">
                  <label for="password">Password</label>
                  <input type="password" id="password" name="password">
                  <input type="submit" id="submit" value="Login">
                </div>
              </div>
            </div>
            
            <br><br>
                
            
            <a href="register.jsp">
                <div class="new-here">Still New...????</div><br>
                <div class="new-register">
                    Register Immediately!!
                </div>
            </a>
        </div>

        </form>
        
        <script type="text/javascript">
            var current = null;
            document.querySelector('#email').addEventListener('focus', function(e) {
              if (current) current.pause();
              current = anime({
                targets: 'path',
                strokeDashoffset: {
                  value: 0,
                  duration: 700,
                  easing: 'easeOutQuart'
                },
                strokeDasharray: {
                  value: '240 1386',
                  duration: 700,
                  easing: 'easeOutQuart'
                }
              });
            });
            document.querySelector('#password').addEventListener('focus', function(e) {
              if (current) current.pause();
              current = anime({
                targets: 'path',
                strokeDashoffset: {
                  value: -336,
                  duration: 700,
                  easing: 'easeOutQuart'
                },
                strokeDasharray: {
                  value: '240 1386',
                  duration: 700,
                  easing: 'easeOutQuart'
                }
              });
            });
            document.querySelector('#submit').addEventListener('focus', function(e) {
              if (current) current.pause();
              current = anime({
                targets: 'path',
                strokeDashoffset: {
                  value: -730,
                  duration: 700,
                  easing: 'easeOutQuart'
                },
                strokeDasharray: {
                  value: '530 1386',
                  duration: 700,
                  easing: 'easeOutQuart'
                }
              });
            });
        </script>
    </body>
</html>
