<%-- 
    Document   : customer
    Created on : May 17, 2025, 6:34:14 PM
    Author     : shong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Customer List</title>
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
        <a href="customer.jsp" class="nav-link active">
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
    <h2>Customer List</h2>

    <table class="table table-bordered table-striped">
      <thead class="table-dark">
        <tr>
          <th>Username (ID)</th>
          <th>Name</th>
          <th>Surname</th>
          <th>Block</th>
          <th>Phone Number</th>
          <th>Password</th>
        </tr>
      </thead>
      <tbody id="customerTableBody">
        <!-- Placeholder data (to be fetched from DB in real usage) -->
      </tbody>
    </table>
  </div>

  <script>
    const customers = [
      {
        username: "user001",
        name: "John",
        surname: "Doe",
        block: "A1",
        phone: "123-456-7890",
        password: "pass123"
      },
      {
        username: "user002",
        name: "Jane",
        surname: "Smith",
        block: "B3",
        phone: "987-654-3210",
        password: "qwerty"
      }
    ];

    const tbody = document.getElementById("customerTableBody");

    customers.forEach(customer => {
      const row = document.createElement("tr");
      row.innerHTML = `
        <td>${customer.username}</td>
        <td>${customer.name}</td>
        <td>${customer.surname}</td>
        <td>${customer.block}</td>
        <td>${customer.phone}</td>
        <td>${customer.password}</td>
      `;
      tbody.appendChild(row);
    });
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
