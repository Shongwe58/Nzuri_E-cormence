<%-- 
    Document   : product
    Created on : May 17, 2025, 6:37:52 PM
    Author     : shong
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.entities.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Manage Products</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
  <style>
    body {
      min-height: 100vh;
      display: flex;
    }

    .sidebar {
      width: 250px;
      background-color: #343a40;
      color: #fff;
      flex-shrink: 0;
    }

    .sidebar .nav-link {
      color: #ccc;
    }

    .sidebar .nav-link:hover,
    .sidebar .nav-link.active {
      background-color: #495057;
      color: #fff;
    }

    .content {
      flex-grow: 1;
      padding: 20px;
      background-color: #f8f9fa;
    }

    .sidebar .nav-link i {
      width: 20px;
    }

    .product-img {
      width: 60px;
      height: 60px;
      object-fit: cover;
      border-radius: 5px;
    }
  </style>
</head>
<body>

  <nav class="sidebar d-flex flex-column p-3">
    <h4 class="text-white mb-4">Shop Admin</h4>
    <ul class="nav nav-pills flex-column mb-auto">
      <li class="nav-item">
          <a href="admin_Page.jsp" class="nav-link">
          <i class="fas fa-tachometer-alt"></i> Dashboard
        </a>
      </li>
      <li>
          <a href="customer.jsp" class="nav-link">
          <i class="fas fa-user"></i> Customer
        </a>
      </li>
      <li>
          <a href="product.jsp" class="nav-link active">
          <i class="fas fa-box"></i> Product
        </a>
      </li>
      <li>
          <a href="orders.jsp" class="nav-link">
          <i class="fas fa-shopping-cart"></i> Orders
        </a>
      </li>
      <li>
        <a href="logoutServlet.do" class="nav-link text-danger">
          <i class="fas fa-sign-out-alt"></i> Logout
        </a>
      </li>
    </ul>
  </nav>

  <div class="content">
    <h2>Manage Products</h2>

    <!-- Product Form -->
    <form action="manegerServlet.do" method="POST" id="productForm" class="mb-4" enctype="multipart/form-data">
      <div class="row g-3">
        <div class="col-md-3">
            <input type="text" class="form-control" name="name" placeholder="Product Name" id="productName" required />
        </div>
        <div class="col-md-3">
            <input type="number" class="form-control" name="price" placeholder="Price" id="productPrice" required />
        </div>
        <div class="col-md-6">
            <input type="text" class="form-control" placeholder="Description" name="description" id="productDescription" required />
        </div>
        <div class="col-md-3">
            <input type="file" class="form-control" id="productImage" name="img" accept="image/*" required />
        </div>
        <div class="col-md-2">
          <button type="submit" class="btn btn-primary w-100">Add Product</button>
        </div>
      </div>
    </form>

    <!-- Product Table -->
    <table class="table table-bordered table-striped">
      <thead class="table-dark">
        <tr>
          <th>#</th>
          <th>Image</th>
          <th>Name</th>
          <th>Description</th>
          <th>Price</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody id="productTableBody">
        <!-- Dynamic rows -->
        <%
        
                   
                        List<Item> items = (List<Item>)session.getAttribute("items");
                        Double price = 00.00;
                        String img_src = "";
                        String description = "";
                        String name ="";
                        
                        
                       if (!items.isEmpty()) {
                        for (int idx = 0; idx < items.size(); idx++) {
                           
                                Item item = items.get(idx);
                                 price = item.getPrice();
                                 img_src = "data:image;base64,"+ Base64.getEncoder().encodeToString(item.getImage());
                                 description = item.getDescription();
                                 name = item.getName();
                            %>
                        <% } } %>
      </tbody>
    </table>
  </div>

  <script>
 
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
