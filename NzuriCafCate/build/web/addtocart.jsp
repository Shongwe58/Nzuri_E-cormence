<%-- 
    Document   : addtocart
    Created on : 17 May 2024, 2:32:35 AM
    Author     : loveness
--%>

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
                <a class="nav-link" href="landing_page.jsp">Logout</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="cart.jsp">View Cart</a>
              </li>
            </ul>
          </div>
        </div>
    </nav>

    
    <!-- Menu-->
    <form action="AddItemToCartServlet.do" method="POST">
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
                <ul class="nav nav-pills mb-3 justify-content-center" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="pills-all-tab" data-bs-toggle="pill" data-bs-target="#pills-all" type="button" role="tab" aria-controls="pills-all" aria-selected="true">All Items</button>
                    </li>
                </ul>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab" tabindex="0">
                        <div class="row">
                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Grilled Quater Leg Chicken & Pap</a></h5>
                                        <p class="small">with salads(Chakalaka and/or Coslow)</p>
                                        <p class="small">Price: R55.00</p>
                                        <input type="hidden" name="item" value="100">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Steak & Pap</a></h5>
                                        <p class="small">with salads(Chakalaka and/or Coslow)</p>
                                        <p class="small">Price: R60.00</p>
                                        <input type="hidden" name="item" value="101">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Grilled Chicken Quater Leg, Wors & Pap</a></h5>
                                        <p class="small">with salads(Chakalaka and/or Coslow)</p>
                                        <p class="small">Price: R75.00</p>
                                        <input type="hidden" name="item" value="102">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Steak, Wors & Pap</a></h5>
                                        <p class="small">with salads(Chakalaka and/or Coslow)</p>
                                        <p class="small">Price: R80.00</p>
                                        <input type="hidden" name="item" value="103">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Maotwana Mix Plate & Pap</a></h5>
                                        <p class="small">with salads(Chakalaka and/or Coslow)</p>
                                        <p class="small">Price: R35.00</p>
                                        <input type="hidden" name="item" value="104">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Wors Stew & Pap</a></h5>
                                        <p class="small">with salads(Chakalaka and/or Coslow)</p>
                                        <p class="small">Price: R45.00</p>
                                        <input type="hidden" name="item" value="105">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Nyama Yenhloko & Pap</a></h5>
                                        <p class="small">with salads(Chakalaka and/or Coslow)</p>
                                        <p class="small">Price: R50.00</p>
                                        <input type="hidden" name="item" value="106">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Mogodu & Pap</a></h5>
                                        <p class="small">with salads(Chakalaka and/or Coslow)</p>
                                        <p class="small">Price: R50.00</p>
                                        <input type="hidden" name="item" value="107">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Chicken Stew & Pap</a></h5>
                                        <p class="small">with salads(Chakalaka and/or Coslow)</p>
                                        <p class="small">Price: R45.00</p>
                                        <input type="hidden" name="item" value="108">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Beef Stew & Pap</a></h5>
                                        <p class="small">with salads(Chakalaka and/or Coslow)</p>
                                        <p class="small">Price: R50.00</p>
                                        <input type="hidden" name="item" value="109">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Fish & Chips</a></h5>
                                        <p class="small">Combo</p>
                                        <p class="small">Price: R50.00</p>
                                        <input type="hidden" name="item" value="110"">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Russian & Chips</a></h5>
                                        <p class="small">Combo</p>
                                        <p class="small">Price: R35.00</p>
                                        <input type="hidden" name="item" value="111">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Kota</a></h5>
                                        <p class="small">with Chips, French, Vienna</p>
                                        <p class="small">Price: R20.00</p>
                                        <input type="hidden" name="item" value="112">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Kota</a></h5>
                                        <p class="small">with Chips, French, Vienna, Cheese</p>
                                        <p class="small">Price: R23.00</p>
                                        <input type="hidden" name="113">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Kota</a></h5>
                                        <p class="small">with Chips, French, Vienna, Cheese and Egg</p>
                                        <p class="small">Price: R26.00</p>
                                        <input type="hidden" name="item" value="114">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Mince Kota</a></h5>
                                        <p class="small">with Mash, Mince, Acthar</p>
                                        <p class="small">Price: R23.00</p>
                                        <input type="hidden" name="item" value="115">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Mince Kota</a></h5>
                                        <p class="small">with Mash, Mince, Acthar, Leotwana</p>
                                        <p class="small">Price: R25.00</p>
                                        <input type="hidden" name="item" value="116">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Mince Kota</a></h5>
                                        <p class="small">with Mash, Mince, Acthar, Cheese</p>
                                        <p class="small">Price: R28.00</p>
                                        <input type="hidden" name="item" value="117">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Sandwich</a></h5>
                                        <p class="small">with Cheese and tomato</p>
                                        <p class="small">Price: R15.00</p>
                                        <input type="hidden" name="item" value="118">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Sandwich</a></h5>
                                        <p class="small">with Cheese, Egg and Tomato</p>
                                        <p class="small">Price: R20.00</p>
                                        <input type="hidden" name="item" value="119">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Sandwich</a></h5>
                                        <p class="small">with Cheese and Bacon</p>
                                        <p class="small">Price: R25.00</p>
                                        <input type="hidden" name="item" value="120">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Sandwich</a></h5>
                                        <p class="small">with Cheese, Egg and Bacon</p>
                                        <p class="small">Price: R32.00</p>
                                        <input type="hidden" name="item" value="121">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Chicken Mayo Sandwich</a></h5>
                                        <p class="small"></p>
                                        <p class="small">Price: R26.00</p>
                                        <input type="hidden" name="item" value="122">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Dagwood</a></h5>
                                        <p class="small"></p>
                                        <p class="small">Price: R50.00</p>
                                        <input type="hidden" name="item" value="123">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6">
                                <div class="menu-item bg-white shadow-on-hover">
                                    <img src="img/logo.jpg" alt=""><!--width="10" height="50"-->
                                    <div class="menu-item-content p-4">
                                        <h5 class="mt-1 mb-2"><a href="#">Chips</a></h5>
                                        <p class="small">Small, Medium, Large</p>
                                        <p class="small">Price: R20.00 - R30.00</p>
                                        <input type="hidden" name="item" value="124">
                                        <input class="submit-btn" type="submit" value="Add To Cart">
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>

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
