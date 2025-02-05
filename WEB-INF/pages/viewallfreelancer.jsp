<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View-Freelancers</title>
  <link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon">
   <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
</head>
<body>


<style>
   
   body {
   background: rgb(255,255,255);
background: -moz-linear-gradient(90deg, #17c3b2 50%, rgba(131,0,254,1) 50%);
background: -webkit-linear-gradient(90deg,  #17c3b2 50%, rgba(131,0,254,1) 50%);
background: linear-gradient(90deg,  #17c3b2 50%, rgba(131,0,254,1) 50%);

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
<br>
<br>
<center><h3  style="color: #fff;font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">Contact <i class="fa fa-arrow-down" aria-hidden="true"></i> Any Freelancer According to Your Requirment.</h3></center>


<div class="content">
      <c:forEach items="${datafreelancer}"  var="e">
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
   







<!-- Footer section Start -->
  
   <%@ include file="footerfile.jsp" %>

  <!-- Footer Section end -->





 
</body>
</html>