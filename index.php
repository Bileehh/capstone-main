<?php
session_start();
require_once 'config.php';
require_once 'functions.php';
require_once 'session.php';

if($islogin){
    if($u_type == 1){
        navigate("./dashboard/admin");
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./assets/LOGO.png" >
    <title>AccessiblePath</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" defer></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11" defer></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="verify.css">
    <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="notify_style.css">
    <link
    href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css"
    rel="stylesheet"
  />   
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    
</head>
<body>
    <main>
    <div class="main">
        <?php include 'header.php' ?>
        <section class="section__container about__container" id="about">
    <div class="about__header">
      <div class="about__image">
        <img src="assets/AboutUs.png" alt="about" />
      </div>
      <div class="about__content">
        <h2  class="section__subheader">About Us</p> </h2>
        <h2 class="section__header">AccessiblePath: Empowering Unique Individuals Through Secure Career Connections</h2>
        <p class="paragraph">
          This website is an online employment resource dedicated to empowering unique individuals in their pursuit of meaningful employment. 
          Our platform offers comprehensive support, including resume building, and job search assistance. 
          Join our inclusive community to unlock a rewarding career path and help us create a more inclusive and equitable workforce.
        </p>
        <button class="btn">Learn More</button>
      </div>
    </div>
 
    <div class="about__grid">
      <div class="about__card">
        <span><i class="ri-pen-nib-line"></i></span>
        <div>
          <h4>Inclusivity</h4>
          <p>
            Our job portal promotes inclusivity, breaking down barriers for individuals of all abilities to access equal employment opportunities. We're committed to embracing diversity, ensuring everyone, regardless of disability, feels valued in their job search.
          </p>
        </div>
      </div>
      <div class="about__card">
        <span><i class="ri-layout-masonry-line"></i></span>
        <div>
          <h4>Empowerment</h4>
          <p>
            We empower individuals by offering resources and support for navigating unique career journeys. Our goal is to foster independence, boost confidence, and enable job seekers to showcase their skills, ultimately helping them achieve their professional goals.
          </p>
        </div>
      </div>
      <div class="about__card">
        <span><i class="ri-checkbox-line"></i></span>
        <div>
          <h4>Opportunity</h4>
          <p>
            We open doors to a world of opportunities for unique individuals, connecting them with inclusive employers who recognize and appreciate their potential. By igniting their capabilities, we strive to create pathways to fulfilling careers and a brighter future.
          </p>
        </div>
      </div>
    </div>

  </section>



  
<br>

  <!--
  <section class="reviews" id="reviews">

    <h1 class="heading"> MISSION AND VISION </h1>

    <div class="box-container container">

        <div class="box">
            <img src="images/AboutUs.png" alt="">
            <h3>MISSION</h3>
            <p>Our mission at Creating Possibility is to provide a transformative online employment resource for unique individuals. We are committed to empowering individuals to overcome barriers and achieve their full potential in the world of employment. Through our comprehensive platform, we aim to offer inclusive opportunities, resources, and support that enable individuals to explore, pursue, and thrive in meaningful careers.</p>


        </div>

        <div class="box">
            <img src="images/contact-us.png" alt="">
            <h3>VISION</h3>
            <p>Our vision is to empower unique individuals to excel in their chosen careers, we strive for a society where equal access to employment opportunities is the norm. By breaking down barriers, challenging stereotypes, and fostering an inclusive workforce, we envision a world that values and recognizes the talents and contributions of every individual. Together, we create opportunities for professional success and fulfillment, regardless of disability.</p>

        </div>


</section>
-->

<!-- contact us -->
  
<!-- contact us -->

</main>

<footer class="footer">
  <div class="container">
      <div class="row">
          <div class="footer-col">
              <h4>Lorem Ipsum</h4>
              <ul>
                  <li><a href="#">about us</a></li>
                  <li><a href="#">Lorem Ipsum</a></li>
                  <li><a href="#">Lorem Ipsum</a></li>
                  <li><a href="#">Lorem Ipsum</a></li>
              </ul>
          </div>
          <div class="footer-col">
              <h4>get help</h4>
              <ul>
                  <li><a href="#">FAQ</a></li>
                  <li><a href="#">Lorem Ipsum</a></li>
                  <li><a href="#">Lorem Ipsum</a></li>
                  <li><a href="#">Lorem Ipsum</a></li>
                  <li><a href="#">Lorem Ipsum</a></li>
              </ul>
          </div>
          <div class="footer-col">
              <h4>Lorem Ipsum</h4>
              <ul>
                  <li><a href="#">Lorem Ipsum</a></li>
                  <li><a href="#">Lorem Ipsum</a></li>
                  <li><a href="#">Lorem Ipsums</a></li>
                  <li><a href="#">Lorem Ipsum</a></li>
              </ul>
          </div>
          <div class="footer-col">
              <h4>follow us</h4>
              <div class="social-links">
                  <a href="#"><i class="fab fa-facebook-f"></i></a>
                  <a href="#"><i class="fab fa-twitter"></i></a>
                  <a href="#"><i class="fab fa-instagram"></i></a>
                  <a href="#"><i class="fab fa-linkedin-in"></i></a>
              </div>
          </div>
      </div>
  </div>
</footer>
</div>
</div>
</div>
</div>

</body>

 
</html>
<script type="text/javascript">
function showNotification(){
    $('.notification-drop .item').find('ul').toggle();
}

function updateNotification(id){
    $.ajax({
        url : "controller/NotificationAction.php",
        method: "post",
        data : {id:id},
        success: (res) => {
            console.log(res);
            if(res == "3" || res == "2"){
                if(res == "3"){
                    setTimeout(() => {
                        window.location.href="./profile/?page=general_information"
                    }, 300);
                } else {
                    setTimeout(() => {
                        window.location.href="/capstone-main/dashboard/company/?page=hire&sub=applicants"
                    }, 300);
                }
            } else {
                location.reload();
            }
        }
    });
}

            <?php include '/footer.php'?>
        
</script>