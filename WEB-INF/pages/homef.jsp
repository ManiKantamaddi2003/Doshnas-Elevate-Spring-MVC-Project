<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
 

  <title>Home</title>
  <link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon">

 
</head>

<body>


 
     <%@ include file="headerfilefreelancer.jsp" %>

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
                      YOU CAN<br>
                EARN MONEY FROM FREELANCING<br>
                    ONLINE
                    </h1>
                    <c:forEach  items="${kkk}" var="e">
                    <p>WELCOME BACK  ${e.fname} </p>
                  
                   </c:forEach>
                   
                    <div class="btn-box">
                      <a href="Explorejobs" class="btn-1">
                    Explore Jobs<i class="fa-solid fa-angles-right"></i>
                      </a>
                       <a href="Exploreproject" class="btn-2">
                       Explore Freelancing Project <i class="fa-solid fa-briefcase"></i>
                       </a>
                      
                     
                    </div>
                  </div>
                </div>
                <div class="offset-md-1 col-md-4 img-container">
                  <div class="img-box">
                    <img src="./files/images/aa.png" alt="">
                  </div>
                   
                        
                <div class="col-md-5 offset-md-1">
                  <div class="detail-box">
                   
                   
                    <div class="btn-box">
                      <a href="companies-view" class="btn-1">
                    Listed Companies with Projectplus &nbsp;<i class="fa-regular fa-building"></i>
                      </a>
                      
                      
                     
                    </div>
                  </div>
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
                      YOU CAN<br>
                EARN MONEY FROM FREELANCING<br>
                    ONLINE
                    </h1>
                    <c:forEach  items="${kkk}" var="e">
                    <p>WELCOME BACK  ${e.fname} </p>
                  
                   </c:forEach>
                   
                    <div class="btn-box">
                     <a href="Explorejobs" class="btn-1">
                    Explore Jobs<i class="fa-solid fa-angles-right"></i>
                      </a>
                       <a href="Exploreproject" class="btn-2">
                       Explore Freelancing Project <i class="fa-solid fa-briefcase"></i>
                       </a>
                     
                    </div>
                  </div>
                </div>
                <div class="offset-md-1 col-md-4 img-container">
                  <div class="img-box">
                    <img src="./files/images/slider2.png" alt="">
                  </div>
                  
                   <div class="col-md-5 offset-md-1">
                  <div class="detail-box">
                   
                   
                    <div class="btn-box">
                      <a href="companies-view" class="btn-1">
                    Listed Companies with Projectplus &nbsp;<i class="fa-regular fa-building"></i>
                      </a>
                      
                      
                     
                    </div>
                  </div>
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
                      YOU CAN<br>
                EARN MONEY FROM FREELANCING<br>
                    ONLINE
                    </h1>
                    <c:forEach  items="${kkk}" var="e">
                    <p>WELCOME BACK  ${e.fname} </p>
                  
                   </c:forEach>
                   
                    <div class="btn-box">
                     <a href="Explorejobs" class="btn-1">
                    Explore Jobs<i class="fa-solid fa-angles-right"></i>
                      </a>
                       <a href="Exploreproject" class="btn-2">
                       Explore Freelancing Project <i class="fa-solid fa-briefcase"></i>
                       </a>
                     
                    </div>
                  </div>
                </div>
                <div class="offset-md-1 col-md-4 img-container">
                  <div class="img-box">
                    <img src="./files/images/slider3.png" alt="">
                  </div>
                  
                   <div class="col-md-5 offset-md-1">
                  <div class="detail-box">
                   
                   
                    <div class="btn-box">
                      <a href="companies-view" class="btn-1">
                    Listed Companies with Projectplus &nbsp;<i class="fa-regular fa-building"></i>
                      </a>
                      
                      
                     
                    </div>
                  </div>
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
        <div class="col-md-7">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                Best Experinced Freelancer Here
              </h2>
            </div>
            <p>
            Let's collaborate to transform your vision into reality. Partner with a seasoned freelancer who prioritizes professionalism, reliability, and outstanding outcomes. Your project deserves nothing less than the best, and I'm here to deliver precisely that.
            </p>
            <div class="btn-box">
             
             
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>

  <!-- end experience section -->
  
  
  <div class="container">
  <div class="row boxed-portfolio">
    <!-- Project Cards -->
    <c:forEach items="${jobdata}" var="e">
    
      <div class="col-md-3 col-lg-4">
        <div class="card mb-4 project" data-groups="[&quot;skill1&quot;]">
          <figure class="portfolio-item">
            <a href="single-project6.html" class="hovereffect">
              
            <img class="img-responsive" src="./files/webimages/${e.profileimg}" alt="" width=300px>
              <div class="overlay"></div><!-- / overlay -->
            </a><!-- / hovereffect -->
          </figure><!-- / portfolio-item -->
          <div class="card-body">
            <a  class="card-title title-link fs-16 fw-bold" style="font-size: 24px;">${e.jcname}</a>
            <br>
            <a href="single-project6.html" class="card-title title-link fs-16 fw-bold">${e.jtittle}</a>
            <p class="card-text mt-3 fs-14" style="color:blue;"><b>Required Skills:</b>${e.jskills}</p>
            <center><a href="Explorejobs"><button type="button" class="btn btn-primary">View and Apply</button></a></center>
          </div><!-- / card-body -->
        </div><!-- / card -->
      </div><!-- / col-md-6 -->
    </c:forEach>
  </div><!-- / row -->
</div><!-- / container -->
     
      <center> <a href="Explorejobs" title="LinkedIn" class="btn btn-linkedin btn-lg" style="background-color:#3a86ff;"">View More<i class="fa-solid fa-caret-right"></i><i class="fa-solid fa-caret-right"></i></a></center>
  
<br>
<br>
<br>

<div class="container">
  <div class="row boxed-portfolio">
    <!-- Project Cards -->
    <c:forEach items="${projectdata}" var="e">
    
      <div class="col-md-3 col-lg-4">
        <div class="card mb-4 project" data-groups="[&quot;skill1&quot;]">
          <figure class="portfolio-item">
            <a href="single-project6.html" class="hovereffect">
              
            <img class="img-responsive" src="./files/images/projectpng.png" alt="" width=300px>
              <div class="overlay"></div><!-- / overlay -->
            </a><!-- / hovereffect -->
          </figure><!-- / portfolio-item -->
          <div class="card-body">
            <a  class="card-title title-link fs-16 fw-bold" style="font-size: 24px;">${e.projectt}</a>
            <br>
            <a href="single-project6.html" class="card-title title-link fs-16 fw-bold">${e.projectc}</a>
            <p class="card-text mt-3 fs-14" style="color:blue;"><b>Required Skills:</b>${e.projects}</p>
            
            <center><a href="Exploreproject"><button type="button" class="btn btn-primary">View and Apply <i class="fa-solid fa-angles-right"></i></button></a></center>
            
             
            
          </div><!-- / card-body -->
        </div><!-- / card -->
      </div><!-- / col-md-6 -->
    </c:forEach>
  </div><!-- / row -->
</div><!-- / container -->
     
     
 <center> <a href="Exploreproject" title="LinkedIn" class="btn btn-linkedin btn-lg" style="background-color:#3a86ff;"">View More<i class="fa-solid fa-caret-right"></i><i class="fa-solid fa-caret-right"></i></a></center>
  <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-10 col-lg-9 mx-auto">
          <div class="img-box">
            <img src="./files/images/aboutt.jpg" alt="">
          </div>
        </div>
      </div>
      <div class="detail-box">
        <h2>
          About Doshna's Elevate Company
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
                      ${countfreelancer}
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
                      ${countjobs}
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
                      ${countproject}
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
                     ${countcompany}
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
                <img src="./files/images/freelance-img.jpg" alt="">
              </div>
            </div>
            <div class="collapse" id="collapseTwo" aria-labelledby="headingTwo" data-parent="#accordion">
              <div class="img-box">
                <img src="./files/images/freelance-img.jpg" alt="">
              </div>
            </div>
            <div class="collapse" id="collapseThree" aria-labelledby="headingThree" data-parent="#accordion">
              <div class="img-box">
                <img src="./files/images/freelance-img.jpg" alt="">
              </div>
            </div>
            <div class="collapse" id="collapseFour" aria-labelledby="headingfour" data-parent="#accordion">
              <div class="img-box">
                <img src="./files/images/freelance-img.jpg" alt="">
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
                   Shaik Bhaji
                  </h4>
                  <p>
                    This is Best Platform for Freelancer Where they can earn money through freelancing and get unlimited opprtunity to work on Sereval Project
                  </p>
                  <img src="./files/images/quote.png" alt="">
                </div>
              </div>
              <div class="carousel-item">
                <div class="detail-box">
                  <h4>
                   Rohit Ravindra
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
                   Varun Alladi
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
  
  <style>
  
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
/* Add this CSS to standardize the size of the project cards */
/* Container to ensure the cards maintain the same size */
.project {
    display: flex;
    flex-direction: column;
    height: 100%;
    min-height: 400px; /* Ensure cards have a minimum height */
    max-height: 450px; /* Optional, can adjust based on your preference */
    overflow: hidden; /* Prevents content from overflowing */
    margin-bottom: 20px; /* Space between cards */
}

/* Ensuring the card body content doesn't overflow */
.card-body {
    flex-grow: 1; /* Allow the content to grow but prevent overflow */
    overflow: hidden; /* Hide any content that overflows */
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

/* Restrict image height and ensure it doesn't overflow */
.card img {
    max-height: 200px; /* Max height of image */
    width: 100%; /* Full width of the card */
    object-fit: cover; /* Make sure the image covers the space without distorting */
}

/* Ensuring text doesn't overflow */
.card-title, .card-text {
    text-overflow: ellipsis; /* Adds ellipsis for long text */
    overflow: hidden; /* Prevent overflow of text */
    white-space: nowrap; /* Ensure text stays in a single line if too long */
    max-width: 100%; /* Prevent text from overflowing the card width */
}

/* Adjust button position to the bottom */
.card-body .btn {
    margin-top: auto; /* Push the button to the bottom of the card */
}

  
  
  </style>



  <!-- Footer section Start -->
  
   <%@ include file="footerfile.jsp" %>

  <!-- Footer Section end -->

</body>
</body>

</html>