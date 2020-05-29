<?php 

include("header.php");

?>

  <div id="demo" class="carousel slide" data-ride="carousel">
    
    <ul class="carousel-indicators">
      <li data-target="#demo" data-slide-to="0" class="active"></li>
      <li data-target="#demo" data-slide-to="1"></li>
      <li data-target="#demo" data-slide-to="2"></li>
      <li data-target="#demo" data-slide-to="3"></li>

    </ul>

    
    <div class="carousel-inner">


      <div class="carousel-item active">
        <img src="images/c1.jpg" alt="GB1" style="width:100%;">
        
      </div>

      <div class="carousel-item">
        <img src="images/gadget.jpg" alt="GB2" style="width:100%;">
        
      </div>
    
      <div class="carousel-item">
        <img src="images/c4.jpg" alt="GB3" style="width:100%;">
       
      </div>

      <div class="carousel-item">
        <img src="images/c2.jpg" alt="Gadget" style="width:100%;">
        
      </div>
  
    </div>

   
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
      <span class="carousel-control-prev-icon"></span>
      
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
      <span class="carousel-control-next-icon"></span>
     
    </a>
  </div>
  
  
   <SECTION class="my-5">
  	<div class="py-5">
  		<h3 class="text-center">Our Products</h3>
  	</div>
  	<div class="container-fluids">
  		<div class="row">
  	<?php include("products.php"); ?>
  	</div>
  	</div>
	<a   href="here_products.php"><h4 align="center" ,color="Red">View More Products</h4></a>
  </SECTION>
  

  <SECTION class="my-5">
  	<div class="py-5">
  		<h3 class="text-center">About Us</h3>
  	</div>
  	<div class="container-fluids">
  		<div class="row">
  	<div class="col-lg-6 col-md-6 col-12">
  		<img src="images/about.jpg" class="img-fluid" aboutimg>
  	</div>

  	<div class="col-lg-6 col-md-6 col-12">
  		<h2 class="display-4">Gadget Blast</h2>
  		<p class="py-5">Gadget Blast delivers more entertainment gadgets to more people than anyone else on earth.</p>
  		<a href="about.php" class="btn btn-success"> Company Info </a>

  	</div>

  	</div>
  	</div>
  </SECTION>
  
  
  



    <SECTION class="my-5">
  	<div class="py-5">
  		<h3 class="text-center">Contact Us</h3>
  	</div>

  	<div class="w-50 m-auto">
  		<form action="userinfo.php" method="post">
  			<div class="form-group">
  				<label>Username</label>
  				<input type="text" name="user" autocomplete="on" class="form-control">
  			</div>

  			<div class="form-group">
  				<label>Email</label>
  				<input type="text" name="email" autocomplete="on" class="form-control">
  			</div>

  			<div class="form-group">
  				<label>Mobile</label>
  				<input type="text" name="mobile" autocomplete="on" class="form-control">
  			</div>

  			<div class="form-group">
  				<label>Comment</label>
  				<textarea class="form-control">
  					
  				</textarea>
  			</div>
  			<button type="submit" class="btn btn-primary">Submit</button>

  		</form>
  	</div>
	</SECTION>

	<footer>
		<p class="p-3 bg-dark text-white text-center">&copy;<?php echo date('Y');?> by www.GadgetBlast.com</p>
	</footer>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</body>
</html>