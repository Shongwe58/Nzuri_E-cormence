<%-- 
    Document   : login
    Created on : 17 May 2024, 12:10:37 AM
    Author     : loveness
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Manager Login</title>



    <style>
      body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        background-color: white;
      }

      .container {
        width: 100%;
        max-width: 400px;
        margin: 100px auto;
        padding: 20px;
        background-color:black; /* Adjusted background color */
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(170, 110, 73);
        transition: transform 0.3s ease-in-out;
        position: relative; /* Added position relative */
      }
      /*#6f432a */

      h2 {
        text-align: center;
        color:#ffffff /* Adjusted text color */
      }
       h5 {
        text-align: center;
        color:red /* Adjusted text color */
      }

      input[type="text"],
      input[type="password"],
      input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ED894E; /* Adjusted border color */
        border-radius: 4px;
        box-sizing: border-box;
        background-color:#ffffff; /* Adjusted input background color */
        color: black; /* Adjusted text color */
      }

      input[type="submit"] {
        background-color:orange ;
        cursor: pointer;
        transition: background-color 0.3s ease-in-out;
      }

      input[type="submit"]:hover {
        background-color:#fcfcfc ;
        color: orange;
      }

      .signup-link {
        text-align: center;
        color:orange; /* Adjusted text color */
      }

      .signup-link a {
        color: orange; /* Adjusted text color */
        text-decoration: none;
      }

      .signup-link a:hover {
        text-decoration: underline;
      }
      .error-message{
        color:red;
        text-align:center;
        margin-top:10px;
      }

      .navbar{
         background-image: url(img/background.jpg);
    }

    </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark px-6 px-lg-5 py-lg-0">
      <div class="container-fluid py-2 ">
        <a href="/" class="navbar-brand d-inline"><img width="50" height="40" src="img/logo.jpg" alt=""></a>
        <a class="navbar-brand p-0" href="/">Junction Cafe</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#myNav"> <span class="navbar-toggler-icon"></span></button>

        <div class="collapse navbar-collapse " id="myNav">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a class="nav-link active" href="landing_page.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="signup.jsp">Sign-up</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="login.jsp">Sign-in</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container" id="login-container">
      <h2>MANAGER LOGIN</h2>
      <%
    String msg = request.getParameter("msg");
        if (msg != null && !msg.isEmpty()) {
        %>
          <h5 class="alert alert-success error-message">
            <%= msg %>
          </h5>
        <% }  %>

      <form action="ManagerLoginServlet.do" method="POST">
        <input type="text" id="user"name="user" placeholder="Username" required>
        <input type="password" id="password" name="password" placeholder="Password" required>
        <input type="submit" value="login">
      </form>

      <div class="signup-link">
        <p>Don't have an account? <a href="signup.jsp">Sign up</a></p>
      </div>
    </div>

    <script>
      function animateForm() {
        const container = document.getElementById("login-container");
        container.style.transform = "translateX(-400px)";
      }
    </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
  integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
   crossorigin="anonymous">
  </script>
  </body>
</html>