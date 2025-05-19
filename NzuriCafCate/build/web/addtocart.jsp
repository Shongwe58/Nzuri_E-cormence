<%-- 
    Document   : addtocart
    Created on : 17 May 2024, 2:32:35 AM
    Author     : loveness
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.entities.Item"%>
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
</head>
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
                <a class="nav-link" href="logoutServlet.do">Logout</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="cart.jsp">View Cart</a>
              </li>
            </ul>
          </div>
        </div>
    </nav>

    
    <!-- Menu-->
    <!--<form action="AddItemToCartServlet.do" method="POST">-->
        <section id="menu" class="bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-12 intro-text">
                    <h1>Start Order</h1>   
                    <p></p> 
                    </div>
                </div>
            </div>

            <div class="container">
                
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab" tabindex="0">
                        <div class="row">
                            
                            <!-- #####################-->
                                  <%
                        List<Item> items = (List<Item>)session.getAttribute("items");
                        Double price = 00.00;
                        String img_src = "";
                        String description = "";
                        String name ="";
                        Long id = null;
                        
                        
                         if (!items.isEmpty()) {
                             
                             %>
                                     
                                <%
                        for (int idx = 0; idx < items.size(); idx++) {
                           
                                
                                Item item = items.get(idx);
                                 price = item.getPrice();
                                 img_src = "data:image;base64,"+ Base64.getEncoder().encodeToString(item.getImage());
                                 description = item.getDescription();
                                 name = item.getName();
                                 id = item.getId();
                            %>
                        
                         <div class="col-lg-3 col-sm-6">
                            <div class="menu-item bg-white shadow-on-hover">
                                <form action="AddItemToCartServlet.do" method="POST">
                                <img src="<%=img_src%>" alt="" width="50" height="200"/>
                                <div class="menu-item-content p-4">
                                    <h5 class="mt-1 mb-2"><a href="login.jsp"><%=name%></a></h5>
                                    <p class="small"><%=description%></p>
                                    <p class="small">Price: R<%=price%>0</p>
                                    <input type="hidden" name="item" value="<%=id%>">
                                    <input class="submit-btn" type="submit" value="Add To Cart">
                                </div>
                                </form>
                            </div>
                        </div>
                        
                        <% }

                            }else{
                                %>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-12 intro-text">
                                        <h1>We Out Of Stock Forgive Us</h1>   
                                        <p></p> 
                                        </div>
                                    </div>
                                </div>
                        <%
                            }
                       
                        %>
                            <!-- #####################-->

                        </div>
                    </div>
                </div>
            </div>
        </section>
    <!--</form>-->

    <section>

    </section>

    <!--Footer-->
    <footer>
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <p class="cafe_name">Nzuri cafeteria & Catering</p>
                        <img src="../img/logo.jpg"  class="mb-4" alt="">
                        <p>Write a simple paragraph</p>
                    
                        <div class="social-links">
                            <a href="#"><i class="ri-facebook-circle-fill">facebook</i></a>
                            <a href="#"><i class="ri-instagram-fill">insta</i></a>
                        </div>
                    </div>

                    <div class="col-lg-3 ms-auto">
                        <h6 class="text-white mb-4">CONTACT</h6>
                        <p class="mb-1">Phone Number: (000) 000 0000</p>
                        <p class="mb-1">E-mail: *******@gmail.com</p>
                        <p class="mb-0">Address: 346 Weir St, Pretoria Gardens, Pretoria, South Africa</p>
                    </div>

                    <div class="col-lg-3">
                        <h6 class="text-white mb-4">OPENING HOURS</h6>
                        <p class="mb-1">Monday - Saturday: 08:00 - 20:00</p>
                        <p class="mb-1">Sunday: Closed</p>
                    </div>

                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>
<!--        <div class="col-lg-4">
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
        </div>-->