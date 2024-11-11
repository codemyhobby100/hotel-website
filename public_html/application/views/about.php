    <div class="section bg-light mb-3">
        <!-- Section Header -->
        <div class="container">
            <br>
            <br>
            <?php $smallteam = $this->db->select('*')->from('tbl_widget')->where('widgetid', 12)->get()->row(); ?>
            <div class="row justify-content-center text-center" style="margin-top:-80px;">
                <div class="col-12 col-md-10 col-lg-8" style="margin-bottom:-40px;">
                    <h1 class="title font-weight-bold"><?php echo html_escape($smallteam->widget_title); ?></h1>
                    <p class="lead text-muted mb-5">
                        <?php echo html_escape($smallteam->widget_desc); ?>
                    </p>
                </div>
            </div> 
            

        <!-- Boxed Image Section with Button as Description -->
<div class="row mt-5">
    <?php 
    $descriptions = ['CONFERENCE', 'SPA BY MAC & JAK', 'RESTAURANT', 'SIGNATURE BAR', 'GASTRONOMY EXPERIENCE', 'FITNESS CENTER']; // Custom descriptions
    foreach ($about_smallbig as $index => $smallbig) {
        $img_url = base_url() . (!empty($smallbig->image) ? $smallbig->image : 'assets/img/About-us/default_image.png');
        $description = !empty($smallbig->description) ? $smallbig->description : $descriptions[$index]; // Use custom description
    ?>
        <!-- Boxed Image Item -->
        <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
            <div class="card border-0 box-shadow rounded-0">
                <!-- Image container with a square aspect ratio -->
                <div class="card-img position-relative" style="width: 100%; position: relative;">
                    <!-- Image itself (occupying full box) -->
                    <img src="<?php echo $img_url; ?>" class="img-popup" alt="Image" data-img-src="<?php echo $img_url; ?>" >
                </div>

                <!-- Description Button (Positioned below the image) -->
                <div class="text-center py-3" style="background-color: white;">
                    <h5 class="font-weight-bold text-black mb-0" style="padding: 10px;">
                        <?php echo $description; ?>
                    </h5>
                </div>
            </div>
        </div>
    <?php } ?>
</div>

        </div>
    </div>
</div>

<!-- Full-Screen Modal for Image Popup -->
<div id="imageModal" class="modal" style="display: none; position: fixed; z-index: 1; left: 0; top: 0; width: 100%; height: 100%; overflow: auto; background-color: rgba(0, 0, 0, 0.7);">
    <span class="close" style="position: absolute; top: 10px; right: 25px; color: #fff; font-size: 40px; font-weight: bold; cursor: pointer; z-index: 2;">&times;</span>
    <img class="modal-content" id="modalImg" style="margin: auto; display: block; max-width: 90%; max-height: 90%; object-fit: contain;">
</div>

<script>
    // JavaScript for handling image clicks and showing modal
    var modal = document.getElementById("imageModal");
    var modalImg = document.getElementById("modalImg");

    var imgs = document.querySelectorAll(".img-popup");
    var buttons = document.querySelectorAll(".show-description");

    imgs.forEach(function(img) {
        img.onclick = function() {
            // Hide all description buttons
            buttons.forEach(function(button) {
                button.style.display = 'none';
            });

            modal.style.display = "block";  // Show modal
            modalImg.src = this.getAttribute('data-img-src');  // Set image source in modal
        };
    });

    // Close modal when the user clicks on the "x"
    var span = document.getElementsByClassName("close")[0];
    span.onclick = function() {
        modal.style.display = "none";
        
        // Show all description buttons again when the modal is closed
        buttons.forEach(function(button) {
            button.style.display = 'inline-block';  // Show all buttons
        });
    };

    // Close modal when the user clicks anywhere outside the modal image
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";

            // Show all description buttons again when the modal is closed
            buttons.forEach(function(button) {
                button.style.display = 'inline-block';  // Show all buttons
            });
        }
    };
</script>

<!-- Trusted by Companies Section -->
<div class="section section-about py-5 bg-white" style="background-color: #ffffff; padding: 100px 0;">
    <div class="container">
        <div class="row">
            <?php $thausand = $this->db->select('*')->from('tbl_widget')->where('widgetid', 13)->get()->row(); ?>
            <div class="col-md-10 offset-md-1 text-center">
                <h2 class="block-title" style="font-size: 3rem; font-weight: bold; margin-bottom: 20px;"><?php echo html_escape($thausand->widget_title); ?></h2>
                <p class="sub-title" style="font-size: 1.5rem; color: #6c757d;"><?php echo html_escape($thausand->widget_desc); ?></p>
            </div>
        </div>

        <!-- Logo Slider (Single Row) -->
        <div class="logo-slider-wrapper" style="overflow: hidden; position: relative; padding: 30px 0;">
            <div class="logo-slider" style="display: flex; white-space: nowrap;">
                <?php foreach ($company as $company_logo) { ?>
                <div class="logo-slide" style="display: inline-block; padding: 20px;">
                    <img class="clients img-fluid" 
                         src="<?php echo base_url() . html_escape(!empty($company_logo->image) ? $company_logo->image : 'assets/img/About-us/trusted_by_companies.png'); ?>" 
                         alt="Image Description" 
                         style="max-width: 100%; height: auto; transition: all 0.3s ease; cursor: pointer; filter: brightness(1);"
                         onmouseover="this.style.transform='scale(1.1)'; this.style.boxShadow='0px 10px 20px rgba(0, 0, 0, 0.1)';"
                         onmouseout="this.style.transform='scale(1)'; this.style.boxShadow='none';">
                </div>
                <?php } ?>
                <!-- Clone logos for infinite scrolling -->
                <?php foreach ($company as $company_logo) { ?>
                <div class="logo-slide" style="display: inline-block; padding: 20px;">
                    <img class="clients img-fluid" 
                         src="<?php echo base_url() . html_escape(!empty($company_logo->image) ? $company_logo->image : 'assets/img/About-us/trusted_by_companies.png'); ?>" 
                         alt="Image Description" 
                         style="max-width: 100%; height: auto; transition: all 0.3s ease; cursor: pointer; filter: brightness(1);"
                         onmouseover="this.style.transform='scale(1.1)'; this.style.boxShadow='0px 10px 20px rgba(0, 0, 0, 0.1)';"
                         onmouseout="this.style.transform='scale(1)'; this.style.boxShadow='none';">
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>

<!-- CSS for Continuous Scrolling with Responsive Design -->
<style>
    .logo-slider-wrapper {
        position: relative;
        width: 100%;
        overflow: hidden;
    }

    .logo-slider {
        display: flex;
        white-space: nowrap;
        transition: transform 0.5s linear;
    }

    .logo-slide {
        display: inline-block;
        padding: 20px;
        flex: 0 0 auto;
        width: 200px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .clients {
        max-width: 100%;
        height: auto;
        transition: all 0.3s ease;
        filter: brightness(1);
    }

    .clients:hover {
        transform: scale(1.1);
        box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1);
    }

    /* Responsiveness for Tablets */
    @media (max-width: 1024px) {
        .logo-slide {
            width: 150px;
        }
    }

    /* Responsiveness for Mobile Devices */
    @media (max-width: 768px) {
        .logo-slide {
            width: 100%;
            display: block;
            padding: 10px;
        }

        .section-about {
            padding: 60px 0;
        }
    }
</style>

<!-- JavaScript for Continuous Infinite Scrolling -->
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const logoSlider = document.querySelector('.logo-slider');
        const logoSlides = document.querySelectorAll('.logo-slide');
        let offset = 0;
        const scrollSpeed = 1;  // Speed of scrolling

        function scrollLogos() {
            offset -= scrollSpeed;
            if (Math.abs(offset) >= logoSlider.scrollWidth / 2) {
                // Reset to start of original logos when halfway through the cloned set
                offset = 0;
            }
            logoSlider.style.transform = `translateX(${offset}px)`;
        }

        // Continuous scroll interval
        setInterval(scrollLogos, 20);  // Lower value = smoother scroll

        // Stop scrolling on hover
        logoSlider.addEventListener('mouseenter', function() {
            clearInterval(scrollInterval);
        });

        // Resume scrolling when hover ends
        logoSlider.addEventListener('mouseleave', function() {
            setInterval(scrollLogos, 20);
        });
    });
</script>


<!-- Our Team Section -->
<div class="section team py-5 bg-light">
    <div class="container">
    <?php $oteam = $this->db->select('*')->from('tbl_widget')->where('widgetid', 11)->get()->row(); ?>
    <div class="row text-center mb-5">
        <div class="col-md-10 offset-md-1">
            <h2 class="block-title" style="font-size: 3rem; font-weight: bold; margin-bottom: 20px;"><?php echo html_escape($oteam->widget_title); ?></h2>
            <p class="sub-title" style="font-size: 1.5rem; color: #6c757d;"> <?php echo html_escape($oteam->widget_desc); ?></p>
        </div>
    </div>

    <div class="row text-center">
        <?php $social = $this->db->select('*')->from('tbl_widget')->where('widgetid', 28)->get()->row(); ?>
        <?php foreach ($team_info as $teaminfo) { ?>
        <div class="col-sm-12 col-md-3 mb-4">
            <div class="card team-member  mx-1" style="overflow:hidden">
                <figure class="position-relative" >
                    <!-- Image -->
                    <div class='a-m'>
                        <img src="<?php echo base_url() . html_escape(!empty($teaminfo->image) ? $teaminfo->image : 'assets/img/About-us/our_team.png'); ?>" alt="" class="rounded shadow-lg" >
                    </div>
                    <!-- Figcaption with social links -->
                    <figcaption class="d-flex flex-column justify-content-center align-items-center position-absolute bottom-0 w-100 p-3 bg-dark text-white">
                        <p><?php echo html_escape($teaminfo->slink); ?></p>
                        <ul class="list-unstyled mb-0 d-flex">
                            <li class="list-inline-item"><a href="<?php echo html_escape($teaminfo->link1); ?>" class="text-white fs-24"><i class="fab fa-facebook-square"></i></a></li>
                            <li class="list-inline-item"><a href="<?php echo html_escape($teaminfo->link2); ?>" class="text-white fs-24"><i class="fab fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="<?php echo html_escape($teaminfo->link3); ?>" class="text-white fs-24"><i class="fab fa-linkedin-in"></i></a></li>
                        </ul>
                    </figcaption>
                </figure>
                <!-- Name and subtitle -->
                <h4 class="fs-21 font-weight-600 mt-3 mb-1"><?php echo html_escape($teaminfo->title); ?></h4>
                <p class="mb-0 text-muted"><?php echo html_escape($teaminfo->subtitle); ?></p>
            </div>
        </div>
        <?php } ?>
    </div>
</div>

</div>
