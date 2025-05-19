<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .signup-container {
            max-width: 400px;
            margin: 100px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
            background-color: aliceblue;
            text-align: center;
        }

        .form-control {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn-primary {
            background-color: orange;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #aa6e49;
        }

        .signup-link {
            text-align: center;
            color: orange;
        }

        .signup-link a {
            color: orange;
            text-decoration: none;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }

        .navbar {
            background-image: url(img/background.jpg);
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-dark navbar-dark px-6 px-lg-5 py-lg-0">
    <div class="container-fluid py-2">
        <a href="landing_page.jsp" class="navbar-brand d-inline"><img width="50" height="40" src="img/logo.jpg" alt=""></a>
        <a class="navbar-brand p-0" href="landing_page.jsp">Junction Cafe</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#myNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="myNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="landing_page.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/signup.jsp">Sign-up</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Sign-in</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="signup-container">
    <h2>Sign Up</h2>
    <form action="SignUpServlet.do" method="post" onsubmit="return validatePasswords();">
        <div class="form-group mb-2">
            <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
        </div>
        <div class="form-group mb-2">
            <input type="text" class="form-control" id="surname" name="surname" placeholder="Surname" required>
        </div>
        <div class="form-group mb-2">
            <input type="text" class="form-control" id="block" name="block" placeholder="Block" required>
        </div>
        <div class="form-group mb-2">
            <input type="text" class="form-control" id="phone_number" name="phone_number" placeholder="Phone Number" required>
        </div>
        <div class="form-group mb-2">
            <input type="email" class="form-control" id="username" name="username" placeholder="Email" required>
        </div>
        <div class="form-group mb-2">
            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
        </div>
        <div   class="form-group mb-3">
            <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirm Password" required>
            <div id="pswd"></div>
            <%
            String msg = request.getParameter("msg");
              if (msg != null && !msg.isEmpty()) {
            %>
                <p class="alert alert-success error-message"><%= msg %></p>
            <% } %>
        </div>
        <div class="d-flex justify-content-center p-2">
            <input type="submit" class="btn btn-primary w-100" value="Submit">
            
        </div>
    </form>

    <div class="signup-link">
        <p>Already have an account? <a href="login.jsp">Sign In</a></p>
    </div>
</div>

<!-- Password validation script -->
<script>
    function validatePasswords() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm_password").value;
        var pswd = document.getElementById("pswd");

        // Clear previous messages
        pswd.innerHTML = "";

        // Password pattern: 8+ chars, 1 uppercase, 1 digit, 1 special char
        var passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]).{8,}$/;

        if (!passwordRegex.test(password)) {
            var msg = document.createElement('p');
            msg.innerText = "Password must be at least 8 characters long, contain at least one uppercase letter, one number, and one special character.";
            msg.style.color = "red";
            pswd.appendChild(msg);
            return false;
        }

        if (password !== confirmPassword) {
            var msg = document.createElement('p');
            msg.innerText = "Passwords do not match!";
            msg.style.color = "red";
            pswd.appendChild(msg);
            return false;
        }

        return true;
    }
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

</body>
</html>
