<div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="card">
                <div class="card-heading">
                        <h4><?php echo html_escape((!empty($title)?$title:null)) ?></h4>
                </div>
                <div class="card-body">

                    <?php echo form_open('hrm/attendance-report-list') ?>
                        
                        <div class="form-group row">
                            <label for="date" class="col-sm-3 col-form-label"><?php echo display('start_date') ?> <span class="text-danger">*</span></label>
                            <div class="col-sm-9">
                                <input name="start_date" class="fin_datepicker form-control" type="text" placeholder="<?php
        
                                 echo display('start_date') ?>"  id="start_date" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="end_date" class="col-sm-3 col-form-label"><?php echo display('end_date') ?> <span class="text-danger">*</span></label>
                            <div class="col-sm-9">
                                <input name="end_date" class="fin_datepicker form-control" type="text" placeholder="<?php  
                                 echo display('end_date') ?>" id="end_date" required>
                            </div>
                        </div>
                       

    
                            <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('request') ?></button>
                        </div>
                    <?php echo form_close() ?>

                </div>  
            </div>
        </div>
    </div>
    <script src="<?php echo MOD_URL.$module;?>/assets/js/empPaymentForm.js"></script>
