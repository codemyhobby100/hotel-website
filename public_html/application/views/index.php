<?php $webinfo= $this->webinfo;
      $settinginfo=$this->settinginfo;
 /*for whatsapp modules*/
$WhatsApp = $this->db->where('directory', 'whatsapp')->where('status', 1)->get('module');
$whatsapp_count = $WhatsApp->num_rows();
/*end whatsmoudles*/     
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Experience luxury and tranquility at Mac & Jak Getaway in Bagamoyo, Tanzania. boutique resort offers personalised service, stunning amenities, and unforgettable coastal charm.">

<meta name="robots" content="index, follow">
<meta name="author" content="MacandJak">
<meta name="keywords" content="Luxury resort Tanzania, MAC & JAK Getaway, Bagamoyo boutique hotel, Tanzania coastal retreat,hotel Bagamoyo, Luxurious Hotel in Bagamoyo,Tanzanian luxury accommodation, Personalized hospitality Tanzania, Bagamoyo beach resort, Luxury African getaway, Tanzania tourism luxury, Bagamoyo historical stay, Swahili coast accommodations, Corporate retreat Tanzania">

<link rel="canonical" href="https://macjak.co.tz/">
    <link rel="shortcut icon"
        href="<?php echo html_escape(base_url((!empty($settinginfo->favicon) ? $settinginfo->favicon:'assets/img/fav.png'))) ?>"
        type="image/x-icon">

    <!-- Bootstrap CSS -->
    <link href="<?php echo base_url();?>website_assets/css/animate.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>website_assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>website_assets/plugins/themify/themify-icons.css" rel="stylesheet">
    <link href="<?php echo base_url();?>website_assets/plugins/fontawesome/css/all.min.css" rel="stylesheet">
    <!--<link href="<?php echo base_url();?>website_assets/plugins/owl-carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">-->
    <link href="<?php echo base_url('assets/sweetalert/sweetalert.css') ?>" rel="stylesheet" type="text/css"/>
    <!--<link href="<?php echo base_url();?>website_assets/plugins/owl-carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">-->
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css" integrity="sha512-OTcub78R3msOCtY3Tc6FzeDJ8N9qvQn1Ph49ou13xgA9VsH9+LRxoFU6EqLhW4+PKRfU+/HReXmSZXHEkpYoOA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link href="<?php echo base_url();?>website_assets/plugins/select2/dist/css/select2.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>website_assets/plugins/select2/dist/css/select2-bootstrap.min.css"
        rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link href="<?php echo base_url();?>website_assets/plugins/daterangepicker/daterangepicker.css" rel="stylesheet">
    <link href="<?php echo base_url();?>website_assets/plugins/fancybox/dist/jquery.fancybox.min.css" rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css?family=Caveat:400,700|Playfair+Display:400,400i,700,700i,900,900i|Sarabun:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800&display=swap"
        rel="stylesheet" />
    <link href="<?php echo base_url();?>website_assets/css/style.css?v=3" rel="stylesheet">
        	<!-- for whatsapp modules -->
	<?php if ($whatsapp_count  == 1) {
		$whatsapp_data = $WhatsApp->row();
		$whatsapp_url =  str_replace("/images/thumbnail.jpg", "", $whatsapp_data->image);
	?>
		<link href="<?php echo base_url() . $whatsapp_url; ?>/css/floating-wpp.min.css" rel="stylesheet">

    <script src="<?php echo base_url();?>website_assets/plugins/jQuery/jquery-3.5.1.min.js"></script>
	<?php
	} ?>
    <title>MAC & JAK Getaway: A Luxurious Retreat in Bagamoyo, Tanzania<?php //echo html_escape($title);?></title>
    
    <style>
    
    
    @media(max-width: 600px){
        .header-slider{
            height:auto !important;
            width: auto !important;
            overflow:hidden !important;
        }
        
        .a-m{
            height:300px; 
            overflow:hidden;
        }
        
        .hero-header{
            overflow:hidden !important;
        }
        
        .review_item:nth-child(2) {
            margin-top: 120px;
        }
        
        .owl-height{
            max-height: 400px !important;
        }
        
        .animation-slide.owl-theme .owl-nav{
            position: absolute;
            top:40%;
            width:100vw;
        }
        
     
        .owl-carousel .owl-item img {
            width: 100vw;          /* Allow the width to adjust automatically */
            height: 300px;        /* Set the desired height */
            object-fit: cover;  /* Makes sure the entire image is visible within the container */
            object-position: center; /* Position the image center (you can change this to left, right, etc.) */
            max-width: 100%; 
        }
        .owl-carousel .owl-item:nth-child(2) img{
            object-position: left;
        }
        
        .amenities{
            column-count: 2;
        }
        
    }
    
    .card-img img{
        max-height: 200px;
        min-width: 100%;
        width: auto;
        object-position: center;
        object-fit: cover;
    }

    .recoms .card-body {
        height:80px !important;
    }
    
    
    .review_item{
        height: 225px;
        margin-top:10px;
    }
    
    .section-title .title{
        color:#000 !important;
    }
    
    .a-m{
        height: 250px;
        overflow: hidden;
        width: 100%;
    }
    
    .a-m img{
        width: 100%;
    }
    
    h1{
        text-transform: capitalize !important;
    }
    
    </style>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>

<body>
    <input type="hidden" id='base_url' value="<?php echo base_url(); ?>" />
    <input type="hidden" id='csrf_token' value="<?php echo $this->security->get_csrf_hash();?>" />
    <input type="hidden" id="findate" value="<?php echo maxfindate(); ?>">
    <nav class="navbar navbar-expand-lg navbar-light header-sticky shadow-sm">
        <a class="navbar-brand" href="<?php echo base_url();?>"><img
                src="<?php echo base_url().html_escape(!empty($webinfo->logo)?$webinfo->logo:'assets/img/header-logo.png');?>"
                alt=""></a>
        <div class="d-flex order-lg-last">
            <ul class="navbar-right d-flex align-items-center list-unstyled mb-0">
                <li class="nav-item login">
                    <?php if($this->session->userdata('UserID')== FALSE){?>
                    <a class="nav-link" href="<?php echo base_url();?>user/login"><i
                            class="far fa-user-circle d-lg-none"></i><span
                            class="d-none d-lg-block"><?php echo display('sign_in') ?></span></a>
                    <?php }
						else{
						 ?>
                    <a class="nav-link" href="<?php echo base_url();?>user/logout"><i
                            class="far fa-user-circle d-lg-none"></i><span
                            class="d-none d-lg-block"><?php echo display('logout') ?></span></a>
                    <?php } ?>
                </li>
                <li class="nav-item dropdown search-icon">
                    <div class="dropdown-menu search-dropdown dropdown-menu-right animate slideIn"
                        aria-labelledby="navbarDropdown1">
                        <input type="email" class="form-control rounded-0" id="searc" placeholder="Search...">
                    </div>
                </li>
                <li class="nav-item nav-btn">
                    <?php echo form_open('user/roomlist');?>
                    <div class="row no-gutters custom-search-input-2 search-form-content">
                        <div class="search-option col-12 col-sm-6 col-lg-3" hidden>
                            <label><?php echo display('check_in')?> <i class="ti-calendar"></i></label>
                            <input id="daterangepickers" class="form-control" type="text" name="checkin"
                                value="<?php date('Y-m-d');?>">
                        </div>
                        <div class="search-option col-12 col-sm-6 col-lg-3" hidden>
                            <label><?php echo display('check_out')?> <i class="ti-calendar"></i></label>
                            <input id="daterangepickers2" class="form-control" type="text" name="checkout"
                                value="<?php date('Y-m-d');?>">
                        </div>
                        <div class="search-option col-12 col-sm-6 col-lg-3" hidden>
                            <div
                                class="d-flex align-items-center justify-content-between h-50 border-bottom w-100 px-lg-3 px-xl-4">
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
                        <div>
                            <button type="submit" class="border-0 d-none d-lg-inline-block nav-link">
                                <i class="far fa-calendar-alt mr-2"></i><span><?php echo display('book_now')?></span>
                            </button>
                        </div>
                    </div>
                    <?php echo form_close() ?>
                </li>
            </ul>
             
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <?php $allmenu=$this->allmenu;
							foreach($allmenu as $menu){
								$dropdown='';
								$dropdownassest='';
								$dropdownaclass='';
								$activeclass='';
								if($menu->menu_name=='Home'){
								$activeclass='active';
								$href=base_url().'';
								}
								else{
									$activeclass='';
									$href=base_url().''.$menu->menu_slug;
									}
								if(!empty($menu->sub)){
									$dropdown='dropdown';
									$dropdownassest='id=navbarDropdown2 role=button data-toggle=dropdown aria-haspopup=true aria-expanded=false';
									$dropdownaclass='dropdown-toggle';
									$href='#';
									}
							?>
                <li class="nav-item <?php echo html_escape($dropdown);?> <?php echo html_escape($activeclass);?>">
                    <a class="nav-link <?php echo html_escape($dropdownaclass);?>"
                        href="<?php echo html_escape($href);?>"
                        <?php echo html_escape($dropdownassest);?>><?php echo html_escape($menu->menu_name);?></a>
                    <div class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdown2">
                        <?php if(!empty($menu->sub)){
									 foreach($menu->sub as $submenu){
									 ?>
                        <a class="dropdown-item"
                            href="<?php echo base_url().''.html_escape($submenu->menu_slug);?>"><?php echo html_escape($submenu->menu_name);?></a>
                        <?php } }  ?>
                    </div>
                </li>
                <?php } ?>
            </ul>
        </div>
    </nav>
    <!-- /.End of navbar -->
    <?php if(isset($content)) {echo $content;}?>
    
    <div class="py-5 bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                    <div class="newslatter">
                        <?php $body=$this->db->select('*')->from('tbl_widget')->where('widgetid',29)->get()->row(); ?>
                        <h3 class="text-center text-white"><?php echo html_escape($body->widget_name);?></h3>
                        <p class="text-center"><?php echo html_escape($body->widget_title);?><br
                                class="d-none d-lg-block"><?php echo htmlspecialchars_decode($body->widget_desc);?></p>
                        <div class="input-group mb-3">
                            <input type="text" name="youremail" id="youremail" class="form-control border-0 rounded-0"
                                placeholder="Enter email here..." aria-label="Recipient's username"
                                aria-describedby="button-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary rounded-0 border-0" type="button" id="button-addon2"
                                    onClick="subscribeemail()"><?php echo display('subscribe') ?></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.End of newslatter -->
    <footer class="main-footer py-5 border-top-muted bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-xl-3 mb-5">
                    <div class="footer-about">
                        <div class="footer-logo mb-3">
                            <a href="<?php echo base_url();?>"><img
                                    src="<?php echo base_url().html_escape(!empty($webinfo->footer_logo)?$webinfo->footer_logo:'assets/img/header-logo.png');?>"
                                    alt="" class="img-fluid"></a>
                        </div>
                        <?php $footerfirst=$this->db->select('*')->from('tbl_slider')->where('slid',72)->get()->row();
						echo htmlspecialchars_decode($footerfirst->subtitle);
						?>
                        <div><br></div>
                        <?php $footerfirst=$this->db->select('*')->from('tbl_slider')->where('slid',74)->get()->row();
						echo htmlspecialchars_decode($footerfirst->subtitle);
						?>

                    </div>
                </div>
                <div class="col-lg-7 col-xl-7 offset-xl-1">
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-4 mb-3 mb-lg-0">
                            <?php $footerleftfirst=$this->db->select('*')->from('tbl_widget')->where('widgetid',23)->get()->row();?>
                            <h3 class="link-title fs-18 mb-3 font-weight-600 position-relative text-white">
                                <?php echo html_escape($footerleftfirst->widget_title);?></h3>
                                <?php $topmenu = $this->db->select('*')->from('top_menu')->get()->result(); ?>
                                <ul class="footer-link list-unstyled menu mb-0">
                                <?php foreach($topmenu as $top){?>
                                <li class="mb-2"><a class="link d-block font-weight-500" href="<?php echo html_escape($top->menu_slug);?>"><?php echo html_escape($top->menu_name);?></a></li>
                                <?php } ?>
                                </ul>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-4 mb-3 mb-lg-0">
                            <?php $footersecond=$this->db->select('*')->from('tbl_widget')->where('widgetid',24)->get()->row();?>
                            <h3 class="link-title fs-18 mb-3 font-weight-600 position-relative text-white">
                                <?php echo display("social_link");?></h3>
                            <?php $link=$this->db->select('*')->from('tbl_slider')->where('slid',81)->get()->row();?>
                            <?php $link1=$this->db->select('*')->from('tbl_slider')->where('slid',82)->get()->row();?>
                            <?php $link2=$this->db->select('*')->from('tbl_slider')->where('slid',83)->get()->row();?>
                            <?php $link3=$this->db->select('*')->from('tbl_slider')->where('slid',84)->get()->row();?>
                            <ul class="list-unstyled social-icon">
                                <li><a href="<?php echo html_escape($link->link1) ?>" target="_blank" rel="noopener noreferrer"> <i
                                            class="fab fa-instagram icon-wrap"></i> <span><?php echo  display("instagram") ?> </span> </a></li>
                                <li><a href="<?php echo html_escape($link1->link1) ?>" target="_blank" rel="noopener noreferrer"> <i
                                            class="fab fa-twitter icon-wrap"></i> <span><?php echo  display("twitter") ?></span> </a></li>
                             
                                <li><a href="https://www.linkedin.com/feed/update/urn:li:activity:7250766984932405248/" target="_blank" rel="noopener noreferrer"> <i class="fab fa-linkedin icon-wrap"></i> <span><?php echo  display("Linkedin") ?></span> </a></li>
                                <li><a href="<?php echo html_escape($link3->link1) ?>" target="_blank" rel="noopener noreferrer"> <i class="fab fa-facebook-f icon-wrap"></i> <span><?php echo  display("facebook") ?></span> </a></li>
                             
                             <li><a href="<?php echo html_escape($link2->link1) ?>" target="_blank" rel="noopener noreferrer">
                                 <svg xmlns="http://www.w3.org/2000/svg" class="icon-wrap" style="width:24px !important; padding:5px" fill="white" width='18' viewBox="0 0 448 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M448 209.9a210.1 210.1 0 0 1 -122.8-39.3V349.4A162.6 162.6 0 1 1 185 188.3V278.2a74.6 74.6 0 1 0 52.2 71.2V0l88 0a121.2 121.2 0 0 0 1.9 22.2h0A122.2 122.2 0 0 0 381 102.4a121.4 121.4 0 0 0 67 20.1z"/></svg>
                                  <span><?php echo  display("TikTok") ?></span> </a></li>
                            </ul>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-4">
                            <?php $footerfourth=$this->db->select('*')->from('tbl_widget')->where('widgetid',26)->get()->row();?>
                            <h3 class="link-title fs-18 mb-3 font-weight-600 position-relative text-white">
                                <?php echo html_escape($footerfourth->widget_title);?></h3>
                            <?php echo htmlspecialchars_decode($footerfourth->widget_desc);?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- /.End of main footer -->
    <div class="sub-footer border-top-muted bg-dark py-3">
        <div class="container">
            <div class="row justify-content-end align-items-center">
                <div class="col-md-6">
                    <div class="copy"><?php echo html_escape($webinfo->powerbytxt);?></div>
                </div>
                <div class="col-md-6">
                    <ul class="list-unstyled text-right mb-0">
                        <li class="list-inline-item"><a href="<?php echo base_url();?>privacy"
                                class="text-white"><?php echo display('privacy') ?></a></li>
                        <li class="list-inline-item"><a href="<?php echo base_url();?>terms"
                                class="text-white"><?php echo display('terms_conditions') ?></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- /.End of sub footer -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="<?php echo base_url();?>website_assets/plugins/bootstrap/js/popper.min.js"></script>
    <script src="<?php echo base_url();?>website_assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js'></script>
    <!--<script src="<?php echo base_url();?>website_assets/plugins/owl-carousel/dist/owl.carousel.min.js"></script>-->
    <script src="<?php echo base_url();?>website_assets/plugins/select2/dist/js/select2.min.js"></script>
    <script src="<?php echo base_url();?>website_assets/plugins/daterangepicker/moment.min.js"></script>
    <script src="<?php echo base_url();?>website_assets/plugins/daterangepicker/daterangepicker.js"></script>
    <script src="<?php echo base_url();?>website_assets/plugins/isotope/isotope.pkgd.js"></script>
    <script src="<?php echo base_url();?>website_assets/plugins/fancybox/dist/jquery.fancybox.min.js"></script>
    <script src="<?php echo base_url();?>website_assets/plugins/theia-sticky-sidebar/dist/ResizeSensor.min.js"></script>
    <script src="<?php echo base_url();?>website_assets/plugins/theia-sticky-sidebar/dist/theia-sticky-sidebar.min.js">
    </script>
    
		<script src="<?php echo base_url() . $whatsapp_url; ?>/js/floating-wpp.min.js"></script>
    <script src="<?php echo base_url();?>website_assets/plugins/numscroller/numscroller-1.0.js"></script>
    <!-- sweetalert -->
    <script src="<?php echo base_url('assets/sweetalert/sweetalert.min.js') ?>" type="text/javascript"></script>
    <script src="<?php echo base_url();?>website_assets/js/script.js"></script>
    <script src="<?php echo base_url();?>website_assets/js/subscriber_email.js"></script>
    <?php if($title=='Contact Us'){?>
    <input type="hidden" id="latitude" value="<?php echo html_escape($settinginfo->latitude); ?>">
    <input type="hidden" id="longitude" value="<?php echo html_escape($settinginfo->longitude); ?>">
    <script src="https://maps.googleapis.com/maps/api/js?key=<?php echo html_escape($settinginfo->map_key); ?>">
    </script>
    <script src="<?php echo base_url();?>website_assets/js/loadMap.js"></script>
    <?php } ?>
    <?php if ($whatsapp_count  == 1) {
    $whatsapp_data = $WhatsApp->row();
    $whatsapp_url =  str_replace("/images/thumbnail.jpg", "", $whatsapp_data->image);
    $wtapp = $this->db->select('*')->from('whatsapp_settings')->get()->row();
    if ($wtapp->chatenable == 1) {
    ?>
<div id="WAButton"></div>
<input type="hidden" id="wanumber" value="<?php echo $this->settinginfo->whatsapp_number; ?>">
<input type="hidden" id="waheader" value="<?php echo display('whatsapp_chat') ?> ">
<input type="hidden" id="wapopup" value="<?php echo display('hello,_how_can_we_help_you?') ?>">
<input type="hidden" id="wabtnimg" value="<?php echo base_url() . $whatsapp_url; ?>">
<script src="<?php echo base_url() ?>website_assets/js/wachat.js?v=1"></script>
<?php } } ?>
</body>

</html>