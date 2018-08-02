<!-- Image and text -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: #f8f9fa;">
  	<a href="<?php echo base_url() ?>home/Inventaris" class="navbar-brand">
    	<img src="<?php echo base_url() ?>assets/img/gasnet.png" width="60" height="35" class="d-inline-block align-top" alt="logo">
    	HBB Inventaris
  	</a>
  	<?php if (isset($_SESSION['email'])): ?>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
		    <ul class="navbar-nav my-lg-0 ml-auto">
		      <li class="nav-item">
		        <b><a class="nav-link" href="<?php echo base_url() ?>home/logout"><i class="fa fa-sign-out"></i> Logout <span class="sr-only">(current)</span></a></b>
		      </li>
		    </ul>
		</div>
  	<?php endif ?>
</nav>