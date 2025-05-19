<%-- 
    Document   : admin_Page
    Created on : May 17, 2025, 6:33:04 PM
    Author     : shong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Admin Dashboard</title>
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

    .card {
      border-radius: 10px;
    }

    .sidebar .nav-link i {
      width: 20px;
    }
  </style>
</head>
<body>

  <nav class="sidebar d-flex flex-column p-3">
    <h4 class="text-white mb-4">Shop Admin</h4>
    <ul class="nav nav-pills flex-column mb-auto">
      <li class="nav-item">
          <a href="admin_Page.jsp" class="nav-link active">
          <i class="fas fa-tachometer-alt"></i> Dashboard
        </a>
      </li>
      <li>
          <a href="customer.jsp" class="nav-link">
          <i class="fas fa-user"></i> Customer
        </a>
      </li>
      <li>
          <a href="product.jsp" class="nav-link">
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
    <h2>Admin Dashboard</h2>

    <!-- Summary Cards -->
    <div class="row my-4">
      <div class="col-md-3">
        <div class="card text-white bg-primary mb-3">
          <div class="card-body">
            <h5 class="card-title">Total Customers</h5>
            <p class="card-text fs-4">120</p>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card text-white bg-success mb-3">
          <div class="card-body">
            <h5 class="card-title">Total Products</h5>
            <p class="card-text fs-4">45</p>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card text-white bg-warning mb-3">
          <div class="card-body">
            <h5 class="card-title">Total Orders</h5>
            <p class="card-text fs-4">87</p>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card text-white bg-danger mb-3">
          <div class="card-body">
            <h5 class="card-title">Total Revenue</h5>
            <p class="card-text fs-4">$2,350</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Recent Orders Table -->
    <div class="card mt-4">
      <div class="card-header">
        Recent Orders
      </div>
      <div class="card-body">
        <table class="table table-bordered table-striped">
          <thead class="table-dark">
            <tr>
              <th>Order ID</th>
              <th>Customer</th>
              <th>Product</th>
              <th>Qty</th>
              <th>Total</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>ORD003</td>
              <td>user001</td>
              <td>Keyboard</td>
              <td>1</td>
              <td>$30</td>
              <td>Delivered</td>
            </tr>
            <tr>
              <td>ORD002</td>
              <td>user002</td>
              <td>Laptop Stand</td>
              <td>1</td>
              <td>$25</td>
              <td>Shipped</td>
            </tr>
            <tr>
              <td>ORD001</td>
              <td>user001</td>
              <td>Wireless Mouse</td>
              <td>2</td>
              <td>$40</td>
              <td>Pending</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
