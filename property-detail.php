<?php
include 'head.php';
if(isset($_GET['id'])){
    $id = $_GET['id'];
    
    $gt= dbConnect()->prepare("SELECT * FROM products WHERE id='$id'");
    $gt->execute();
    $r =$gt->fetch();
    $est = $r['name'];
    $loc = $r['location'];
    $dsc = $r['details'];
    $code = $r['code'];
    $prc = $r['price'];
} 


if(isset($_POST['submit'])){
    
    if(empty($_POST['name'])){
        $msg = "Your name is required";
        echo"<script>alert('$msg')</script> ";
    }
    elseif(empty($_POST['email'])){
        $msg = "Your email is required";
        echo"<script>alert('$msg')</script> ";
    }elseif(empty($_POST['message'])){
        $msg = "Please write your message";
        echo"<script>alert('$msg')</script> ";
    }else{
        
        //info@keraehomes.com
        // Define some constants
        define( "RECIPIENT_NAME", "Kerae Homes" );
        define( "RECIPIENT_EMAIL", "info@keraehomes.com" );


        // Read the form values
        $success = false;
        $userName = isset( $_POST['name'] ) ? preg_replace( "/[^\.\-\' a-zA-Z0-9]/", "", $_POST['name'] ) : "";
        $senderEmail = isset( $_POST['email'] ) ? preg_replace( "/[^\.\-\_\@a-zA-Z0-9]/", "", $_POST['email'] ) : "";
        $senderSubject ="Inquiry for ".$est;
        //$senderSubject = isset( $_POST['subject'] ) ? preg_replace( "/[^\.\-\_\@a-zA-Z0-9]/", "", $_POST['subject'] ) : "";
        $message = isset( $_POST['message'] ) ? preg_replace( "/(From:|To:|BCC:|CC:|Subject:|Content-Type:)/", "", $_POST['message'] ) : "";

        // If all values exist, send the email
        if ( $userName && $senderEmail && $senderSubject && $message) {
          $recipient = RECIPIENT_NAME . " <" . RECIPIENT_EMAIL . ">";
          $headers = "From: " . $userName . "";
          $msgBody = " Email: ". $senderEmail .  "<br> Subject: ". $senderSubject .  "<br> Message: " . $message . "";
          $success = mail( $recipient, $headers, $msgBody );

          //Set Location After Successsfull Submission
          //header('Location: contact.html?message=Successfull');
          $msg="Thank you for inquiring about ". $est.". We would get back to you shortly.";
          echo"<script>alert('$msg')</script> ";
        }

        else{
                //Set Location After Unsuccesssfull Submission
                //header('Location: index.html?message=Failed');
            $msg="Oops! Operation failed.";
            echo"<script>alert('$msg')</script> ";
        }

    }
    

}

?>


    <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/16.jpg);">
        <div class="auto-container">
            <div class="inner-container clearfix">
                <h1>Property Detail</h1>
                <ul class="bread-crumb clearfix">
                    <li><?php echo $est ?> Detail</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Sidebar Page Container -->
    <div class="sidebar-page-container">
        <div class="auto-container">
            <div class="upper-info-box">
                <div class="row">
                    <div class="about-property col-lg-8 col-md-12 col-sm-12">
                        <h2><?php echo $est ?></h2>
                        <div class="location"><i class="la la-map-marker"></i> <?php echo $loc ?></div>
                        <ul class="property-info clearfix">
                            <?php
                                $dd = dbConnect()->prepare("SELECT feature FROM features WHERE code=?");
                                $dd->execute([$code]);
                                while ($rd=$dd->fetch()) {
                            ?>
                            <li><i class="flaticon-dimension"></i> <?php echo $rd['feature'] ?></li>
                            <?php } ?>
                        </ul>
                    </div>
                    <div class="price-column col-lg-4 col-md-12 col-sm-12">
                        <span class="title">Price</span>
                        <div class="price"><b>N</b><?php echo number_format($prc, 2) ;?></div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <!--Content Side-->
                <div class="content-side col-lg-8 col-md-12 col-sm-12">
                    <div class="property-detail">
                        <div class="upper-box">
                            <div class="carousel-outer">
                                <ul class="image-carousel owl-carousel owl-theme">
                                    <?php
                                    $im= dbConnect()->prepare("SELECT * FROM images WHERE code=?");
                                    $im->execute([$code]);
                                    while($ro=$im->fetch()){
                                    $img= $ro['image'];
                                    ?>
                                    <li>
                                        <a href="admin/uploads/<?php echo $img ?>" class="lightbox-image" title="<?=$est?>">
                                            <img src="admin/uploads/<?php echo $img ?>" alt="">
                                        </a>
                                    </li>
                                    <?php }?>
                                </ul>

                                <ul class="thumbs-carousel owl-carousel owl-theme">
                                    <?php
                                    $im->execute();
                                    while($ro=$im->fetch()){
                                    $img= $ro['image'];
                                    ?>
                                    <li><img style="height: 151.75px;" src="admin/uploads/<?php echo $img ?>" alt=""></li>
                                    <?php } ?>
                                </ul>
                            </div>
                        </div>

                        <div class="lower-content">
                            <h3>Description</h3>
                            <blockquote>
                                <?php echo htmlspecialchars_decode($dsc); ?>
                            </blockquote>
                        </div>
                    </div>
                </div>

                <!--Sidebar Side-->
                <div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
                    <aside class="sidebar default-sidebar">



                         <!-- Categories -->
                        <div class="sidebar-widget categories">
                            <div class="sidebar-title"><h3>Property Features</h3></div>
                            <ul class="cat-list">
                            <?php
                                $dd2 = dbConnect()->prepare("SELECT feature FROM features WHERE code=?");
                                $dd2->execute([$code]);
                                while ($rd2=$dd2->fetch()) {
                            ?>
                                <li><a href="#"><?php echo $rd2['feature'] ?></a></li>
                            <?php } ?>
                            </ul>
                        </div>

                        <!-- Recent Properties -->
                        <div class="sidebar-widget recent-properties">
                            <div class="sidebar-title"><h3>Recent Products</h3></div>
                            <div class="widget-content">
                                <!-- Post -->
                                <?php
                                    $im= dbConnect()->prepare("SELECT * FROM (SELECT * FROM(SELECT products.id,products.name,products.location,images.image,images.code as code FROM products,images WHERE products.code=images.code ORDER BY products.id DESC)var1 GROUP BY code LIMIT 3)var2 ORDER BY rand()");
                                    $im->execute();
                                    while($ro=$im->fetch()){
                                    $img= $ro['image'];
                                    ?>
                                <article class="post">
                                    <div class="post-thumb">
                                        <a href="property-detail?id=<?=$ro['id']?>">
                                            <img src="admin/uploads/<?php echo $img ?>" alt="">
                                        </a>
                                    </div>
                                    <span class="location"><?php echo $ro['location'] ?></span>
                                    <h3><a href=""><?php echo $ro['name'] ?></a></h3>
                                </article>
                                    <?php } ?>
                            </div>
                        </div>
                    </aside>
                </div>
                
                
                
                
                <div class="col-md-12">
                    
                    <div class="review-comment-form">
                            <h3>Get in Touch</h3>
                            <form method="post" action="">
                                <div class="row">
                                    <div class="form-group col-lg-6 col-md-12 col-sm-12">
                                        <input type="text" name="name" placeholder="Full Name" required>
                                    </div>
                                    <div class="form-group col-lg-6 col-md-12 col-sm-12">
                                        <input type="text" name="email" placeholder="Email Address" required>
                                    </div>
                                    <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                        <textarea name="message" placeholder="Massage"></textarea>
                                    </div>
                                    <div class="form-group col-lg-6 col-md-6 col-sm-6">
                                        <div class="rating-box">
                                            <div class="text"> Your Rating:</div>
                                            <div class="rating"><a href="#"><span class="la la-star-o"></span></a><a href="#"><span class="la la-star-o"></span></a><a href="#"><span class="la la-star-o"></span></a><a href="#"><span class="la la-star-o"></span></a><a href="#"><span class="la la-star-o"></span></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6 col-sm-6 text-right">
                                        <button class="theme-btn btn-style-one" type="submit" name="submit">Subscribe now</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- End Sidebar Container -->

  <?php include 'foot.php'; ?>