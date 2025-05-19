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
    List<Item> items = (List<Item>) session.getAttribute("cart");
    Double totalCost = (Double) session.getAttribute("totalCost");
  %>

  <div class="container my-5">
    <h2 class="mb-4">Cart</h2>
    <div class="row">
      <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-header">Cart Items</div>
          <form action="RemoveItemServlet.do" method="POST">
            <% for (int i = 0; i < items.size(); i++) {
              String image = "data:image;base64," + Base64.getEncoder().encodeToString(items.get(i).getImage());
              String description = items.get(i).getDescription();
              double price = items.get(i).getPrice();
            %>
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-center mb-3">
                <div class="d-flex align-items-center">
                  <img src="<%=image%>" class="img-fluid" style="width: 100px;" alt="Product">
                  <div class="ms-3">
                    <h5 class="mb-0"><%=description%></h5>
                    <p class="mb-0">ZAR <%=price%>0</p>
                  </div>
                </div>
                <div>
                  <input type="hidden" name="item" value="<%=items.get(i).getId()%>">
                  <input type="submit" value="REMOVE" class="btn btn-danger btn-sm">
                </div>
              </div>
            </div>
            <% } %>
          </form>
        </div>
      </div>

      <div class="col-lg-4">
        <div class="card">
          <div class="card-header">Cost Summary</div>
          <div class="card-body">
            <p class="mb-1">Subtotal: <span class="float-end">ZAR <%=totalCost%>0</span></p>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary w-100 mt-3" data-bs-toggle="modal" data-bs-target="#checkoutOptionModal">
              Proceed to Checkout
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Checkout Option Modal -->
  <div class="modal fade" id="checkoutOptionModal" tabindex="-1" aria-labelledby="checkoutOptionModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="checkoutOptionModalLabel">Select Delivery Option</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
        </div>
        <div class="modal-body text-center">
          <p>How would you like to receive your order?</p>
          <div class="d-flex justify-content-around mt-4">
            <a href="delivery_address.jsp" class="btn btn-success">Delivery</a>
            <a href="collection.jsp" class="btn btn-secondary">Collection</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS (modal functionality) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
