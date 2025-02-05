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
 

  <title>Message-page</title>
  <link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon">
  <link rel="stylesheet" type="text/css" href="./files/css/bootstrap.css" />

  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="./files/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="./files/css/responsive.css" rel="stylesheet" />
  
   <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>

 
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
                       
                       ${statusmessage}
                       ${messagedeleteproject}
                       ${messaageupdatejob}
                       ${messaagedeletejob}
                       ${statusmessageproject}
                    
                    </h1>
                    <h2 style="color:blue;">${messagejob}</h2>
                                        <div class="btn-box">
                     <a href="homec" class="btn-1">
                    Home &nbsp; <i class="fa-solid fa-house"></i>
                      </a>
                     
                       
                     
                    </div>
                    
                    
               
                   
                   
                  </div>
                </div>
                
                <div class="offset-md-1 col-md-4 img-container">
                  <div class="img-box">
                    <img src="./files/images/message.png" alt="">
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



</body>
</html>

  