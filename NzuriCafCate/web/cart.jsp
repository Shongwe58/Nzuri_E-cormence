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
    <title>Ordering Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

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
          List<Item> items = (List<Item>)session.getAttribute("cart");
          Double totalCost = (Double)session.getAttribute("totalCost");
      %>
      
          
        <div class="container my-5">
        <h2 class="mb-4">Cart</h2>
        <div class="row">
            <div class="col-lg-8">
                <div class="card mb-4">
                    <div class="card-header">
                        Cart Items
                    </div>
                    <form action="RemoveItemServlet.do" method="POST">
                        <%
                            for(int i = 0; i < items.size(); i++){
                                  String image = items.get(i).getImage();
                                  String description = items.get(i).getDescription();
                                  double price = items.get(i).getPrice();
                        %>
                      <div class="card-body">
                          <div class="d-flex justify-content-between align-items-center mb-3">
                              <div class="d-flex align-items-center">
                                  <img src="<%=image%>" class="img-fluid" style="width: 100px;" alt="Product 1">
                                  <div class="ml-3">
                                      <h5 class="mb-0"><%=description%></h5>
                                      <p class="mb-0">ZAR <%=price%>0</p>
                                  </div>
                              </div>
                              <div>
                                <td><input type="hidden" name="item" value="<%=items.get(i).getId()%>"></td>
                                <td><input type="submit"  value="REMOVE" class="btn btn-danger btn-sm"></td>
                              </div>
                          </div>
                      </div>
                       <%              
                        }
                      %>
                    </form>
                </div>
            </div>
            
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header">
                        Cost Summary
                    </div>
                    <div class="card-body">
                            <p class="mb-1">Subtotal: <span class="float-right"><%=totalCost%>0</span></p>
                            <a href="#address" class="btn btn-primary btn-block"  class="btn btn-primary w-100">Proceed to Checkout</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-lg-4">
                <div class="card">
                    <div class="card-header"> 
                        Address
                    </div>
                <div class="card-body">
                    <form action="CheckoutServlet.do" method="POST" id="address">
                        <div class="form-group">
                          <input type="text" class="form-control" id="name" name="block" placeholder="block number" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="surname" name="house" placeholder="house number" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="block" name="room" placeholder="room letter" required>
                        </div>
                        <div class="d-flex justify-content-center p-2">
                            <input type="submit"  class="btn btn-primary w-100" value="CHECKOUT">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    </body>
</html>
