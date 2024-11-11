<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="card">
            
            <div class="card-body">
                <?php echo form_open_multipart('room_setting/room_amenities/create') ?>
                <?php echo form_hidden('amenity_id', (!empty($intinfo->id)?$intinfo->id:null)) ?>
                <div class="form-group row">
                    <label for="room_name" class="col-sm-4 col-form-label"><?php echo display('room_name') ?> <span class="text-danger">*</span></label>
                    <div class="col-sm-8">
                        <?php echo form_dropdown('room_name',$allrooms,$allrooms=$intinfo->room_id, 'class="selectpicker form-control" data-live-search="true" id="room_name"') ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="firstname" class="col-sm-4 col-form-label"><?php echo display('Amenity') ?> <span class="text-danger">*</span></label>
                    <div class="col-sm-8">
                        
                        <input type="text" class='form-control' name="amenity" value="<?php echo html_escape($intinfo->amenity); ?>">
                    </div>
                </div>
                
                <div class="form-group text-right">
                    <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('update') ?></button>
                </div>
                <?php echo form_close() ?>
                
            </div>
        </div>
    </div>
</div>
<script src="<?php echo MOD_URL.$module;?>/assets/js/roomImage.js"></script>