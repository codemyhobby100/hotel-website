<div class="section">
    <div class="container">
        <?php 
        $terms = $this->db->select('*')->from('tbl_widget')->where('widgetid', 21)->get()->row();
        ?>
        <h2><?php echo html_escape($terms->widget_title); ?></h2>
        <?php echo $terms->widget_desc; // Remove html_escape to render HTML content ?>
    </div>
</div>
