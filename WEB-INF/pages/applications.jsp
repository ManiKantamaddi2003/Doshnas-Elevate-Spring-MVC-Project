 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Received-applications</title>
 <link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon">
 <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
 
</head>
<body>

 <h1 style="text-align:center; padding:20px;">Application Received &nbsp;<i class="fa-solid fa-file" style="font-size:20px;"></i></h1>
  
  <hr style="border: 5px solid #fff;">
  <br>
<br>
<br>

 <c:forEach items="${email}" var="ec">
 <div class="button-container">
        <a href="accptedjobapplications/${ec.email}"><button class="btn accepted" style="color:#fff;">Accepted Applications &nbsp;<i class="fa-solid fa-clipboard-check"></i></button></a>
        <a href="rejectedcandidate/${ec.email}"><button class="btn rejected" style="color:#fff;">Rejected Applications &nbsp; <i class="fa-regular fa-circle-xmark"></i></button></a>
 </div>
</c:forEach>
   <h2>Latest Jobs Applications&nbsp; <i class="fa-solid fa-user-check"></i></h2>
<table>

    <thead>
        <tr>
            <th scope="col">Applicant name</th>
            <th scope="col">Email</th>
            <th scope="col">Job Profile</th>
            <th scope="col">Resume</th>
            <th scope="col">Company Name</th>
            <th scope="col">Company Email</th>
            
            <th scope="col">Update Status &nbsp;<i class="fa-solid fa-list-check"></i></th>
            
            
           
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${jobapplicationdetails}" var="e">
            <tr>
                <td data-label="Farmer Name">${e.candidatename}</td>
                <td data-label="Product">${e.candidateemail}</td>
                <td data-label="Type">${e.position}</td>
                <td data-label="Price">
                <embed class="pdf" 
               src=
"./files/webimages/${e.candidateresume}"
            width="210" height="250">
            
             <a href="./files/webimages/${e.candidateresume}" class="download-button" download="ProjectPlus Resume.PDF" style="background-color:#457b9d;padding:5px; color:#fff;">Download Resume
             
             
    <i class="fa-solid fa-file-arrow-down"></i>
             </a>
                
                
                </td>
                <td data-label="Date">${e.companyname}</td>
                <td data-label="Date" >${e.companyemail}</td>
                
               
                
                <td> 
                 <form action="updatestatus" method="post">
                 <input type="hidden" value="${e.id}" name="id">
                 <select id="status" name="status"  required>
                 <option value="${e.status}" style="color:blue;">Current:${e.status}</option>
                 <option value="Accepted" style="color:green;">Accepted</option>
                 <option value="Rejected" style="color:red;">Rejected</option>
                </select>
                <br>
                <br>
                <button type="submit">Update Status</button>
                </form>
                </td>
                  
              
               
                
                
                
               
               
              
               
                
               
            </tr>
        </c:forEach>
    </tbody>
</table>

<br>
<br>

<h2>Projects &nbsp;<i class="fa-solid fa-briefcase"></i></h2>
<table>

    <thead>
        <tr>
            <th scope="col">Applicant name</th>
            <th scope="col">Email</th>
            <th scope="col" class="header-spacing">Project name</th>
             <th scope="col">Resume</th>
            <th scope="col">Company Name</th>
             
             <th scope="col"> Update Status &nbsp;<i class="fa-solid fa-list-check"></i></th>
            
           
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${projectapplicationdetails}" var="ef">
            <tr>
                <td data-label="Farmer Name">${ef.candidatename}</td>
                <td data-label="Product">${ef.candidateemail}</td>
                <td data-label="Product">${ef.projectname}</td>
                
                  <td data-label="Price">
                
                  
        <embed class="pdf" 
               src=
"./files/webimages/${ef.candidateresume}"
            width="250" height="250">
            
            
             <a href="./files/webimages/${ef.candidateresume}" class="download-button" download="ProjectPlus Resume.PDF" style="background-color:#457b9d;padding:5px; color:#fff;">Download Resume
             
             
    <i class="fa-solid fa-file-arrow-down"></i>
             </a>
                
                </td>
                
                <td data-label="Type">${ef.projectcompany}</td>
               
                
                
                <td> 
                 <form action="updatestatusproject" method="post">
                 <input type="hidden" value="${ef.id}" name="id">
                 <select id="status" name="status"  required>
                 <option value="${ef.status}" style="color:blue;">Current:${ef.status}</option>
                 <option value="Accepted" style="color:green;">Accepted</option>
                 <option value="Rejected" style="color:red;">Rejected</option>
                </select>
                <br>
                <br>
                <button type="submit">Update Status</button>
                </form>
                </td>
                
             
                 
              
                
              
            </tr>
        </c:forEach>
    </tbody>
</table>

<style>

/* styles.css */
body {
    font-family: Arial, sans-serif;
    
    justify-content: center;
    align-items: center;
   
    margin: 0;
    
}

.button-container {
    text-align: center;
}

.btn {
    font-size: 16px;
    padding: 15px 30px;
    margin: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s;
}

.accepted {
    background-color: #4CAF50;
    color: white;
}

.accepted:hover {
    background-color: #45a049;
    transform: scale(1.05);
}

.rejected {
    background-color: #f44336;
    color: white;
}

.rejected:hover {
    background-color: #e53935;
    transform: scale(1.05);
}


body {
   background: rgb(255,255,255);
background: -moz-linear-gradient(90deg, #013a63 50%, #1a2e35 50%);
background: -webkit-linear-gradient(90deg,  #013a63 50%, #1a2e35 50%);
background: linear-gradient(90deg,  #013a63 50%, #1a2e35 50%);
 font-family: "Open Sans", sans-serif;
 

}

h1,h2{
  color:#fff;
  font-size:30px !important;
}

td{
font-size:15px;
}

table {
  border: 1px solid #ccc;
  border-collapse: collapse;
  margin: 0;
  padding: 0;
  width: 100%;
  table-layout: fixed;
}

table caption {
  font-size: 1em;
  margin: .5em 0 .75em;
}

table tr {
  background-color: #f8f8f8;
  border: 1px solid #ddd;
  padding: .35em;
  color:black;
}

table th,
table td {
  padding: .625em;
  text-align: center;
}

table th {
  font-size: .85em;
  letter-spacing: .1em;
  text-transform: uppercase;
}

@media screen and (max-width: 600px) {
  table {
    border: 0;
  }

  table caption {
    font-size: 1.3em;
  }
  
  table thead {
    border: none;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
  }
  
  table tr {
    border-bottom: 3px solid #ddd;
    display: block;
    margin-bottom: .625em;
    color:black;
  }
  
  table td {
    border-bottom: 1px solid #ddd;
    display: block;
    font-size: .5em;
    text-align: right;
  }
  
  table td::before {
    /*
    * aria-label has no advantage, it won't be read inside a table
    content: attr(aria-label);
    */
    content: attr(data-label);
    float: left;
    font-weight: bold;
    text-transform: uppercase;
  }
  
  table td:last-child {
    border-bottom: 0;
  }
}














/* general styling */

</style>

<br>
<br>
<br>

<!-- Footer section Start -->
  
   <%@ include file="footerfile.jsp" %>

  <!-- Footer Section end -->

</body>
</html>