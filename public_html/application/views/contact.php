<!-- Include Leaflet.js for OpenStreetMap -->
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>

<style>
    /* General Styles for Borders and Section Separation */
    .section {
        padding: 40px 0;
    }

    .section-title {
        margin-bottom: 20px;
        color: #333;
    }

    .map-content {
        margin-bottom: 30px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border: 1px solid #ddd;
        border-radius: 10px;
        overflow: hidden;
    }

    .info-title {
        font-weight: bold;
        font-size: 20px;
        color: #444;
        margin-bottom: 10px;
    }

    .contact-info {
        padding: 20px;
        border: 1px solid #eee;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        background-color: #fafafa;
        border-radius: 8px;
        margin-bottom: 30px;
    }

    .contact-info address,
    .contact-info p {
        font-size: 16px;
        color: #555;
        margin-bottom: 10px;
    }

    .form-control {
        border-radius: 8px;
        box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
        border: 1px solid #ddd;
    }

    .btn-primary {
        background-color: #4a614a;
        border-color: #4a614a;
        font-size: 16px;
        padding: 10px 20px;
        border-radius: 5px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    /* Section Styling */
    .section-about {
        background-color: #f8f9fa;
        padding: 50px 0;
    }

    .section.border-bottom {
        border-bottom: 1px solid #ddd;
    }

    .col-middle {
        text-align: center;
    }

    /* Specific Styles for Contact Section */
    .contact-section {
        background-color: #ffffff;
        padding: 40px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        border: 1px solid #ddd;
    }

    .alert {
        margin-bottom: 20px;
    }

    /* Custom box shadow and hover effects */
    .contact-info:hover, .form-control:focus {
        box-shadow: 0 0 8px rgba(0, 123, 255, 0.25);
        transition: 0.3s;
    }

    /* Map Styling */
    #map {
        border-radius: 8px;
        border: 1px solid #ddd;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
</style>

<div class="map-content">
    <!-- Map container -->
    <div id="map" style="height: 400px; width: 100%;"></div>
</div>

<!-- Initialize the map with Leaflet.js and OpenStreetMap -->
<script>
    var map = L.map('map').setView([-6.582144623393714, 39.06806303879495], 13); // Coordinates and zoom level

    // Load and display the map using OpenStreetMap tiles
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    // Add a marker for Mac and Jak Gateway
    L.marker([-6.582144623393714, 39.06806303879495]).addTo(map)
        .bindPopup('Mac and Jak Gateway')
        .openPopup();
</script>

<!-- The rest of the contact page content -->
<section class="section border-bottom">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-4 text-center border-right">
                <h6 class="text-uppercase mb-2 font-weight-bold fs-13"><?php echo display('message_us') ?></h6>
                <div class="mb-5 mb-md-0">
                    <a href="#!" class="h4"><?php echo display('start_chat') ?></a>
                </div>
            </div>

            <?php $hotline=$this->db->select('*')->from('tbl_slider')->where('slid',75)->get()->row();?>
            <div class="col-12 col-md-4 text-center border-right">
                <h6 class="text-uppercase mb-2 font-weight-bold fs-13"><?php echo html_escape($hotline->title);?></h6>
                <div class="mb-5 mb-md-0">
                    <a href="#!" class="h4"><?php echo html_escape($hotline->subtitle);?></a>
                </div>
            </div>

            <?php $contact=$this->db->select('*')->from('tbl_slider')->where('slid',74)->get()->row();?>
            <div class="col-12 col-md-4 text-center">
                <h6 class="text-uppercase mb-2 font-weight-bold fs-13"><?php echo html_escape($contact->title);?></h6>
                <a href="#!" class="h4"><?php echo html_escape($contact->subtitle);?></a>
            </div>
        </div>
    </div>
</section>

<section class="section section-about">
    <div class="container">
        <div class="row">
            <?php $letus=$this->db->select('*')->from('tbl_widget')->where('widgetid',19)->get()->row();?>
            <div class="col-md-10 offset-md-1">
                <div class="section-title text-center mb-5 col-middle">
                    <h2 class="block-title fs-25 mb-2 font-weight-bold"><?php echo html_escape($letus->widget_title);?></h2>
                    <div class="sub-title fs-18"><?php echo html_escape($letus->widget_desc);?></div>
                </div>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-md-12 col-lg-8 contact-section">
                <div class="row align-items-center">
                    <div class="col-md-6 mb-5 mb-md-0">
                        <div class="contact-info">
                            <div class="mb-4">
                                <?php $address=$this->db->select('*')->from('tbl_slider')->where('slid',72)->get()->row();?>
                                <h3 class="info-title link-title fs-18 mb-3 font-weight-600 position-relative">
                                    <?php echo html_escape($address->title);?></h3>
                                <address class="mb-4"><?php echo html_escape($address->subtitle);?></address>
                            </div>

                            <?php $phoneapp=$this->db->select('*')->from('tbl_slider')->where('slid',73)->get()->row();?>
                            <div class="mb-4">
                                <h3 class="info-title link-title fs-18 mb-3 font-weight-600 position-relative">
                                    <?php echo html_escape($phoneapp->title);?></h3>
                                <?php echo html_escape($phoneapp->subtitle);?>
                            </div>

                            <div class="mb-4">
                                <?php $emails=$this->db->select('*')->from('tbl_slider')->where('slid',74)->get()->row();?>
                                <h3 class="info-title link-title fs-18 mb-3 font-weight-600 position-relative">
                                    <?php echo html_escape($emails->title);?></h3>
                                <?php echo html_escape($emails->subtitle);?>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <?php if ($this->session->flashdata('message')) { ?>
                        <div class="alert alert-success alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <?php echo $this->session->flashdata('message') ?>
                        </div>
                        <?php } ?>

                        <?php echo form_open('contact/sendmsg', 'id="contactForm" class="needs-validation" novalidate'); ?>
                        <div class="form-group">
                            <label for="name" class="fs-13 font-weight-500"><?php echo display('name') ?> <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="name" placeholder="<?php echo display('name') ?>" required>
                        </div>

                        <div class="form-group">
                            <label for="email" class="fs-13 font-weight-500"><?php echo display('email') ?> <span class="text-danger">*</span></label>
                            <input type="email" class="form-control" name="email" placeholder="<?php echo display('email') ?>" required>
                        </div>

                        <div class="form-group">
                            <label for="message" class="fs-13 font-weight-500"><?php echo display('message') ?> <span class="text-danger">*</span></label>
                            <textarea name="message" class="form-control" rows="5" placeholder="<?php echo display('message') ?>" required></textarea>
                        </div>

                        <div class="text-left">
                            <button type="submit" class="btn btn-primary"><?php echo display('send') ?></button>
                        </div>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
