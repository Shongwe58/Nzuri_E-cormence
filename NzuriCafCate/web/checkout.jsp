<%-- 
    Document   : cart
    Created on : 17 May 2024, 6:50:34 AM
    Author     : loveness
--%>

<%@page import="za.ac.tut.entities.Item"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Check Out Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
</head>
<style>
        body {
            background-color: #f8f9fa; /* Same as login page */
        }

        .signup-container {
            max-width: 400px; /* Maintain original width */
            margin: 100px auto; /* Centered position */
            padding: 20px; /* Padding for content */
            border-radius: 10px; /* Smooth corners */
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5); /* Shadow for depth */
            background-color: #ffffff; /* White background for contrast */
            text-align: center; /* Centered content */
        }

        .form-control {
            padding: 10px; /* Consistent padding */
            border: 1px solid #ccc; /* Light gray border */
            border-radius: 4px; /* Rounded borders */
        }

        .btn-primary {
            background-color: orange; /* Consistent with login page */
            transition: background-color 0.3s; /* Smooth transition */
        }

        .btn-primary:hover {
            background-color: #aa6e49; /* Darker orange on hover */
        }

        .signup-link {
            text-align: center; /* Centered sign-up link */
            color: orange; /* Consistent with login page */
        }

        .signup-link a {
            color: orange; /* Consistent link color */
            text-decoration: none; /* No underline */
        }

        .signup-link a:hover {
            text-decoration: underline; /* Underline on hover */
        }
        .navbar{
            background-image: url(img/background.jpg);
        }
    </style>
  <body>
    
    <nav class="navbar navbar-expand-lg bg-white shadow py-3 sticky-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="managerlogin.jsp">
            <img src="img/logo.jpg" alt="Bootstrap" width="50" height="40">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#menu">Menu</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="landing_page.jsp">Logout</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="addtocart.jsp">Add Item</a>
              </li>
            </ul>
          </div>
        </div>
    </nav>
      
      <%
          String addressS = (String)session.getAttribute("addressS");
          Integer numItems = (Integer)session.getAttribute("numItems");
          Double totalCost = (Double)session.getAttribute("totalCost");
          Double service = (Double)request.getAttribute("service");
          Double delivery = (Double)request.getAttribute("delivery");
          Double total = (Double)session.getAttribute("total");
      %>
      <div class="container my-5">
      <div class="col-lg-5">
        <h2 class="mb-4">Nzuri Cafe & Catering</h2>
       </div>

          <div class="row">
            <div class="col-lg-8">
                <div class="card mb-4">
                    <div class="card-header">
                      Delivery Details
                    </div>
                    
                      <div class="card-body">
                          <div class="d-flex justify-content-between align-items-center mb-3">
                              <div class="d-flex align-items-center">
                                <img src="img/logo.jpg" style="width: 30px;" alt="Product 1">
                                <div class="ml-3">
                                    <h5 class="mb-0">Ekhaya Junction Residence</h5>
                                    <p class="mb-0"><b><%=addressS%></b></p>
                                </div>
                              </div>
                              <div>
                                 <td><a href="cart.jsp"  class="btn btn-danger btn-sm">Edit</a></td>
                              </div>
                          </div>
                      </div>
                </div>
            </div>
            
            <div class="col-lg-4">
                  <div class="card">
                      <div class="card-header">
                        Order Total
                      </div>
                      <div class="card-body">
                          <p class="mb-1">Subtotal: <span class="float-right"><b>R<%=totalCost%>0</b></span></p>
                        <p class="mb-1">Service: <span class="float-right"><b>R<%=service%>0</b></span></p>
                        <p class="mb-1">Delivery: <span class="float-right"><b>R<%=delivery%>0</b></span></p>
                        <br>
                        <p><b>Total <span class="float-right">R <%=total%>0</span></b></p>
                        <br>
                      <form action ="PlaceOrderServlet.do" method="GET">
                        <input type="submit"  value="Place Order" class="btn btn-primary btn-block">
                      </form>
                      </div>
                  </div>
              </div>
        </div>
        


        <div class="col-lg-8">
          <div class="card mb-4">
              <div class="card-header">
                  <div class="d-flex justify-content-between align-items-center mb-3">
                  <div>Order Summary</div>
                  <div>
                    <td><a href="addtocart.jsp" class="btn btn-danger btn-sm"  >AddItem</a></td>
                  </div>
              </div>
              </div>

              <div class="card-body">
                  <div class="d-flex justify-content-between align-items-center mb-3">
                      <div class="d-flex align-items-center">
                          <img src="img/logo.jpg" style="width: 60px;" alt="Product 1">
                          <div class="ml-3">
                              <h5 class="mb-0"><%=numItems%> Items</h5>
                              <br>
                              <a href="cart.jsp"   class="btn btn-danger btn-sm">view items</a>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>

    </div>
                              
                              
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </body>
</html>
