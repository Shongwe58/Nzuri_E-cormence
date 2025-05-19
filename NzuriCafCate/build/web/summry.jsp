<%@page import="za.ac.tut.entities.Address"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.entities.Item"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Ordering Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
  <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
</head>
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
    background-color: #ffffff;
    text-align: center;
  }

  .form-control {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
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
<body>

  <nav class="navbar navbar-expand-lg bg-white shadow py-3 sticky-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="managerlogin.jsp">
        <img src="img/logo.jpg" alt="Bootstrap" width="50" height="40">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="#menu">Menu</a></li>
          <li class="nav-item"><a class="nav-link" href="landing_page.jsp">Logout</a></li>
          <li class="nav-item"><a class="nav-link" href="addtocart.jsp">Add Item</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <%
 
        List<Item> cart = (List<Item>)session.getAttribute("cart");
        String addressS = (String)session.getAttribute("addressS");
        Date cDate =(Date)session.getAttribute("creationDate");
        Double totalCost =(Double)session.getAttribute("totalCost");
        Double total =(Double)session.getAttribute("total");
        Double service = (Double)session.getAttribute("service");
        Double delivery = (Double)session.getAttribute("delivery");
        Double min = service + delivery;
        
   
  %>

  <div class="container my-5">
    <h2 class="mb-4">Summary</h2>
    <div class="row">
    

      <div class="col-lg-6">
        <div class="card">
          <div class="card-header">Slip</div>
          <div class="card-body">
              <p class="mb-1"<span class="float-center"><%=cDate%></span></p>
              <p class="mb-1">Address: <span class="float-end"><%=addressS%></span></p>
              <hr />
              
              <%
                  if (!cart.isEmpty()) {
                        for (int i = 0; i< cart.size(); i++) {
                              String name = cart.get(i).getName();
                              double price = cart.get(i).getPrice();
                                
                            
 
                      %>
                      <p class="mb-1"><%=name%> <span class="float-end">R <%=price%>0</span></p>
              
              <%
                     } }
              %>
           <hr/>
           <p class="mb-1">Subtotal: <span class="float-end">R<%=totalCost%>0</span></p>
           <p class="mb-1">Delivery + Service: <span class="float-end">R<%=min%>0</span></p>
            <p class="mb-1">Total: <span class="float-end">R<%=total%>0</span></p>
            <!-- Button trigger modal -->
            <a href="start.jsp">
               <button type="button" class="btn btn-primary w-100 mt-3" data-bs-toggle="modal" data-bs-target="#checkoutOptionModal">HOME</button>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS (modal functionality) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
