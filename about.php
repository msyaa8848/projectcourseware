<?php
include 'components/connect.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About Us</title>

   <!-- Font Awesome CDN link -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- Custom CSS file link -->
   <link rel="stylesheet" href="css/style.css">
</head>
<body>

<?php include 'components/user_header.php'; ?>

<!-- About Section -->
<section class="about">
   <div class="row">
      <div class="image">
         <img src="images/about-img.svg" alt="About Us">
      </div>
      <div class="content">
         <h3>Why Choose Us?</h3>
         <p>At EduLearn, we believe in empowering individuals through quality education. Our platform offers diverse courses designed to enhance skills, foster creativity, and unlock career opportunities. With a strong network of expert instructors and a vibrant student community, your success is our priority.</p>
         <a href="courses.php" class="inline-btn">Explore Our Courses</a>
      </div>
   </div>

   <div class="box-container">
      <div class="box">
         <i class="fas fa-graduation-cap"></i>
         <div>
            <h3>1,000+</h3>
            <span>Online Courses</span>
         </div>
      </div>
      <div class="box">
         <i class="fas fa-user-graduate"></i>
         <div>
            <h3>25,000+</h3>
            <span>Happy Students</span>
         </div>
      </div>
      <div class="box">
         <i class="fas fa-chalkboard-user"></i>
         <div>
            <h3>5,000+</h3>
            <span>Expert Instructors</span>
         </div>
      </div>
      <div class="box">
         <i class="fas fa-briefcase"></i>
         <div>
            <h3>100%</h3>
            <span>Job Placement</span>
         </div>
      </div>
   </div>
</section>

<!-- Reviews Section -->
<section class="reviews">
   <h1 class="heading">What Our Students Say</h1>
   <div class="box-container">

      <div class="box">
         <p>The courses here are life-changing. The instructors are knowledgeable and the content is up-to-date. I highly recommend EduLearn!</p>
         <div class="user">
            <img src="images/pic-2.jpg" alt="Student Review">
            <div>
               <h3>Jane Doe</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
               </div>
            </div>
         </div>
      </div>

      <div class="box">
         <p>The hands-on approach and job placement assistance made a big difference in my career. Thank you for everything!</p>
         <div class="user">
            <img src="images/pic-3.jpg" alt="Student Review">
            <div>
               <h3>John Smith</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
               </div>
            </div>
         </div>
      </div>

      <div class="box">
         <p>Learning here has been an amazing journey. The community and support system are unmatched!</p>
         <div class="user">
            <img src="images/pic-4.jpg" alt="Student Review">
            <div>
               <h3>Sarah Lee</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
               </div>
            </div>
         </div>
      </div>

   </div>
</section>

<?php include 'components/footer.php'; ?>

<!-- Custom JS file link -->
<script src="js/script.js"></script>
</body>
</html>
