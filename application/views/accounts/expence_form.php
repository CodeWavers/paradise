<!-- Add expence entry start-->
<div class="form-container">
    	<?php echo form_open('Cclosing/add_expence_entry','id="add_expence_entry" name="insert_transaction" class="form-vertical"')?>
		<div class="lblFieldContnr">
			<div class="lblContnr">Title</div>
			<div class="fieldContnr">
				<input type="text" id="title" name="title" />
			</div>
		</div>
		<div class="lblFieldContnr">
			<div class="lblContnr">Description</div>
			<div class="fieldContnr">
				<textarea name="description"></textarea>
			</div>
		</div>
		<div class="lblFieldContnr">
			<div class="lblContnr">Amount</div>
			<div class="fieldContnr">
				<input type="number" id="amount" name="amount" />
			</div>
		</div>
		<div class="lblFieldContnr">
			<div class="lblContnr"></div>
			<div class="fieldContnr">
				<input type="submit" id="add-deposit" class="btn btn-primary" name="add-deposit" value="Save" required />
			</div>
		</div>
   <?php echo form_close()?>
</div>
<!-- Add expence entry end-->