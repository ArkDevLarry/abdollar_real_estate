<?php include 'head.php'; ?>

    <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/16.jpg);">
        <div class="auto-container">
            <div class="inner-container clearfix">
                <h1>Contact Us</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="index">Home</a></li>
                    <li>Contact Us</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Contact Section -->
    <section class="contact-section style-two">
        <div class="auto-container">
            <div class="row">
                <!-- Form Column -->
                <div class="form-column col-lg-8 col-md-6 col-sm-12">
                    <div class="inner-column">
                        <div class="title-box">
                            <h2>Get in Touch</h2>
                            <div class="text">Don’t Hesitate to Contact with us for any kind of information</div>
                        </div>

                        <!-- Contact Form -->
                        <div class="contact-form">
                            <form method="post" action="sendemail.php" id="contact-form">
                                <div class="form-group">
                                    <input type="text" name="username" placeholder="Name" required>
                                </div>

                                <div class="form-group">
                                    <input type="email" name="email" placeholder="Email" required>
                                </div>

                                <div class="form-group">
                                    <input type="text" name="subject" placeholder="Subject" required>
                                </div>

                                <div class="form-group">
                                    <textarea name="message" placeholder="Massage"></textarea>
                                </div>

                                <div class="form-group">
                                    <button class="theme-btn btn-style-one" type="submit" name="submit-form">Send Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Info Column -->
                <div class="info-column col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-column">
                        <!-- Info Box -->
                        <div class="contact-info-box">
                            <div class="inner-box">
                                <span class="icon la la-phone text-white"></span>
                                <h4>Phones</h4>
                                <ul>
                                    <li>(+234) 819 1191 19</li>
                                    <li>(+234) 001 0020 03</li>
                                </ul>
                            </div>
                        </div>

                        <!-- Info Box -->
                        <div class="contact-info-box">
                            <div class="inner-box">
                                <span class="icon la la-envelope-o text-white"></span>
                                <h4>Emails</h4>
                                <ul>
                                    <li>info@abdollarhomes.com</li>
                                </ul>
                            </div>
                        </div>

                        <!-- Info Box -->
                        <div class="contact-info-box">
                            <div class="inner-box">
                                <span class="icon la la-globe text-white"></span>
                                <h4>Address</h4>
                                <ul>
                                    <li>Km 58, Beautiful Street, Awesome Address, Lagos, Nigeria.</li>
                                </ul>
                            </div>
                        </div>

                        <!-- Info Box -->
                        <div class="contact-info-box follow-us">
                            <div class="inner-box">
                                <h4>Follow Us:</h4>
                                <ul class="social-icon-three">
                                    <li><a href="#"><span class="la la-facebook-f"></span></a></li>
                                    <li><a href="#"><span class="la la-twitter"></span></a></li>
                                    <li><a href="#"><span class="la la-google-plus"></span></a></li>
                                    <li><a href="#"><span class="la la-instagram"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Contact Section -->

    <!-- Map Section -->
    <section class="map-section">
        <div class="map-outer">
            <!--Map Canvas-->
            <div class="map-canvas"
                data-zoom="20"
                data-lat="6.467935"
                data-lng="3.662289"
                data-type="roadmap"
                data-hue="#ffc400"
                data-title="Abdollar Homes"
                data-icon-path="images/icons/map-marker.png"
                data-content="No. 6, Amity Rd, Fidiso Estate, Kingdom hall bus-stop, Abijo, Lagos, Nigeria.<br><a href='mailto:'>Abdollar Homes</a>">
            </div>
        </div>
    </section>
    <!-- End Map Section -->
<?php  include 'foot.php'; ?>


</body>
</html>
