<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Welcome Doshna's Elevate</title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="./files/css/bootstrap.css" />

  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="./files/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="./files/css/responsive.css" rel="stylesheet" />
  
  <link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon">
  
   <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
</head>

<body>
 <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid" style="color:White">
        <nav class="navbar navbar-expand-lg custom_nav-container">
          <a class="navbar-brand" href="index.html">
            <img src="./files/images/11162365.png" alt="" />
            <span>
             Doshna's Elevate
            </span>
            <br>
             
          </a>
          <span>
             The Next-Gen Hiring Platform
            </span>
          
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="#col-md-">Home &nbsp; <i class="fa-solid fa-house"></i> <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#about"> About &nbsp; <i class="fa-solid fa-industry"></i></a>
              </li>
            
              <li class="nav-item">
                <a class="nav-link" href="loginf">Login As Freelancer &nbsp; <i class="fa-solid fa-users"></i></a>
              </li>
            </ul>
            <div class="user_option">
              <a href="loginc">
               
                 <span>
                  Login As Company &nbsp; <i class="fa-solid fa-building"></i>
                </span>
              </a>
               
              
             
              
            </div>
          </div>
          <div>
            <div class="custom_menu-btn ">
              <button>
                <span class=" s-1">

                </span>
                <span class="s-2">

                </span>
                <span class="s-3">

                </span>
              </button>
            </div>
          </div>

        </nav>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section ">
      <div class="carousel_btn-container">
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="sr-only">Next</span>
        </a>
      </div>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">01</li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1">02</li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2">03</li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-5 offset-md-1">
                  <div class="detail-box">
                   <h1>
  Find & Hire Top Freelancers <br>
  for Any Job, Anytime, Anywhere.
</h1>
                   
                    <p>
  India's Premier Platform for Hiring Freelancers
</p>
                    
                    <div class="btn-box">
                      <a href="loginc" class="btn-1">
                       Hire a Freelancer &nbsp;<i class="fa-brands fa-hive"></i>
                      </a>
                      <a href="loginf" class="btn-2">
                       Earn Money Freelancing &nbsp; <i class="fa-solid fa-dollar-sign"></i>
                      </a>
                    </div>
                  </div>
                </div>
                <div class="offset-md-1 col-md-4 img-container">
                  <div class="img-box">
                    <img src="./files/images/aa.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-5 offset-md-1">
                  <div class="detail-box">
                  <h1>
  Unlock Top Talent <br>
  Hire Freelancers <br>
  With Ease
</h1>
<p>
  Save Big & Receive Free Quotes
</p>
                  
                    <div class="btn-box">
                      <a href="loginc" class="btn-1">
                       Hire a Freelancer &nbsp;<i class="fa-brands fa-hive"></i>
                      </a>
                      <a href="loginf" class="btn-2">
                       Earn Money Freelancing &nbsp; <i class="fa-solid fa-dollar-sign"></i>
                      </a>
                    </div>
                  </div>
                </div>
                <div class="offset-md-1 col-md-4 img-container">
                  <div class="img-box">
                    <img src="./files/images/slider2.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-5 offset-md-1">
                  <div class="detail-box">
                   	<h1>
  Start Earning Today <br>
  Freelance Jobs Await <br>
  Online
</h1>
<p>
  Find any job that matches your skills
</p>
                   	
                    <div class="btn-box">
                      <a href="loginc" class="btn-1">
                       Hire a Freelancer &nbsp;<i class="fa-brands fa-hive"></i>
                      </a>
                      <a href="loginf" class="btn-2">
                       Earn Money Freelancing &nbsp; <i class="fa-solid fa-dollar-sign"></i>
                      </a>
                    </div>
                  </div>
                </div>
                <div class="offset-md-1 col-md-4 img-container">
                  <div class="img-box">
                    <img src="./files/images/slider3.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </section>
    <!-- end slider section -->
  </div>


  <!-- experience section -->

  <section class="experience_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-5">
          <div class="img-box">
            <img src="./files/images/Exp.jpg" alt="">
          </div>
        </div>
        <div class="col-md-7" id="col-md-">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                 Work with the Most Experienced Freelancers
              </h2>
            </div>
            <p>
            Let's collaborate to transform your vision into reality. Partner with a seasoned freelancer who prioritizes professionalism, reliability, and outstanding outcomes. Your project deserves nothing less than the best, and I'm here to deliver precisely that.
            </p>
            <div class="btn-box">
             
              <a href="loginc" class="btn-2">
  Hire a Talented Freelancer Today
</a>
              
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>

  <!-- end experience section -->
 
    
      <style>
        .slider-container {
            width: 100%;
            max-width: 600px;
            margin: auto;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            overflow: hidden;
            white-space: nowrap;
            color:#ef233c;
        }
        .slider {
            display: inline-block;
            animation: slide 8s linear infinite;
        }
        @keyframes slide {
            0%, 20% { transform: translateX(0%); }
            25%, 45% { transform: translateX(-100%); }
            50%, 70% { transform: translateX(-200%); }
            75%, 95% { transform: translateX(-300%); }
            100% { transform: translateX(-400%); }
        }
    </style>
    
    
    
 
  <div class="content">
      
        <div class="card-box ">
            <div class="text-center">
                <div class="thumb-lg member-thumb mx-auto">
                    <img src="./files/images/1717602569679.jpg" class="rounded-circle img-thumbnail" alt="profile-image">
                </div>
                <input type="hidden" value="${e.id}">
                <div>
                    <h4>Maddhi Manikanta</h4>
                    <h6>${e.femail}</h6>
                    <p class="text-muted">Skills<span><i class="fa-brands fa-nutritionix"></i><br> </span><span><a href="#" class="text-pink">Java,Spring Boot, Spring MVC , Postgresql</a></span></p>
                </div>
              <a href="https://www.linkedin.com/" title="LinkedIn" class="btn btn-linkedin btn-lg" style="background-color:#3a86ff;"><i class="fa fa-linkedin fa-fw"></i> LinkedIn</a>
              <br>
                
                <div class="mt-4">
                    <div class="row">
                        <div class="col-4">
                            <div class="mt-3">
                                <h5>60000 <i class="fa-solid fa-coins"></i></h5>
                                <p class="mb-0 text-muted">Per Month Charge</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="mt-3">
                                <h5>BTECH<i class="fa-brands fa-google-scholar"></i></h5>
                                <p class="mb-0 text-muted">Education</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="mt-3">
                                <h5>05/06/2003</h5>
                                <p class="mb-0 text-muted">Date of Birth</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
         <div class="card-box " style="background-color:#e9d8a6">
            <div class="text-center">
                <div class="thumb-lg member-thumb mx-auto">
                    <img src="./files/images/IMG-20211130-WA0002.jpg" class="rounded-circle img-thumbnail " alt="profile-image">
                </div>
                <br>
                <input type="hidden" value="${e.id}">
                <div>
                    <h4>Sanjeev Kotte</h4>
                    <h6>${e.femail}</h6>
                    <p class="text-muted">Skills<span><i class="fa-brands fa-nutritionix"></i><br> </span><span><a href="#" class="text-pink">Java, Jirs, Manual Testing ,Automation,Selenium</a></span></p>
                </div>
              <a href="https://www.linkedin.com/" title="LinkedIn" class="btn btn-linkedin btn-lg" style="background-color:#3a86ff;"><i class="fa fa-linkedin fa-fw"></i> LinkedIn</a>
              <br>
                
                <div class="mt-4">
                    <div class="row">
                        <div class="col-4">
                            <div class="mt-3">
                                <h5>55000 <i class="fa-solid fa-coins"></i></h5>
                                <p class="mb-0 text-muted">Per Month Charge</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="mt-3">
                                <h5>BTECH<i class="fa-brands fa-google-scholar"></i></h5>
                                <p class="mb-0 text-muted">Education</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="mt-3">
                                <h5>15/06/2002</h5>
                                <p class="mb-0 text-muted">Date of Birth</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
         <div class="card-box " style="background-color:#94d2bd;">
            <div class="text-center">
                <div class="thumb-lg member-thumb mx-auto">
                    <img src="./files/images/vaibhavsir.jpg" class="rounded-circle img-thumbnail" alt="profile-image">
                </div>
                <input type="hidden" value="${e.id}">
                <div>
                    <h4>Raviteja LSetty</h4>
                    <h6>${e.femail}</h6>
                    <p class="text-muted">Skills<span><i class="fa-brands fa-nutritionix"></i><br> </span><span><a href="#" class="text-pink">.NET, MVC,PHP ,SQL,React js</a></span></p>
                </div>
              <a href="https://www.linkedin.com/" title="LinkedIn" class="btn btn-linkedin btn-lg" style="background-color:#3a86ff;"><i class="fa fa-linkedin fa-fw"></i> LinkedIn</a>
              <br>
                
                <div class="mt-4">
                    <div class="row">
                        <div class="col-4">
                            <div class="mt-3">
                                <h5>58000 <i class="fa-solid fa-coins"></i></h5>
                                <p class="mb-0 text-muted">Per Month Charge</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="mt-3">
                                <h5>BCA<i class="fa-brands fa-google-scholar"></i></h5>
                                <p class="mb-0 text-muted">Education</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="mt-3">
                                <h5>24/08/2001</h5>
                                <p class="mb-0 text-muted">Date of Birth</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  
</div>
   
    <center> <a href="loginc" title="LinkedIn" class="btn btn-linkedin btn-lg" style="background-color:#3a86ff;"">View More<i class="fa-solid fa-caret-right"></i><i class="fa-solid fa-caret-right"></i></a></center>

 
 
 <br>
 <br>
 
 
 <!-- Company Info section -->
     
    
    <div class="container">
  <div class="row boxed-portfolio">
    <!-- Project Cards -->
    
    
      <div class="col-md-3 col-lg-4">
        <div class="card mb-4 project" data-groups="[&quot;skill1&quot;]">
          <figure class="portfolio-item">
            <a href="loginf" class="hovereffect">
              
            <img class="img-responsive" src="./files/images/capgemini.jpg" alt="" width=300px>
              <div class="overlay"></div><!-- / overlay -->
            </a><!-- / hovereffect -->
          </figure><!-- / portfolio-item -->
          <div class="card-body">
            <a  class="card-title title-link fs-16 fw-bold" style="font-size: 24px;">Capgemini</a>
            <br>
            <a href="single-project6.html" class="card-title title-link fs-16 fw-bold">Java Developer</a>
            <p class="card-text mt-3 fs-14" style="color:blue;"><b>Required Skills:</b>Advance Java</p>
            <center><a href="loginf"><button type="button" class="btn btn-primary">View and Apply</button></a></center>
          </div><!-- / card-body -->
        </div><!-- / card -->
      </div><!-- / col-md-6 -->
      
      <div class="col-md-3 col-lg-4">
        <div class="card mb-4 project" data-groups="[&quot;skill1&quot;]">
          <figure class="portfolio-item">
            <a href="loginf" class="hovereffect">
              
            <img class="img-responsive" src="./files/images/infosys.gif" alt="" width=300px>
              <div class="overlay"></div><!-- / overlay -->
            </a><!-- / hovereffect -->
          </figure><!-- / portfolio-item -->
          <div class="card-body">
            <a  class="card-title title-link fs-16 fw-bold" style="font-size: 24px;">Infosys</a>
            <br>
            <a href="single-project6.html" class="card-title title-link fs-16 fw-bold">Business analyst</a>
            <p class="card-text mt-3 fs-14" style="color:blue;"><b>Required Skills:</b>Python,Pandas,R</p>
            <center><a href="loginf"><button type="button" class="btn btn-primary">View and Apply</button></a></center>
          </div><!-- / card-body -->
        </div><!-- / card -->
      </div><!-- / col-md-6 -->
      
      <div class="col-md-3 col-lg-4">
        <div class="card mb-4 project" data-groups="[&quot;skill1&quot;]">
          <figure class="portfolio-item">
            <a href="loginf" class="hovereffect">
              
            <img class="img-responsive" src="./files/images/wipro.png" alt="" width=300px>
              <div class="overlay"></div><!-- / overlay -->
            </a><!-- / hovereffect -->
          </figure><!-- / portfolio-item -->
          <div class="card-body">
            <a  class="card-title title-link fs-16 fw-bold" style="font-size: 24px;">Wipro</a>
            <br>
            <a href="single-project6.html" class="card-title title-link fs-16 fw-bold">Python developer</a>
            <p class="card-text mt-3 fs-14" style="color:blue;"><b>Required Skills:</b>AI,ML,ANN
</p>
            <center><a href="loginf"><button type="button" class="btn btn-primary">View and Apply</button></a></center>
          </div><!-- / card-body -->
        </div><!-- / card -->
      </div><!-- / col-md-6 -->
   
   
                     
   
   
  </div><!-- / row -->
</div>


<!-- / container -->
     
       <center> <a href="loginf" title="LinkedIn" class="btn btn-linkedin btn-lg" style="background-color:#3a86ff;"">View More & Apply  &nbsp;<i class="fa-solid fa-arrow-up-right-from-square"></i></a></center>
  
  
    
    <br>
<br>
<br>

<div class="container">
  <div class="row boxed-portfolio">
    <!-- Project Cards -->
    
    
      <div class="col-md-3 col-lg-4">
        <div class="card mb-4 project" data-groups="[&quot;skill1&quot;]">
          <figure class="portfolio-item">
            <a href="loginf" class="hovereffect">
              
            <img class="img-responsive" src="./files/images/HDB.jpg" alt="" width=300px>
              <div class="overlay"></div><!-- / overlay -->
            </a><!-- / hovereffect -->
          </figure><!-- / portfolio-item -->
          <div class="card-body">
            <a  class="card-title title-link fs-16 fw-bold" style="font-size: 24px;">
Health administration</a>
            <br>
            <a href="single-project6.html" class="card-title title-link fs-16 fw-bold">Gauravinfo Technologies</a>
            <p class="card-text mt-3 fs-14" style="color:blue;"><b>Required Skills:</b>Spring Boot,Spring MVC,Postgresql,Hibernate,SQL</p>
            
            <center><a href="loginf"><button type="button" class="btn btn-primary">View and Apply <i class="fa-solid fa-angles-right"></i></button></a></center>
            
             
            
          </div><!-- / card-body -->
        </div><!-- / card -->
      </div><!-- / col-md-6 -->
      
       <div class="col-md-3 col-lg-4">
        <div class="card mb-4 project" data-groups="[&quot;skill1&quot;]">
          <figure class="portfolio-item">
            <a href="loginf" class="hovereffect">
              
            <img class="img-responsive" src="./files/images/track.jpg" alt="" width=300px>
              <div class="overlay"></div><!-- / overlay -->
            </a><!-- / hovereffect -->
          </figure><!-- / portfolio-item -->
          <div class="card-body">
            <a  class="card-title title-link fs-16 fw-bold" style="font-size: 24px;">
Employee tracking system</a>
            <br>
            <a href="single-project6.html" class="card-title title-link fs-16 fw-bold">Qualcomm</a>
            <p class="card-text mt-3 fs-14" style="color:blue;"><b>Required Skills:</b>.NET,MVC,C#</p>
            
            <center><a href="loginf"><button type="button" class="btn btn-primary">View and Apply <i class="fa-solid fa-angles-right"></i></button></a></center>
            
             
            
          </div><!-- / card-body -->
        </div><!-- / card -->
      </div><!-- / col-md-6 -->
      
       <div class="col-md-3 col-lg-4">
        <div class="card mb-4 project" data-groups="[&quot;skill1&quot;]">
          <figure class="portfolio-item">
            <a href="loginf" class="hovereffect">
              
            <img class="img-responsive" src="./files/images/chatbot.jpg" alt="" width=300px>
              <div class="overlay"></div><!-- / overlay -->
            </a><!-- / hovereffect -->
          </figure><!-- / portfolio-item -->
          <div class="card-body">
            <a  class="card-title title-link fs-16 fw-bold" style="font-size: 24px;">
Building chatbots</a>
            <br>
            <a href="single-project6.html" class="card-title title-link fs-16 fw-bold">Wipro Technologies</a>
            <p class="card-text mt-3 fs-14" style="color:blue;"><b>Required Skills:</b>Python,AI,ML,Flask,MongoDB</p>
            
            <center><a href="loginf"><button type="button" class="btn btn-primary">View and Apply <i class="fa-solid fa-angles-right"></i></button></a></center>
            
             
            
          </div><!-- / card-body -->
        </div><!-- / card -->
      </div><!-- / col-md-6 -->
  
  </div><!-- / row -->
</div><!-- / container -->
     
     
 <center> <a href="loginf" title="LinkedIn" class="btn btn-linkedin btn-lg" style="background-color:#3a86ff;"">View More<i class="fa-solid fa-caret-right"></i><i class="fa-solid fa-caret-right"></i></a></center>
    
  
  <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container" id=about>
      <div class="row">
        <div class="col-md-10 col-lg-9 mx-auto">
          <div class="img-box">
            <img src="./files/images/aboutt.jpg" alt="">
          </div>
        </div>
      </div>
<div class="detail-box">
  <h2>
    About Doshna's Elevate
  </h2>
  <p>
    Welcome to Doshna's Elevate, where creativity and expertise meet innovation!
    
    At Doshna's Elevate, we are dedicated to bridging the gap between businesses and top freelance talent, ensuring that projects are completed with excellence. We pride ourselves on understanding the unique requirements of both clients and freelancers, making the perfect match every time.<br><br>

    Our mission is to empower both businesses and freelancers by providing a platform that fosters creativity, efficiency, and collaboration. Whether you're a client searching for expert solutions or a freelancer eager for exciting opportunities, Doshna's Elevate is your ultimate destination for success.
  
</div>

    </div>
  </section>

  <!-- end about section -->

 <!-- freelance section -->

  <section class="freelance_section ">
    <div id="accordion">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-5 offset-md-1">
            <div class="detail-box">
              <div class="heading_container">
                <h2>
                  Work Freelaner Has Done
                </h2>
              </div>
              <div class="tab_container">
                <div class="t-link-box" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                  <div class="img-box">
                    <img src="./files/images/pngegg (1).png" alt="">
                  </div>
                  <div class="detail-box">
                    <h5>
                      250+
                    </h5>
                    <h3>
                       Worldwide Freelancer
                    </h3>
                  </div>
                </div>
                <div class="t-link-box collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                  <div class="img-box">
                    <img src="./files/images/f2.png" alt="">
                  </div>
                  <div class="detail-box">
                    <h5>
                      500+
                    </h5>
                    <h3>
                      Total Jobs Listings
                    </h3>
                  </div>
                </div>
                <div class="t-link-box collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                  <div class="img-box">
                    <img src="./files/images/f3.png" alt="">
                  </div>
                  <div class="detail-box">
                    <h5>
                      250+
                    </h5>
                    <h3>
                      Total Freelancing Projects
                    </h3>
                  </div>
                </div>
                <div class="t-link-box collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                  <div class="img-box">
                    <img src="./files/images/f4.png" alt="">
                  </div>
                  <div class="detail-box">
                    <h5>
                     989+
                    </h5>
                    <h3>
                      Total Partners  <br>
                      Companies
                    </h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="collapse show" id="collapseOne" aria-labelledby="headingOne" data-parent="#accordion">
              <div class="img-box">
                <img src="./files/images/group.png" alt="">
              </div>
            </div>
            <div class="collapse" id="collapseTwo" aria-labelledby="headingTwo" data-parent="#accordion">
              <div class="img-box">
                <img src="./files/images/group.png" alt="">
              </div>
            </div>
            <div class="collapse" id="collapseThree" aria-labelledby="headingThree" data-parent="#accordion">
              <div class="img-box">
                <img src="./files/images/group.png" alt="">
              </div>
            </div>
            <div class="collapse" id="collapseFour" aria-labelledby="headingfour" data-parent="#accordion">
              <div class="img-box">
                <img src="./files/images/group.png" alt="">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end freelance section -->
 
 
 
  <!-- client section -->

<section class="client_section layout_padding">
  <div class="container">
    <div class="row">
      <div class="col-lg-9 col-md-10 mx-auto">
        <div class="heading_container">
          <h2>
            Testimonial
          </h2>
        </div>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="detail-box">
                <h4>
                 Elon Musk
                </h4>
                <p>
                  This is the best platform for freelancers where they can earn money through freelancing and get unlimited opportunities to work on several projects.
                </p>
                <img src="./files/images/quote.png" alt="">
              </div>
            </div>
            <div class="carousel-item">
              <div class="detail-box">
                <h4>
                 Sundar Pichai
                </h4>
                <p>
                Their platform is user-friendly, their team is responsive and professional, and their commitment to quality is unmatched. Thanks to ProjectPulse, we were able to find the perfect freelancer for our project, and the results exceeded our expectations. 
                </p>
                <img src="./files/images/quote.png" alt="">
              </div>
            </div>
            <div class="carousel-item">
              <div class="detail-box">
                <h4>
                 Satya Nadella
                </h4>
                <p>
                The platform is intuitive, making it simple to browse profiles, communicate with freelancers, and manage projects. We've been consistently impressed with the quality of talent available on ProjectPulse, and the level of professionalism exhibited by both the freelancers and the ProjectPulse team.
                </p>
                <img src="./files/images/quote.png" alt="">
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

  <!-- end client section -->





  <!-- footer section -->
  <footer class="container-fluid footer_section ">
    <div class="container">
      <p>
        &copy; <span id="displayDate"></span> All Rights Reserved By
        <a href="https://html.design/">Maddi D N V B Manikanta</a>
      </p>
    </div>
  </footer>
  <!-- end  footer section -->


  <script src="./files/js/jquery-3.4.1.min.js"></script>
  <script src="./files/js/bootstrap.js"></script>
  <script src="./files/js/custom.js"></script>
  
  <style>
  
						  
						  
						    body {
						   ;
						        
						    }
						
						    .content {
						        display: flex;
						        flex-wrap: wrap;
						        justify-content: space-around;
						    }
						
						    .card-box {
						        flex: 0 0 30%; /* Adjust the width as needed */
						        margin: 10px;
						        padding: 20px;
						        border-radius: 3px;
						        background-color: #97dffc;
						        border-radius:30px;
						        
						        
						    }
						
						    .social-links li a {
						        border-radius: 50%;
						        color: rgba(121, 121, 121, .8);
						        display: inline-block;
						        height: 30px;
						        line-height: 27px;
						        border: 2px solid rgba(121, 121, 121, .5);
						        text-align: center;
						        width: 30px
						    }
						
						    .social-links li a:hover {
						        color: #797979;
						        border: 2px solid #797979
						    }
						
						    .thumb-lg {
						        height: 88px;
						        width: 88px;
						    }
						
						    .img-thumbnail {
						        padding: .25rem;
						        background-color: #fff;
						        border: 1px solid #dee2e6;
						        border-radius: .25rem;
						        max-width: 100%;
						        height: auto;
						    }
						
						    .text-pink {
						        color: #ff679b!important;
						    }
						
						    .btn-rounded {
						        border-radius: 2em;
						    }
						
						    .text-muted {
						        color: black;
						    }
						
						    h4 {
						        line-height: 22px;
						        font-size: 18px;
						        
						        
						    }
						    
						  
						    
						    body {
						  
						  background: lighten(#0E76A8,45%);
						}
							.btn-linkedin {
							  background: #0E76A8;
							  border-radius: 0;
							  color: #fff;
							  border-width: 1px;
							  border-style: solid;
							  border-color: #084461;
							}
							.btn-linkedin:link, .btn-linkedin:visited {
							  color: #fff;
							}
							.btn-linkedin:active, .btn-linkedin:hover {
							  background: #084461;
							  color: #fff;
							}
							
							
						  
						  .hovereffect {
						  width: 100%;
						  height: 100%;
						  float: left;
						  overflow: hidden;
						  position: relative;
						  text-align: center;
						  z-index: 2;
						}
						
						.hovereffect .overlay {
						  width: 100%;
						  height: 100%;
						  position: absolute;
						  overflow: hidden;
						  top: 0;
						  left: 0;
						  opacity: 0;
						  background-color: rgba(0, 0, 0, 0.25);
						  -webkit-transition: all .3s ease-in-out;
						  transition: all .3s ease-in-out;
						  border-radius: 5px;
						}
						
						.white .hovereffect .overlay {
						  background-color: rgba(255, 255, 255, 0.75);
						}
						
						.dark-overlay .hovereffect .overlay {
						  background-color: rgba(0, 0, 0, 0.5);
						}
						
						.hovereffect img {
						  display: block;
						  position: relative;
						  -webkit-transition: all .3s linear;
						  transition: all .3s linear;
						 
						  text-align:center;
						  border-top: 5px solid;
						  border-image:   linear-gradient(to right, grey 25%, yellow 25%, yellow 50%,red 50%, red 75%, teal 75%) 5;
						}
						
						.no-image-border .hovereffect img {
						  border: none;
						  border-radius: 5px;
						}
						
						.no-image-border.no-gutter .hovereffect img, .no-image-border.no-gutter .hovereffect .overlay {
						  border: none;
						  border-radius: 0;
						}
						
						.hovereffect:hover img {
						  -webkit-transform: rotate(-7deg) scale(1.33);
						  -ms-transform: rotate(-7deg) scale(1.33);
						  transform: rotate(-7deg) scale(1.33);
						}
						
						.hovereffect-title .project-title-wrapper {
						  position: absolute;
						  top: 45%;
						  left: 0;
						  margin-top: -32px;
						  width: 100%;
						  padding: 10px;
						  -webkit-transition: all .5s ease-in-out;
						  transition: all .5s ease-in-out;
						}
						
						.project:hover .hovereffect-title .project-title-wrapper {
						  top: 50%;
						}
						/* Ensure that all cards have the same height */
						.project {
						    display: flex;
						    flex-direction: column;
						    height: 100%;
						}
						
						/* Make sure card body fills the card's height */
						.card-body {
						    flex-grow: 1;
						    display: flex;
						    flex-direction: column;
						    justify-content: space-between;
						}
						
						/* Optional: Ensure all images in the cards are of the same height */
						.card img {
						    object-fit: cover;
						    height: 200px; /* Adjust this as needed */
						}
						
						/* Optional: To add some margin between the cards */
						.row.boxed-portfolio {
						    margin-bottom: 30px;
						}
						/* Fixing hover effect so images look good */
						.project {
						    position: relative;
						    overflow: hidden; /* Ensures that elements don't overflow outside the card */
						}
						
						.project .hovereffect {
						    position: absolute;
						    top: 0;
						    left: 0;
						    right: 0;
						    bottom: 0;
						    background: rgba(0, 0, 0, 0.5); /* Adds a transparent dark background on hover */
						    opacity: 0;
						    transition: opacity 0.3s ease;
						}
						
						.project:hover .hovereffect {
						    opacity: 1;
						}
						
						.project .hovereffect-title {
						    position: absolute;
						    top: 50%;
						    left: 50%;
						    transform: translate(-50%, -50%); /* Center the title */
						    color: white;
						    font-size: 1.5em; /* Adjust title size */
						    text-align: center;
						    visibility: hidden; /* Hidden by default */
						    opacity: 0;
						    transition: visibility 0s, opacity 0.3s ease-in-out; /* Smooth transition */
						}
						
						.project:hover .hovereffect-title {
						    visibility: visible;
						    opacity: 1;
						}
						
						.project img {
						    width: 100%;
						    height: 100%;
						    object-fit: cover;
						}
						
						/* Optional: Adjust card body and image to make the layout cleaner */
						.card-body {
						    padding: 15px;
						}
						
						.card-body .card-title {
						    font-size: 18px;
						    margin-bottom: 10px;
						}
						  
						  
  
</style>



</body>

</html>