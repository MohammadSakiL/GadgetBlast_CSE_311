<?php 

session_start();

include("functions.php");

include("db.php");

?>


<!DOCTYPE html>
<html>
<head>
  <title></title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="css/details.css" media="all" />
  

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Gadget Blast</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      
      <li class="nav-item active">
        <a class="nav-link" href="main_index.php">Home <span class="sr-only">(current)</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="here_products.php">Products</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="here_cart.php">Shopping Cart</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="index.php?action=login">Login</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="here_my_account.php">My Account</a>
      </li>

    <li class="nav-item">
        <a class="nav-link" href="register.php">Register</a>
      </li>

    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
  
 



  
  
  
   <SECTION class="my-5">
    
    <div class="container-fluids">
      <div class="row">
    
         
  
  <div id="content_area">
    <div id="products_box">
      
    <?php 
    if(isset($_GET['pro_id'])){
      $product_id = $_GET['pro_id'];
      
      $run_query_by_pro_id = mysqli_query($con, "select * from products where product_id='$product_id' ");
      
      while($row_pro = mysqli_fetch_array($run_query_by_pro_id)){
      
        $pro_id = $row_pro['product_id'];
        $pro_cat = $row_pro['product_cat'];
        $pro_brand = $row_pro['product_brand'];
        $pro_title = $row_pro['product_title'];
        $pro_price = $row_pro['product_price'];
        $pro_image = $row_pro['product_image'];   
        $product_desc =$row_pro['product_desc'];
      
      echo "
      <div id='single_product' text-align: center;>
          
          <h3>$pro_title</h3>
        <img src='admin/product_images/$pro_image' width='400' height='350' />
        
        <p><b> Price: tk $pro_price </b></p>
        
        <p><b> Details:  $product_desc</b></p>
        
        <a href='index.php?add_cart=$pro_id'>
          <button style='float:center'>Add to Cart</button>
        </a>
        </div>
      ";
      }
      
    }
    ?>
    
    </div>
  </div>
  
  </div>
  
  
  
    </div>
    </div>
  
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
  
  
    

  <footer>
    <p class="p-3 bg-dark text-white text-center">&copy;<?php echo date('Y');?> by www.GadgetBlast.com</p>
  </footer>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</body>
</html>