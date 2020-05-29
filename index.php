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
  <link rel="stylesheet" href="index_style.css" media="all" />
  

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
        <a class="nav-link" href="index.php?action=login">login</a>
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
  
 

  
  
  
  
  
  


   <div class="content_wrapper">
  
  <?php if(!isset($_GET['action'])){ ?>
  
    <div id="sidebar">
    <div id="sidebar_title">Categories</div>
    <ul id="cats">    
    <?php getCats();?>
    </ul>
    
    <div id="sidebar_title">Brands</div>
    <ul id="cats">
      <?php getBrands();?>
    </ul>
    
  </div>  
  
  <div id="content_area">
  
  <?php cart();?>
  
    <div id="products_box">     
    
    <?php getPro();?>
    
    <?php get_pro_by_cat_id();  ?>    
    
    <?php get_pro_by_brand_id(); ?>   
    
    </div>
    
  </div>
  
  <?php }else{ ?>
  
  <?php 
  include('login.php'); 
  } 
  ?>
  
  </div>
  
  
  
  