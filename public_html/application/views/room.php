
  <style>
   
    swiper-container {
      width: 100%;
      height: 100%;
    }

    swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    swiper-slide img {
      display: block;
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    
    .booknow{
        margin:20px 0;
        width:20%;
    }
    
    .text-title{
        margin: 45px 0 35px;
    }
    
    .amenities{
        width: 100%;
        margin: 30px auto;
        color: #404040;
        text-align: left;
        column-count: 2;
        list-style-type: disc;
        display: block;
    }
    
    .amenities ul li{
        list-style: disc;
        width: 95%;
        margin-bottom: 6px;
        padding-left: 15px;
    }
    
    .swiper-button-next svg, .swiper-button-prev svg {
        fill:green !important;
        color:green !important;
    }
    
    .slides{
        height:600px;
        overflow:hidden
    }
    
    @media(max-width: 600px){
        .amenities{
            column-count: 1;
        }
        .booknow{
            width: auto;
        }
        
        .slides{
            height:300px;
        }
    }
    
    
  </style>

    <nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/">Home</a></li>
    <li class="breadcrumb-item"><a href="/">Accommodation</a></li>
    <li class="breadcrumb-item active" aria-current="page"><?=$roomdetails->roomtype;?></li>
  </ol>
</nav>
 
 <div class="container-fluid bg-white">
  <div class="container">
    
        <div class="col-lg-12 col-sm-12 slides" >
            <swiper-container class="mySwiper" navigation="true" >
                <?php
                
                $gallery = $roomdetails->room_gallery;
                
                if(!empty($gallery)){
                    // $gallery .= ','.$roomdetails->room_imagename;
                    $gallery = explode(',', $gallery);
                    
                    if(count($gallery) > 0){
                        foreach($gallery as $image){
                            $image = $this->config->base_url().$image;
                            echo "<swiper-slide ><img src='$image'></swiper-slide>";
                        }
                    }
                }else{
                    $image = $this->config->base_url().$roomdetails->room_imagename;
                echo "<swiper-slide ><img src='$image'></swiper-slide>";
                }
                
                ?>
            </swiper-container>
            
            <!-- Slider main container -->
        </div>
        
        <div class="col-lg-12 col-sm-12">
            <div class="inner-wrapper justify-content-center text-center">
                    <h1 class="text-title text-center " style="text-transform: uppercase;">
                        <?=$roomdetails->roomtype;?> 
                    </h1>
                    <div class="intro-content text-center">
                        <div class="text-center " style="font-size:18px;color:rgba(100,100,100,1)">
                            <p></p><p><?=nl2br($roomdetails->roomdescription)?></p><p></p>
                        </div> 
                    </div>
                    <?php echo form_open('hotel/roomdetails');
                    
                        $_SESSION['checkin'] = date("Y-m-d");
                        $_SESSION['checkout'] = date("Y-m-d", strtotime("tomorrow"));
                    ?>
                        
                        <?php echo form_open('roomdetails');?>
                                            <input name="roomid" type="hidden" value="<?php echo html_escape($roomdetails->roomid);?>" />
                                            <div> <input name="send" type="submit" value="Book Now" class="btn btn-primary" /></div>
                                            <?php echo form_close() ?>
            </div>
            <hr>
            <div class="inner_wrapper text-center">
                <h1 class="text-title" style="text-transform: uppercase;">in-room amenities</h1>   
                <div class="amenities text-left">
                    
                    <ul>
                        <?php 
                        if($amenities){
                        foreach($amenities as $amenity){?>
                            <li><?php echo html_escape($amenity->amenity);?></li>
                        <?php }} ?>
                        
                    </ul>
                    
                </div>
            </div>
        </div>
    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
