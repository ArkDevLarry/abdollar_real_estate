
    <!-- Main Footer -->
    <footer class="main-footer" style="background-image: url(images/main-slider/image-30.jpg);">
        <div class="auto-container">
            <div class="upper-box">
                <div class="row">
                    <!-- Upper column -->
                    <div class="upper-column col-lg-3 col-md-12 col-sm-12">
                        <div class="footer-logo">
                            <figure class="image"><a href="index"><img src="images/footer-logo.png" alt=""></a></figure>
                        </div>
                    </div>

                    <!-- Upper column -->
                    <div class="upper-column col-lg-6 col-md-12 col-sm-12">
                        <div class="subscribe-form">
                            <form method="post" action="blog">
                                <div class="form-group">
                                    <input type="email" name="email" value="" placeholder="Enter Your Email" required="">
                                    <button type="submit" class="theme-btn btn-style-four">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- Upper column -->
                    <div class="upper-column col-lg-3 col-md-12 col-sm-12">
                        <div class="social-links">
                            <ul class="social-icon-two">
                                <li><a href="https://www.facebook.com/Abdollar-Homes-Consult-100932436054407/" target="_blank"><i class="la la-facebook"></i></a></li>
                                <li><a href="#"><i class="la la-twitter"></i></a></li>
                                <li><a href="#"><i class="la la-google-plus"></i></a></li>
                                <li><a href="#"><i class="la la-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!--Widgets Section-->
            <div class="widgets-section">
                <div class="row">
                    <!--Big Column-->
                    <div class="big-column col-xl-7 col-lg-12 col-md-12 col-sm-12">
                        <div class="row">


                            <!--Footer Column-->
                            <div class="footer-column col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="footer-widget cities-widget">
                                    <h2 class="widget-title">PROPERTY CITIES</h2>
                                    <div class="widget-content">
                                        <ul class="list clearfix">
                                            <?php
                                            $imm= dbConnect()->prepare("SELECT * FROM products LIMIT 10");
                                            $imm->execute();
                                            while($rr=$imm->fetch()){
                                                $esName= $rr['name'];
                                          ?>
                                            <li><a href="properties"><?php echo $esName ;?></a></li>
                                            <?php }  ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                             <div class="footer-column col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <!--Footer Column-->
                                <div class="footer-widget popular-posts">
                                    <h2 class="widget-title">Recent Posts</h2>
                                     <!--Footer Column-->
                                    <div class="widget-content">
                                        <?php
                                            $im= dbConnect()->prepare("SELECT * FROM (SELECT * FROM(SELECT products.name,products.location,images.image,images.code as code, products.created FROM products,images WHERE products.code=images.code ORDER BY products.id DESC)var1 GROUP BY code LIMIT 3)var2 ORDER BY rand()");
                                            $im->execute();
                                            while($r=$im->fetch()){?>
                                            <div class="post">
                                                <div class="thumb"><a href="property-detail"><img src="admin/uploads/<?php echo $r['image']; ?>" alt=""></a></div>
                                                <h4><a href="blog-detail"><?php echo $r['name']; ?> </a></h4>
                                                <span class="date"><?php echo $r['created']; ?></span>
                                            </div>
                                        <?php }?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Big Column-->
                    <div class="big-column col-xl-5 col-lg-12 col-md-12 col-sm-12">
                        <div class="row clearfix">


                            <!--Footer Column-->
                            <div class="footer-column col-xl-5 col-lg-6 col-md-6 col-sm-12">
                                <div class="footer-widget links-widget">
                                    <h2 class="widget-title">USEFUL LINKS</h2>
                                    <div class="widget-content">
                                        <ul class="list clearfix">
                                            <li><a href="properties">Rental Builidngs</a></li>
                                            <li><a href="properties">Browe all Categories</a></li>
                                            <li><a href="properties">Mortagages Rates</a></li>
                                            <li><a href="properties">Terms of use</a></li>
                                            <li><a href="properties">Privacy Policy</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <!--Footer Column-->
                            <div class="footer-column col-xl-7 col-lg-6 col-md-6 col-sm-12">
                                <div class="footer-widget contact-widget">
                                    <h2 class="widget-title">Get in Touch</h2>
                                    <div class="widget-content">
                                        <ul class="contact-list">
                                            <li><span class="la la-map-marker"></span> Peak Apartment estate, Sanyinbo Awoyaya Lekki Lagos state.</li>
                                            <li><span class="la la-phone"></span>(+234) 706 164 9579</li>
                                            <li><span class="la la-envelope"></span><a href="">info@abdollarhomes.com</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Footer Bottom-->
        <div class="footer-bottom">
            <div class="auto-container">
                <!--Scroll to top-->
                <div class="scroll-to-top scroll-to-target" data-target="html"><span class="la la-angle-double-up"></span></div>

                <div class="inner-container clearfix">
                    <div class="footer-nav">
                        <ul class="clearfix">
                           <li><a href="index">Home</a></li>
                           <li><a href="galary">Galary</a></li>
                           <li><a href="about">About</a></li>
                           <li><a href="contact">Contact</a></li>
                        </ul>
                    </div>
                    <div class="copyright-text">
                        <p>© Copyright <?php date('Y'); ?>  <a href="">Karae Homes LTD</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Main Footer -->
</div>
<!--End pagewrapper-->


<script src="js/jquery.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--Revolution Slider-->
<script src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
<script src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.migration.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
<script src="js/main-slider-script.js"></script>
<!--End Revolution Slider-->
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.fancybox.js"></script>
<script src="js/owl.js"></script>
<script src="js/wow.js"></script>
<script src="js/isotope.js"></script>
<script src="js/validate.js"></script>
<script src="js/appear.js"></script>
<script src="js/script.js"></script>
<!-- Color Setting -->
<!--Google Map APi Key-->
<script type="text/javascript" src="//maps.google.com/maps/api/js?key=AIzaSyCr4WUTzRVdoGV2TIPMFHYh7fgt2uG1km8"></script>
<script src="js/map-script.js"></script>
<!--End Google Map APi-->

<script src="js/color-settings.js"></script>
</body>
</html>
