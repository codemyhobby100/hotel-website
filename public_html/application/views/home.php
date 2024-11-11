<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 col-md-10 col-lg-8 text-center">

            <?php if($this->session->userdata('message')) { ?>
            <div class="alert alert-success alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <?php echo $this->session->userdata('message'); 
						 $this->session->unset_userdata('message');
						?>
            </div>
            <?php } ?>
            <?php if ($this->session->userdata('exception')) { ?>
            <div class="alert alert-danger alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <?php echo $this->session->userdata('exception');
						 $this->session->unset_userdata('exception');
						 ?>
            </div>
            <?php } ?>
            <?php if (validation_errors()) { ?>
            <div class="alert alert-danger alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <?php echo validation_errors(); ?>
            </div>
            <?php } ?>
        </div>
    </div>
</div>
<div class="hero-header">
    <div class="header-slider header-slider-preloader slider-two" id="home">
        <div class="animation-slide owl-carousel owl-theme" id="animation-slide">
    
             <div class="item">
                <img src ="https://macjak.co.tz/assets/img/banner/2024-10-19/21.jpg" />
            </div> 
                        
            <div class="item">
                <img src="https://macjak.co.tz/assets/img/banner/2024-10-19/22.jpg"/> 
            </div> 
            
        </div>
    </div>
    <!-- /.End of header slider -->
    <div class="container">
        <div class="hero-header_wrap">
            <div class="row align-items-center">
                <div class="col-12 col-md-7">
                    <div class="header-text my-5">
                        <?php $slidertext=$this->db->select('*')->from('tbl_widget')->where('widgetid',1)->get()->row();?>
                        <h6 class="header-subtitle"><?php echo html_escape($slidertext->widget_name);?></h6>
                        <h1 class="header-title"><?php echo html_escape($slidertext->widget_title);?></h1>
                        <p class="header-des mb-0"><?php echo html_escape($slidertext->widget_desc);?></p>
                    </div>
                </div>
                <div class="col-md-5 d-none d-md-block">
                    <div class="offer-carousel owl-carousel owl-theme">
                        <?php foreach($randoffer as $myoffer){
								$offerDate = date("F d", strtotime($myoffer->offer_date));
								$offertotal=$myoffer->offer;
								$tax=$this->settinginfo->vat;
								$taxamount=$offertotal*$tax/100;
					 			$servicecharge=$this->settinginfo->servicecharge;
								$serviceamnt=$offertotal*$servicecharge/100;
								$nextdate=date('Y-m-d',strtotime($myoffer->offer_date. "+1 days"));
								$roominfo= $this->db->select('*')->from('roomdetails')->where('roomid',$myoffer->roomid)->get()->row();  
								?>
                        <div class="offer d-flex align-items-center text-center">
                            <div class="w_100">
                                <div class="ribbon">
                                    <span><?php if($this->storecurrency->position==1){echo $this->storecurrency->curr_icon;}?><?php echo html_escape($offertotal);?><?php if($this->storecurrency->position==2){echo $this->storecurrency->curr_icon;}?></span>
                                </div>
                                <h2 class="text-white mb-4 font-weight-bold">
                                    <?php echo html_escape($myoffer->offertitle);?></h2>
                                <h3 class="text-white fs-21"><?php echo html_escape($myoffer->offertext);?></h3>
                                
                                <a href="<?php echo base_url();?>roomdetails?checkin=<?php echo $myoffer->offer_date;?>&checkout=<?php echo $nextdate;?>&adults=<?php echo $roominfo->capacity;?>&children=1&roomid=<?php echo $myoffer->roomid;?>"
                                    class="btn btn-primary mt-5"><?php echo display('book_by') ?>
                                    <?php echo html_escape($offerDate);?></a>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.End of hero header -->
    <div class="slider_preloader">
        <div class="slider_preloader_status">&nbsp;</div>
    </div>
    <!-- /.End of slider preloader -->
</div>
<!-- /.End of hero header -->
<div class="container">
    <div class="search-area">
        <?php echo form_open('user/roomlist');?>
        <div class="row no-gutters custom-search-input-2 search-form-content">
            <div class="search-option col-12 col-sm-6 col-lg-3">
                <label><?php echo display('check_in')?> <i class="ti-calendar"></i></label>
                <input id="daterangepicker" class="form-control" type="text" name="checkin"
                    value="<?php date('Y-m-d');?>">
            </div>
            <div class="search-option col-12 col-sm-6 col-lg-3">
                <label><?php echo display('check_out')?> <i class="ti-calendar"></i></label>
                <input id="daterangepicker2" class="form-control" type="text" name="checkout"
                    value="<?php date('Y-m-d');?>">
            </div>
            <div class="search-option col-12 col-sm-6 col-lg-3">
                <div class="d-flex align-items-center justify-content-between h-50 border-bottom w-100 px-lg-3 px-xl-4">
                    <div class="search-title fs-13 text-uppercase"><?php echo display('adults')?></div>
                    <div class="d-flex justify-content-center align-items-center number-spinner">
                        <a class=" btn-pm" data-dir="dwn"><span class="ti-minus"></span></a>
                        <input type="text" class="spinner" name="adults" value="2">
                        <a class=" btn-pm" data-dir="up"><span class="ti-plus"></span></a>
                    </div>
                </div>
                <div class="d-flex align-items-center justify-content-between h-50 w-100 px-lg-3 px-xl-4">
                    <div class="search-title fs-13 text-uppercase"><?php echo display('children')?></div>
                    <div class="d-flex justify-content-center align-items-center children">
                        <a class=" btn-pm" data-dir="dwn"><span class="ti-minus"></span></a>
                        <input type="text" class="spinner" name="children" value="0">
                        <a class=" btn-pm" data-dir="up"><span class="ti-plus"></span></a>
                    </div>
                </div>
            </div>
            <?php $hotline=$this->db->select('*')->from('tbl_slider')->where('slid',75)->get()->row();?>
            <div class="col-lg-3">
                <button type="submit" class="btn">
                    <span><?php echo display('need_help')?>
                        <p><?php echo html_escape($hotline->subtitle);?></p></span>
                    <?php echo display('check_availability')?>
                </button>
            </div>
        </div>
        <?php echo form_close() ?>
    </div>
</div>
<!-- /.End of search area -->
<div class="section section-feature bg-gray position-relative">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-3 mb-4 mb-md-0">
                <div class="feature-box text-center">
                    <?php $pig_mpney=$this->db->select('*')->from('tbl_slider')->where('slid',58)->get()->row();?>
                    <div class="feature-box-icon mb-3">
                    <img src="<?php echo html_escape(base_url().(!empty($pig_mpney->image)?$pig_mpney->image:'assets/img/Home-page/save_line_all.png'));?>"
                            alt="Card image" class="img-fluid">
                    </div>
                    <?php $saveupto=$this->db->select('*')->from('tbl_widget')->where('widgetid',7)->get()->row();?>
                    <h4 class="feature-box-title fs-21 font-weight-600">
                        <?php echo html_escape($saveupto->widget_title);?></h4>
                    <p class="mb-0"><?php echo html_escape($saveupto->widget_desc);?></p>
                </div>
            </div>
            <!-- /.End of feature -->
            <div class="col-sm-6 col-md-3 mb-4 mb-md-0">
                <div class="feature-box text-center">
                    <div class="feature-box-icon mb-3">
                        <?php $tik_mark=$this->db->select('*')->from('tbl_slider')->where('slid',59)->get()->row();?>
                        <img src="<?php echo html_escape(base_url().(!empty($tik_mark->image)?$tik_mark->image:'assets/img/Home-page/save_line_all.png'));?>"
                            alt="Card image" class="img-fluid">
                    </div>
                    <?php $best=$this->db->select('*')->from('tbl_widget')->where('widgetid',8)->get()->row();?>
                    <h4 class="feature-box-title fs-21 font-weight-600"><?php echo html_escape($best->widget_title);?>
                    </h4>
                    <p class="mb-0"><?php echo html_escape($best->widget_desc);?></p>
                </div>
            </div>
            <!-- /.End of feature -->
            <div class="col-sm-6 col-md-3 mb-4 mb-sm-0">
                <div class="feature-box text-center">
                    <?php $wifi=$this->db->select('*')->from('tbl_slider')->where('slid',60)->get()->row();?>
                    <div class="feature-box-icon mb-3">
                    <img src="<?php echo html_escape(base_url().(!empty($wifi->image)?$wifi->image:'assets/img/Home-page/save_line_all.png'));?>"
                            alt="Card image" class="img-fluid">
                    </div>
                    <?php $wifi=$this->db->select('*')->from('tbl_widget')->where('widgetid',9)->get()->row();?>
                    <h4 class="feature-box-title fs-21 font-weight-600"><?php echo html_escape($wifi->widget_title);?>
                    </h4>
                    <p class="mb-0"><?php echo html_escape($wifi->widget_desc);?></p>
                </div>
            </div>
            <!-- /.End of feature -->
            <div class="col-sm-6 col-md-3">
                <div class="feature-box text-center">
                    <?php $nights=$this->db->select('*')->from('tbl_slider')->where('slid',61)->get()->row();?>
                    <div class="feature-box-icon mb-3">
                    <img src="<?php echo html_escape(base_url().(!empty($nights->image)?$nights->image:'assets/img/Home-page/save_line_all.png'));?>"
                            alt="Card image" class="img-fluid">
                    </div>
                    <?php $enjoy=$this->db->select('*')->from('tbl_widget')->where('widgetid',10)->get()->row();?>
                    <h4 class="feature-box-title fs-21 font-weight-600"><?php echo html_escape($enjoy->widget_title);?>
                    </h4>
                    <p class="mb-0"><?php echo html_escape($enjoy->widget_desc);?></p>
                </div>
            </div>
            <!-- /.End of feature -->
        </div>
    </div>
</div>
<!-- /.End of feature -->
<div class="section section-about">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-5 col-md-6 col-12">
                <?php foreach($banner_homemiddle as $homemiddle){ ?>
                <div class="position-relative">
                <img src="<?php echo base_url().html_escape(!empty($homemiddle->image)?$homemiddle->image:'assets/img/Home-page/below_slider.png');?>"
                        class="rounded img-fluid mx-auto d-block" alt="">
                    <div class="play-icon">
                        <a href="<?php echo html_escape($homemiddle->slink);?>" class="play-btn video-play-icon">
                            <i class="mdi mdi-play text-primary rounded-circle bg-white shadow"></i>
                        </a>
                    </div>
                </div>
                <?php } ?>
            </div>
            <!--end col-->

            <div class="col-lg-7 col-md-6 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                <div class="ml-lg-5 ml-md-4">
                    <div class="section-title">
                        <?php $hmd=$this->db->select('*')->from('tbl_widget')->where('widgetid',3)->get()->row();?>
                        <span class="badge badge-pill badge-soft-primary"><?php echo display('about') ?></span>
                        <h4 class="title mt-3 mb-4"><span
                                class="text-dark"><?php echo html_escape($hmd->widget_title);?></span></h4>
                        <p class="text-muted para-desc mx-auto mb-0">
                            <?php echo html_escape($hmd->widget_desc);?></p>
                        <div class="mt-4">
                            <?php 
                            $_SESSION['checkin'] = date("Y-m-d");
                            $_SESSION['roomid'] = 1;
                            $_SESSION['checkout'] = date("Y-m-d", strtotime("tomorrow"));
                            ?>
                            <a href="/about" class="btn btn-primary">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--end col-->

        </div>
    </div>
</div>

<!-- /.End of join box -->
<div class="section bg-gray">
    <div class="container">
        <div class="row">
            <?php $topoffers=$this->db->select('*')->from('tbl_widget')->where('widgetid',4)->get()->row();?>
            <div class="col-md-10 offset-md-1">
                <div class="section-title text-center mb-5 col-middle">
                    <h2 class="block-title fs-25 mb-2 font-weight-bold">
                        <?php echo html_escape($topoffers->widget_title);?></h2>
                    <div class="sub-title fs-18">
                        <?php echo html_escape($topoffers->widget_desc);?>
                    </div>
                </div>
                <!-- /.End of section title -->
            </div>
        </div>
        <div class="row">
            <?php foreach($roomdetails as $topweek){ ?>
            
            <div class="col-lg-3 col-md-4 col-sm-6 recoms">
                <div class="card box-shadow rounded-0 mb-4"> 
                <a  class="card-img position-relative overflow-hideen" style="overflow:hidden">
                        <img src="<?php echo html_escape(base_url().(!empty($topweek->room_imagename)?$topweek->room_imagename:'assets/img/Home-page/below_slider_second.png'));?>" alt="...">
                        <?php 
                        echo form_open('hotel/room/'.$topweek->roomid);
                        ?>
                        <input name="roomid" type="hidden" value="<?php echo html_escape($topweek->roomid);?>" />
                        <div> <input name="send" type="submit" value="<?php echo display('book_now') ?>" class="position-absolute btn btn-primary btn-sm" /></div>
                        <?php echo form_close() ?>
                    </a>
                    <div class="card-body">
                        <h5 class="card-title mb-0 weeklyoffer-title"><a href=""
                                class="text-dark"><?php echo html_escape($topweek->roomtype); ?> <?php echo ' <small class="float-right; text-bold">'.$this->storecurrency->curr_icon .round($topweek->rate);?>/<?php echo display('night') ?></small></a></h5>
                    </div>
                </div>
                <!-- /.End of card -->
            </div>
          
            <?php } ?>
        </div>
    </div>
</div>

<!--nhhhh-->

<?php $destination=$this->db->select('*')->from('tbl_widget')->where('widgetid',5)->get()->row();?>
<div class="section section-destination">
    <div class="container">
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <div class="section-title text-center mb-5 col-middle">
                    <h2 class="block-title fs-25 mb-2 font-weight-bold">
                        <?php echo html_escape($destination->widget_title);?></h2>
                    <div class="sub-title fs-18">
                        <?php echo html_escape($destination->widget_desc);?>
                    </div>
                </div>
                <!-- /.End of section title -->
            </div>
        </div>
        <div class="destinations-carousel owl-carousel owl-theme">
            <?php foreach($banner_destination as $destination){ ?>
            <div class="card card-poster text-white flex-row align-items-end border-0">
                <a href="<?php echo html_escape($destination->slink);?>"
                    class="tile-link position-absolute w-100 h-100 top-0 left-0"></a>
                    <img src="<?php echo html_escape(base_url().(!empty($destination->image)?$destination->image:'assets/img/Home-page/explore_destinations.png'));?>"
                    alt="Card image" class="bg-image">
                <div class="card-body overlay-content position-relative">
                    <!--<div class="mb-3">-->
                    <!--    <button type="button"-->
                    <!--        class="btn btn-primary btn-sm book-btn"><?php echo display('book_now') ?></button>-->
                    <!--</div>-->
                    <!--<span-->
                    <!--    class="item-tag text-uppercase bg-white font-weight-500 mb-2 d-inline-block"><?php echo html_escape($destination->subtitle);?></span>-->
                    <h5 class="card-title font-weight-bold text-white"><?php echo html_escape($destination->title);?>
                    </h5>
                </div>
            </div>
            <?php } ?>
        </div>

    </div>
</div>
<!-- /.End of destination -->
<div class="section bg-gray">
    <div class="container">
        <div class="row">
                <div class="col-md-10 offset-md-1">
                    <div class="section-title text-center mb-5 col-middle">
                        <h2 class="block-title fs-25 mb-2 font-weight-bold">
                                RECOMMENDATIONS</h2>
                    </div>
                </div>
        </div>
        <div class="row">
            
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="card border-0 box-shadow rounded-0 mb-4">
                <a href="#" class="card-img position-relative">
                        <img src="https://macjak.co.tz/assets/img/banner/recommendations/zanzibar-1.jpg" class="img-fluid wd_xs_100" alt="...">
                        <!--<button type="button"-->
                        <!--    class="position-absolute btn btn-primary btn-sm">Book Now</button>-->
                    </a>
                    <div class="card-body">
                        <h5 class="card-title mb-0 weeklyoffer-title"><a href="#"
                                class="text-dark">Visit Zanzibar </a></h5>
                    </div>
                </div>
                <!-- /.End of card -->
            </div>
            
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="card border-0 box-shadow rounded-0 mb-4">
                <a href="#" class="card-img position-relative">
                        <img src="/assets/img/banner/recommendations/kilimanjaro.jpg" class="img-fluid wd_xs_100" alt="...">
                        <!--<button type="button"-->
                        <!--    class="position-absolute btn btn-primary btn-sm">Book Now</button>-->
                    </a>
                    <div class="card-body">
                        <h5 class="card-title mb-0 weeklyoffer-title"><a href="#"
                                class="text-dark">Mount Kilimanjaro</a></h5>
                    </div>
                </div>
                <!-- /.End of card -->
            </div>
            
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="card border-0 box-shadow rounded-0 mb-4">
                <a href="#" class="card-img position-relative">
                        <img src="https://macjak.co.tz/assets/img/banner/recommendations/safari-1.jpg" class="img-fluid wd_xs_100" alt="...">
                        <!--<button type="button"-->
                        <!--    class="position-absolute btn btn-primary btn-sm">Book Now</button>-->
                    </a>
                    <div class="card-body">
                        <h5 class="card-title mb-0 weeklyoffer-title"><a href="#"
                                class="text-dark">Tanzania Safari</a></h5>
                    </div>
                </div>
                <!-- /.End of card -->
            </div>
            
            
                    </div>
    </div>
</div>
</div>
<!--kkk-->
<!--hggg-->
<!--<div class="section section-destination">-->
<!--    <div class="container">-->
<!--        <div class="row">-->
<!--            <div class="col-md-10 offset-md-1">-->
<!--                <div class="section-title text-center mb-5 col-middle">-->
<!--                    <h2 class="block-title fs-25 mb-2 font-weight-bold">-->
<!--                        EXPERIENCE</h2>-->
<!--                    <div class="sub-title fs-18">-->
<!--                        Whether you want to get out of town, relax and slow down or be active and explore the amazing scenery, Bagamoyo culture or exotic cuisine, a wide range of activities are available for you throughout the resort.                    </div>-->
<!--                </div>-->
                <!-- /.End of section title -->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="destinations-carousel owl-carousel owl-theme">-->
<!--                        <div class="card card-poster text-white flex-row align-items-end border-0">-->
<!--                <a href="#"-->
<!--                    class="tile-link position-absolute w-100 h-100 top-0 left-0"></a>-->
<!--                    <img src="https://macjak.co.tz/assets/img/banner/2024-10-02/R11.jpg"-->
<!--                    alt="Card image" class="bg-image">-->
<!--                <div class="card-body overlay-content position-relative">-->
                    <!--<div class="mb-3">-->
                    <!--    <button type="button"-->
                    <!--        class="btn btn-primary btn-sm book-btn">Book Now</button>-->
                    <!--</div>-->
                    <!--<span-->
                    <!--    class="item-tag text-uppercase bg-white font-weight-500 mb-2 d-inline-block">Bagamoyo</span>-->
<!--                    <h5 class="card-title font-weight-bold text-white">EXPLORE BAGAMOYO                    </h5>-->
<!--                </div>-->
<!--            </div>-->
<!--                        <div class="card card-poster text-white flex-row align-items-end border-0">-->
<!--                <a href="#"-->
<!--                    class="tile-link position-absolute w-100 h-100 top-0 left-0"></a>-->
<!--                    <img src="https://macjak.co.tz/assets/img/banner/2024-10-02/R6.jpg"-->
<!--                    alt="Card image" class="bg-image">-->
<!--                <div class="card-body overlay-content position-relative">-->
                    <!--<div class="mb-3">-->
                    <!--    <button type="button"-->
                    <!--        class="btn btn-primary btn-sm book-btn">Book Now</button>-->
                    <!--</div>-->
                    <!--<span-->
                    <!--    class="item-tag text-uppercase bg-white font-weight-500 mb-2 d-inline-block">--</span>-->
<!--                    <h5 class="card-title font-weight-bold text-white">SPORT FISHING                    </h5>-->
<!--                </div>-->
<!--            </div>-->
<!--                        <div class="card card-poster text-white flex-row align-items-end border-0">-->
<!--                <a href="#"-->
<!--                    class="tile-link position-absolute w-100 h-100 top-0 left-0"></a>-->
<!--                    <img src="https://macjak.co.tz/assets/img/banner/2024-10-02/R13.jpg"-->
<!--                    alt="Card image" class="bg-image">-->
<!--                <div class="card-body overlay-content position-relative">-->
                    <!--<div class="mb-3">-->
                    <!--    <button type="button"-->
                    <!--        class="btn btn-primary btn-sm book-btn">Book Now</button>-->
                    <!--</div>-->
                    <!--<span-->
                    <!--    class="item-tag text-uppercase bg-white font-weight-500 mb-2 d-inline-block">--</span>-->
<!--                    <h5 class="card-title font-weight-bold text-white">SNORKELING                    </h5>-->
<!--                </div>-->
<!--            </div>-->
<!--                        <div class="card card-poster text-white flex-row align-items-end border-0">-->
<!--                <a href="#"-->
<!--                    class="tile-link position-absolute w-100 h-100 top-0 left-0"></a>-->
<!--                    <img src="https://macjak.co.tz/assets/img/banner/2024-10-02/R8.jpg"-->
<!--                    alt="Card image" class="bg-image">-->
<!--                <div class="card-body overlay-content position-relative">-->
                    <!--<div class="mb-3">-->
                    <!--    <button type="button"-->
                    <!--        class="btn btn-primary btn-sm book-btn">Book Now</button>-->
                    <!--</div>-->
                    <!--<span-->
                    <!--    class="item-tag text-uppercase bg-white font-weight-500 mb-2 d-inline-block">--</span>-->
<!--                    <h5 class="card-title font-weight-bold text-white">BEACH WALKING                     </h5>-->
<!--                </div>-->
<!--            </div>-->
<!--                        <div class="card card-poster text-white flex-row align-items-end border-0">-->
<!--                <a href="#"-->
<!--                    class="tile-link position-absolute w-100 h-100 top-0 left-0"></a>-->
<!--                    <img src="https://macjak.co.tz/assets/img/banner/2024-10-02/R9.jpg"-->
<!--                    alt="Card image" class="bg-image">-->
<!--                <div class="card-body overlay-content position-relative">-->
                    <!--<div class="mb-3">-->
                    <!--    <button type="button"-->
                    <!--        class="btn btn-primary btn-sm book-btn">Book Now</button>-->
                    <!--</div>-->
                    <!--<span-->
                    <!--    class="item-tag text-uppercase bg-white font-weight-500 mb-2 d-inline-block">---</span>-->
<!--                    <h5 class="card-title font-weight-bold text-white">KITE SURFING                     </h5>-->
<!--                </div>-->
<!--            </div>-->
<!--                    </div>-->

<!--    </div>-->
<!--</div>-->
<div class="container" style="max-width: 1200px; margin: auto; padding: 20px;">
    <div class="main_title mt_wave a_center" style="text-align: center; margin-bottom: 20px;">
        <h2 style="font-size: 24px; color: #333;">OUR CLIENTS REVIEWS</h2>
    </div>
    <!--<p class="main_description a_center" style="text-align: center; font-size: 16px; color: #666; margin-bottom: 40px;">-->
    <!--    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit.-->
    <!--</p>-->
    <div class="row" style="display: flex; justify-content: space-between;">
        
        <div class="col-md-4 col-sm-12" >
            <div class="review_item" style="border: 1px solid #ddd; padding: 15px; border-radius: 5px; background-color: #f9f9f9;">
                <div class="review_content">
                    <h3 style="font-size: 20px; color: #4a614a;">Excellent!</h3>
                    <div class="review_rating" style="margin-bottom: 10px; color: #4a614a;">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <p style="font-size: 14px; color: #666;">Wonderful place, affordable, delicious food and has a friendly staff.</p>
                </div>
                <div class="review_author" style="display: flex; align-items: center; margin-top: 15px;">
                    <img src="/assets/img/users/nchambi.png" alt="Image" style="width: 50px; height: 50px; border-radius: 50%; margin-right: 10px;">
                    <div class="author_info">
                        <h5 style="font-size: 16px; color: #333;">Nchambi Enos</h5>
                        <!--<span class="place" style="font-size: 14px; color: #999;">Athens, Greece</span>-->
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-12" >
            <div class="review_item" style="border: 1px solid #ddd; padding: 15px; border-radius: 5px; background-color: #f9f9f9;">
                <div class="review_content">
                    <h3 style="font-size: 20px; color: #4a614a;">Excellent!</h3>
                    <div class="review_rating" style="margin-bottom: 10px; color: #4a614a;">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <p style="font-size: 14px; color: #666;">This place offers amazing and
affordable accommodations with
welcoming security personnel, wide
parking, and a 24-hour reception.</p>
                </div>
                <div class="review_author" style="display: flex; align-items: center; margin-top: 15px;">
                    <img src="/assets/img/users/zacharia.png" alt="Image" style="width: 50px; height: 50px; border-radius: 50%; margin-right: 10px;">
                    <div class="author_info">
                        <h5 style="font-size: 16px; color: #333;">Rickson Zachari</h5>
                        <!--<span class="place" style="font-size: 14px; color: #999;">Athens, Greece</span>-->
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-12" >
            <div class="review_item" style="border: 1px solid #ddd; padding: 15px; border-radius: 5px; background-color: #f9f9f9;">
                <div class="review_content">
                    <h3 style="font-size: 20px; color: #4a614a;">Excellent!</h3>
                    <div class="review_rating" style="margin-bottom: 10px; color: #4a614a;">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <p style="font-size: 14px; color: #666;">Good Food, accomodation and pool.</p>
                </div>
                <div class="review_author" style="display: flex; align-items: center; margin-top: 15px;">
                    <img src="/assets/img/users/ishengoma.png" alt="Image" style="width: 50px; height: 50px; border-radius: 50%; margin-right: 10px;">
                    <div class="author_info">
                        <h5 style="font-size: 16px; color: #333;">Bonaventura
Ishengoma</h5>
                        <span class="place" style="font-size: 14px; color: #999;">Athens, Greece</span>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

