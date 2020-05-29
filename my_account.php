


<?php include('header.php'); ?>

  <div class="content_wrapper">
  
  <?php if(isset($_SESSION['user_id'])){ ?>
  
  <div class="user_container">
  
  <div class="user_content">
  
  <?php 
  if(isset($_GET['action'])){
    $action = $_GET['action'];
  }else{
    $action = '';
  }
  
  switch($action){
  
  case "edit_account";
  include('users/edit_account.php');
  break;
  
  case "edit_profile";
  include('users/edit_profile.php');
  break;
  
  case "user_profile_picture";
  include('users/user_profile_picture.php');
  break;
  
  case "change_password";
  include('users/change_password.php');
  break;
  
  case "delete_account";
  include('users/delete_account.php');
  break;  
  
 
  }
  
  
  
  ?>
  
  </div>
  
  <div class="user_sidebar">
  
  <?php 
  $run_image = mysqli_query($con,"select * from users where id='$_SESSION[user_id]'");
  
  $row_image = mysqli_fetch_array($run_image);
  
  if($row_image['image'] !=''){  
  ?>
  
  <div class="user_image" align="center">
    <img src="upload-files/<?php echo $row_image['image']; ?>" />
  </div>
  
  <?php }else{ ?>
  
  <div class="user_image" align="center">
    <img src="images/profile-icon.png" />
  </div>
  
  <?php } ?>
  
  <ul>
    <li><a href="#">My Order</a></li>
	<li><a href="my_account.php?action=edit_account">Edit Account</a></li>
	<li><a href="my_account.php?action=edit_profile">Edit Profile</a></li>
	<li><a href="my_account.php?action=user_profile_picture">User Profile Picture</a></li>
	<li><a href="my_account.php?action=change_password">Change Password</a></li>
	<li><a href="my_account.php?action=delete_account">Delete Account</a></li>
	<li><a href="logout.php">Logout</a></li>
  </ul>
  
  </div>
  
  </div>
  
  <?php }else{ ?>
  
  <h1>Account Setting Page</h1>
  
  <h5><a href="index.php?action=login">Log In </a> to Your Account!</h5>
  
  <?php } ?>
  
  </div>
  
  
  
  
  
