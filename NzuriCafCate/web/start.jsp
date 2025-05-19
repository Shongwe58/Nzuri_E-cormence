<%-- 
    Document   : start.jsp
    Created on : May 17, 2025, 5:04:33 PM
    Author     : shong
--%>

<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.entities.Item"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Landing Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet"/>

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
                <a class="nav-link" href="signup.jsp">Sign-up</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="login.jsp">Sign-in</a>
              <li class="nav-item">
                <a class="nav-link" href="#about">About</a>
              </li>
            </ul>
          </div>
        </div>
    </nav>
      
    <!-- Hero Slider --> 
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item text-center bg-cover vh-50 active slide-1">
            <div class="container h-100 d-flex align-items-center">
                <div class="col-lg-8 justify-content-center">
                    <h6>WELCOME TO NZURI CAFE & CATERING</h6>
                    <h1 class="display-1 fw-bold text-white">Enjoy Our Best Meal</h1>
                </div>
            </div>
          </div>
          <div class="carousel-item text-center bg-cover vh-50 slide-2">
            <div class="container h-100 d-flex align-items-center">
                <div class="col-lg-8 justify-content-center">
                    <h6 >WELCOME TO NZURI CAFE & CATERING</h6>
                    <h1 class="display-1 fw-bold text-white">Enjoy Our Best Meal</h1>
                </div>
            </div>
          </div>
        </div>
    </div>
    

    <!-- Menu-->
    <section id="menu" class="bg-light">
<!--        <div class="container">
            <div class="row">
                <div class="col-12 intro-text">
                <h1>Explorer Our Menu</h1>   
                <p></p> 
                </div>
            </div>
        </div>-->

        <div class="container">
            <ul class="nav nav-pills mb-3 justify-content-center" id="pills-tab" role="tablist">
                <li class="nav-item" role="presentation">
                  <button class="nav-link active" id="pills-all-tab" data-bs-toggle="pill" data-bs-target="#pills-all" type="button" role="tab" aria-controls="pills-all" aria-selected="true">All Items</button>
                </li>
            </ul>
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab" tabindex="0">
                    <div class="row">
                        <%
                        List<Item> items = (List<Item>)session.getAttribute("items");
                        Double price = 00.00;
                        String img_src = "";
                        String description = "";
                        String name ="";
                        
                        
                         if (!items.isEmpty()) {
                             
                             %>
                                        <div class="container">
                                    <div class="row">
                                        <div class="col-12 intro-text">
                                        <h1>Explorer Our Menu</h1>   
                                        <p></p> 
                                        </div>
                                    </div>
                                </div>
                                <%
                        for (int idx = 0; idx < items.size(); idx++) {
                           
                                    
                                
                                Item item = items.get(idx);
                                 price = item.getPrice();
                                 img_src = "data:image;base64,"+ Base64.getEncoder().encodeToString(item.getImage());
                                 description = item.getDescription();
                                 name = item.getName();
                            %>
                        
                         <div class="col-lg-3 col-sm-6">
                           <a href="login.jsp"> <div class="menu-item bg-white shadow-on-hover">
                                <img src="<%=img_src%>" alt=""width="50" height="200"/>
                                <div class="menu-item-content p-4">
                                    <h5 class="mt-1 mb-2"><%=name%></h5>
                                    <p class="small"><%=description%></p>
                                    <p class="small">Price: R<%=price%></p>
                                </div>
                            </div></a>
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
                       


                    </div>
                </div>
            </div>
        </div>
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
