<?php include 'head.php'; ?>
<?php include 'slider.php'; ?>

    
    
    <!-- About Us -->
    <section class="about-us" style="background-image: url(images/background/1.jpg);">
        <div class="auto-container">
            <div class="row">
                <!-- Info Column -->
                <div class="info-column col-xl-6 col-lg-12 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <div class="sec-title light">
                            <span class="title"><span style="color: #ffffff;">THE BEST PLACE TO FIND THE HOUSE YOU WANT</span></span>
                            <h2>ABDOLLAR HOMES & CONSULT</h2>
                        </div>

                        <div class="text"><strong>ABDOLLAR</strong> 
                            <p align="justify" style="color: #fff;"> We are dedicated to providing world-class service and market-leading expertise to our clients. We are passionate about providing the extra value that others simply will not. Fanatical integrity and consistently impressive results is the signature of our service. Our collaborative spirit and desire to grow will help us achieve the goals we set.</p>
                           <p align="justify" style="color: #fff;">We will make the families we serve feel special, creating raving fans, and help them truly win. We will succeed because we will not let our clients fail.</p>
                        </div>

                    </div>
                </div>

                <!-- Video Column -->
                <div class="video-column col-xl-6 col-lg-7 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <div class="video-box">
                            <figure class="image"><img src="images/resource/image-2.jpg" alt=""></figure>
                            <a href="#" class="play-now" data-fancybox="gallery" data-caption=""><i class="icon la la-play" aria-hidden="true"></i><span class="ripple"></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Us -->
    
    
    
    <!-- News Section -->
    <section class="news-section">
        <div class="auto-container">
            <div class="sec-title">
                <span class="title">NEWEST ADDITIONS</span>
                <h2>HOTTEST PROPERTIES</h2>
            </div>

            <div class="row">
                <!-- News Block -->
                <?php
                $q = dbConnect()->prepare("SELECT * FROM products ORDER BY RAND() LIMIT 3");
                $q->execute();
                $i =0;
                while($rr=$q->fetch()){
                
                
                $eid = $rr['id'];
                $propName = $rr['name'];
                $propDesc = $rr['details'];
                $propLoc= $rr['location'];
                $propStatus= $rr['status'];
                $propCode = $rr['code'];
                    
                           ?>
                       
                         <div class='news-block col-lg-4 col-md-6 col-sm-12'>
                              <div class='inner-box'>
                                  <div class='image-box'>
                                      <div class='single-item-carousel owl-carousel owl-theme'>
                                          <?php
                                            $im= dbConnect()->prepare("SELECT * FROM images WHERE code=?");
                                            $im->execute([$propCode]);
                                            while($r=$im->fetch()){
                                                $img= $r['image'];
                                          ?>

                                          <figure class='image'>
                                            <a href='property-detail?id=<?php echo $eid; ?>'>
                                                <div>
                                                <span style="background: #ce411d; padding: 8px; color: white; font-weight:600;position:absolute;z-index:222;"><?php echo $propStatus ?></span>
                                                <img src='admin/uploads/<?php echo $img ?>' alt='Abdollar Homes' style="width: 200 !important; height: 200 !important;">
                                                </div>
                                            </a>
                                          </figure>
                                            <?php }?>
                                      </div>
                                  </div>
                                  <div class='lower-content'>
                                      <ul class='info'>
                                          <li><span><?php echo $propName.' | '.$propLoc;?></span></li>
                                      </ul>
                                      <h5>
                                          <a href='property-detail?id=<?php echo $eid; ?>' style="color: #111;">
                                              <p align="justify"><?php echo htmlspecialchars_decode(substr($propDesc, 0 , 300)) ;?>...</p>
                                          </a>
                                      </h5>
                                  </div>
                              </div>
                          </div>
                    <?php  }?>
            </div>
        </div>
    </section>
    <!--End News Section -->
    
    
    <!-- App Section -->
    <section class="app-section" style="background-image: url(images/background/17.jpg);">
        <div class="auto-container">
            <div class="row">
                <!-- Image Box -->
                <div class="image-column order-last col-lg-5 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <div class="image-box">
                            <figure class="image"><img src="images/resource/hand_presenting.jpg" alt=""></figure>
                        </div>
                    </div>
                </div>
                <!-- Content Box -->
                <div class="content-column col-lg-7 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <h2>Property Find On Your Finger Tip</h2>
                        <div class="text">
                        Communication, commitment, and client care are the core values that emanate throughout every activity that we undertake. By listening and taking the time to understand our clients’ needs, we’re able to purvey comprehensive, holistic real estate advice. We’re proud to consistently deliver exceptional results to optimise the value of our clients’ property assets, at home and abroad.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End App Section -->
    <?php // include 'prop.php'; ?>
    
    
    
 


<?php include 'foot.php'; ?>