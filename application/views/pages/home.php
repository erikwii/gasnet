<div class="container app login">
	<div class="row my-3">
        <div class="col-12 col-lg-4 offset-lg-4 col-md-4">
        	<?php if (isset($_SESSION['login_error'])): ?>
        		<div class="alert alert-danger alert-dismissible fade show" role="alert">
				  <?php echo $_SESSION['login_error'] ?>
				  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
				    <span aria-hidden="true">&times;</span>
				  </button>
				</div>
        	<?php endif ?>
        	<?php unset($_SESSION['login_error']) ?>
        	<form action="<?php echo base_url() ?>home/login" class="needs-validation" method="post">
			  	<div class="form-group">
			    	<label for="exampleInputEmail1">Email</label>
			    	<input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Your Email" required>			    	
			  	</div>
			  	<div class="form-group">
			    	<label for="exampleInputPassword1">Password</label>
			    	<input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Your Password" required>
			  	</div>
			  	<button type="submit" class="btn btn-primary">Login</button>
			</form>
        </div>
    </div>
</div>