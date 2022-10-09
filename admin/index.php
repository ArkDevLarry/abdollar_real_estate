<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Login To Portfolio</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="images/favicon.ico" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Typography CSS -->
    <link rel="stylesheet" href="css/typography.css" />
    <!-- Style CSS -->
    <link rel="stylesheet" href="css/style.css" />
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css" />
</head>

<body>
    <!-- loader Start -->
    <div id="loading">
        <div id="loading-center"></div>
    </div>
    <!-- loader END -->
    <!-- Sign in Start -->
    <section class="sign-in-page">
        <div class="container bg-white mt-5 p-0">
            <div class="row no-gutters">
                <div class="col-sm-6 align-self-center">
                    <div class="sign-in-from">
                        <h1 class="mb-0">Sign in</h1>
                        <p>Enter your email address and password to access admin panel.</p>
                        <form method="POST" id="contactForm" class="mt-4">
                        <p class="retmessage"></p>
                            <div class="form-group">
                                <label for="email">Email address</label>
                                <input type="email" id="email" class="form-control mb-0" name="email"
                                    placeholder="Enter email" />
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <a href="#" class="float-right">Forgot password?</a>
                                <input type="password" id="password" class="form-control mb-0" name="password"
                                    placeholder="Password" />
                            </div>
                            <div class="d-inline-block w-100">
                                <div class="custom-control custom-checkbox d-inline-block mt-2 pt-1">
                                    <input type="checkbox" class="custom-control-input" id="customCheck1" />
                                    <label class="custom-control-label" for="customCheck1">Remember Me</label>
                                </div>
                                <button type="submit" id="subBtn" class="btn btn-primary float-right">
                                    Sign in
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-sm-6 text-center">
                    <div class="sign-in-detail text-white">
                        <a class="sign-in-logo mb-5" href="#"><img src="images/logo-white.png" class="img-fluid"
                                alt="logo" /></a>
                        <div class="owl-carousel" data-autoplay="true" data-loop="true" data-nav="false"
                            data-dots="true" data-items="1" data-items-laptop="1" data-items-tab="1"
                            data-items-mobile="1" data-items-mobile-sm="1" data-margin="0">
                            <div class="item">
                                <img src="images/login/1.png" class="img-fluid mb-4" alt="logo" />
                                <h4 class="mb-1 text-white">Manage your orders</h4>
                                <p>
                                    It is a long established fact that a reader will be
                                    distracted by the readable content.
                                </p>
                            </div>
                            <div class="item">
                                <img src="images/login/1.png" class="img-fluid mb-4" alt="logo" />
                                <h4 class="mb-1 text-white">Manage your orders</h4>
                                <p>
                                    It is a long established fact that a reader will be
                                    distracted by the readable content.
                                </p>
                            </div>
                            <div class="item">
                                <img src="images/login/1.png" class="img-fluid mb-4" alt="logo" />
                                <h4 class="mb-1 text-white">Manage your orders</h4>
                                <p>
                                    It is a long established fact that a reader will be
                                    distracted by the readable content.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Sign in END -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script>
        const form = document.querySelector("#contactForm"),
            continueBtn = form.querySelector("#subBtn");
        const messageRet = form.querySelector(".retmessage");

        form.onsubmit = (e) => {
            e.preventDefault(); //preventing form from submitting
        };

        continueBtn.onclick = () => {
            //let's start Ajax
            let xhr = new XMLHttpRequest(); //creating XML object
            xhr.open("POST", "ajaxlogin.php", true);
            xhr.onload = () => {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        let data = xhr.response;
                        if (data === "<div class='success-txt'>Success, redirecting to your account.</div>") {
                            messageRet.innerHTML = data;
                            location.href = "dashboard.php";
                        } else {
                            messageRet.innerHTML = data;
                        }
                    }
                }
            };
            // we have to send the form data through ajax to php
            let formData = new FormData(form); //creating new formData object
            xhr.send(formData); //sending the form data to php
        };
    </script>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Appear JavaScript -->
    <script src="js/jquery.appear.js"></script>
    <!-- Countdown JavaScript -->
    <script src="js/countdown.min.js"></script>
    <!-- Counterup JavaScript -->
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <!-- Wow JavaScript -->
    <script src="js/wow.min.js"></script>
    <!-- Apexcharts JavaScript -->
    <script src="js/apexcharts.js"></script>
    <!-- Slick JavaScript -->
    <script src="js/slick.min.js"></script>
    <!-- Select2 JavaScript -->
    <script src="js/select2.min.js"></script>
    <!-- Owl Carousel JavaScript -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- Magnific Popup JavaScript -->
    <script src="js/jquery.magnific-popup.min.js"></script>
    <!-- Smooth Scrollbar JavaScript -->
    <script src="js/smooth-scrollbar.js"></script>
    <!-- Chart Custom JavaScript -->
    <script src="js/chart-custom.js"></script>
    <!-- Custom JavaScript -->
    <script src="js/custom.js"></script>
</body>

</html>