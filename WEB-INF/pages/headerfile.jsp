<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Welcome</title>

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


<%HttpSession s1=request.getSession(false);
		  
		
		  
		  %>




   <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container">
          <a class="navbar-brand" href=profilec class="nav-link" style="color:#fff;">
            
         
          
    <c:forEach items="${kk}" var="e">
        <div style="width: 60px; height: 60px; border-radius: 50%; border: 1px solid white; overflow: hidden; margin-right: 10px;">
            <img class="profilecimage" alt="" src="<%= request.getContextPath() %>/files/webimages/${e.profileimg}" style="width: 100%; height:100% auto;">
        </div>    
        <h4>${e.name}</h4>
    </c:forEach>
   

          
            
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="homec"><i class="fa-solid fa-house"></i> &nbsp;Home</a>
              </li>
              
              <li class="nav-item active">
                <a class="nav-link" href="viewallfreelancer"><i class="fa-solid fa-users"></i>&nbsp;Hire</a>
              </li>
              
              
                <c:forEach items="${kk}" var="ef">
              <li class="nav-item">
                <form action="getjobdata" method="post">
                <input type="hidden" name="email" value="${ef.email}">
               
               <button type="submit" style="background-color: transparent !important; border:none; color:#fff;"><i class="fa-solid fa-location-arrow" ></i> &nbsp;Manage Jobs and Projects</button>
                </form>
              </li>
               <li class="nav-item">
                <form action="getcandidatedata" method="post">
                <input type="hidden" name="email" value="${ef.email}">
               
               <button type="submit" style="background-color: transparent !important; border:none; color:#fff;"><i class="fa-solid fa-file-contract"></i> &nbsp;Candidates Applications</button>
                </form>
              </li>
              
              
               </c:forEach>
              
              
             
             
            </ul>
            <div class="user_option">
              <a href="logutc">
               
               
                <i class="fa-solid fa-power-off"></i> &nbsp;Logout
             
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

</body>
</html>