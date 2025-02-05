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
  <link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon">

  <title>Home</title>

 
</head>

<body>


 
     <%@ include file="headerfile.jsp" %>

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
                     You Can <br>
                      Hire Freelancer <br>
                      Here
                    </h1>
                    <c:forEach  items="${kk}" var="e">
                    <p>WELCOME  ${e.name} </p>
                  
                   </c:forEach>
                   
                   
                    <div class="btn-box">
                      <a href="postjob" class="btn-1">
                    Post Job <i class="fa-solid fa-angles-right"></i>
                      </a>
                        <a href="postproject" class="btn-2">
                       Post Project  <i class="fa-solid fa-briefcase"></i>
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
                      You Can <br>
                      Hire Freelancer <br>
                      Here
                    </h1>
                    <c:forEach  items="${kk}" var="e">
                    <p>WELCOME  ${e.name} </p>
                  
                   </c:forEach>
                    <div class="btn-box">
                      <a href="postjob" class="btn-1">
                          Post Job <i class="fa-solid fa-angles-right"></i>
                      </a>
                        <a href="postproject" class="btn-2">
                       Post Project  <i class="fa-solid fa-briefcase"></i>
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
                      You Can <br>
                      Hire Freelancer <br>
                      Here
                    </h1>
                    <c:forEach  items="${kk}" var="e">
                    <p>WELCOME  ${e.name} </p>
                  
                   </c:forEach>
                    <div class="btn-box">
                      <a href="postjob" class="btn-1">
                          Post Job  <i class="fa-solid fa-angles-right"></i>
                      </a>
                        <a href="postproject" class="btn-2">
                       Post Project <i class="fa-solid fa-briefcase"></i>
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

  <!-- category section -->

 <style>
    body {
        background: #bbd0ff;
        
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
        color: #98a6ad!important;
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
</style>




<div class="content">
      <c:forEach items="${freelancerdta}"  var="e">
        <div class="card-box">
            <div class="text-center">
                <div class="thumb-lg member-thumb mx-auto">
                    <img src="./files/webimages/${e.fpfile}" class="rounded-circle img-thumbnail" alt="profile-image">
                </div>
                <input type="hidden" value="${e.id}">
                <div>
                    <h4>${e.fname}</h4>
                    <h6>${e.femail}</h6>
                    <p class="text-muted">Skills<span><i class="fa-brands fa-nutritionix"></i><br> </span><span><a href="#" class="text-pink">${e.skills}</a></span></p>
                </div>
              <a href="${e.flinkedin}" title="LinkedIn" class="btn btn-linkedin btn-lg" style="background-color:#3a86ff;""><i class="fa fa-linkedin fa-fw"></i> LinkedIn</a>
              <br>
                
                <div class="mt-4">
                    <div class="row">
                        <div class="col-4">
                            <div class="mt-3">
                                <h5>${e.fcharge} <i class="fa-solid fa-coins"></i></h5>
                                <p class="mb-0 text-muted">Per Month Charge</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="mt-3">
                                <h5>${e.feducation}<i class="fa-brands fa-google-scholar"></i></h5>
                                <p class="mb-0 text-muted">Education</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="mt-3">
                                <h5>${e.fdate}</h5>
                                <p class="mb-0 text-muted">Date of Birth</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
   
           <center> <a href="viewallfreelancer" title="LinkedIn" class="btn btn-linkedin btn-lg" style="background-color:#3a86ff;"">View More<i class="fa-solid fa-caret-right"></i><i class="fa-solid fa-caret-right"></i></a></center>

    
    


  <!-- end category section -->

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
                   Bill Gates
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
                   Adani
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
                   Srinivasan
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

  <!-- end client section -->



  <!-- Footer section Start -->
  
   <%@ include file="footerfile.jsp" %>

  <!-- Footer Section end -->

</body>
</body>

</html>