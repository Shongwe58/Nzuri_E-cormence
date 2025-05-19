<%-- 
    Document   : orders
    Created on : May 17, 2025, 6:36:56 PM
    Author     : shong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Order Management</title>
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
          <a href="product.jsp" class="nav-link">
          <i class="fas fa-box"></i> Product
        </a>
      </li>
      <li>
          <a href="orders.jsp" class="nav-link active">
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
    <h2>Order Management</h2>

    <table class="table table-bordered table-striped">
      <thead class="table-dark">
        <tr>
          <th>Order ID</th>
          <th>Customer Username</th>
          <th>Product</th>
          <th>Quantity</th>
          <th>Total Price</th>
          <th>Order Date</th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody id="orderTableBody">
        <!-- Dynamic data here -->
      </tbody>
    </table>
  </div>

  <script>
    const orders = [
      {
        id: "ORD001",
        username: "user001",
        product: "Wireless Mouse",
        quantity: 2,
        total: "$40",
        date: "2025-05-16",
        status: "Pending"
      },
      {
        id: "ORD002",
        username: "user002",
        product: "Laptop Stand",
        quantity: 1,
        total: "$25",
        date: "2025-05-15",
        status: "Shipped"
      },
      {
        id: "ORD003",
        username: "user001",
        product: "Keyboard",
        quantity: 1,
        total: "$30",
        date: "2025-05-14",
        status: "Delivered"
      }
    ];

    const tbody = document.getElementById("orderTableBody");

    orders.forEach(order => {
      const row = document.createElement("tr");
      row.innerHTML = `
        <td>${order.id}</td>
        <td>${order.username}</td>
        <td>${order.product}</td>
        <td>${order.quantity}</td>
        <td>${order.total}</td>
        <td>${order.date}</td>
        <td>${order.status}</td>
      `;
      tbody.appendChild(row);
    });
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
