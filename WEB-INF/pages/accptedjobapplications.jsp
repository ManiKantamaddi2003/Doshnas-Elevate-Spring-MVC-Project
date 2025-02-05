 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accepted Applications</title>
<link rel="shortcut icon" href="./files/images/favicon-32x32.png" type="image/x-icon">
 <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
 
</head>
<body>

 <h1 style="text-align:center; padding:20px;">Accepted Candidate &nbsp;<i class="fa-solid fa-file" style="font-size:20px;"></i></h1>
  
  <hr style="border: 5px solid #fff;">
  <br>
<br>
<br>


   <h2>Accepted Jobs Applications&nbsp; <i class="fa-solid fa-user-check"></i></h2>
<table>

    <thead>
        <tr>
            <th scope="col">Applicant name</th>
            <th scope="col">Email</th>
            <th scope="col">Job Profile</th>
          
            <th scope="col">Company Name</th>
            <th scope="col">Company Email</th>
            
            <th scope="col">Status &nbsp;<i class="fa-solid fa-list-check"></i></th>
           
            
            
           
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${getallapplicationdata}" var="e">
            <tr>
                <td data-label="Farmer Name">${e.candidatename}</td>
                <td data-label="Product">${e.candidateemail}</td>
                <td data-label="Type">${e.position}</td>
                
                <td data-label="Date">${e.companyname}</td>
                <td data-label="Date" >${e.companyemail}</td>
                
               
                
                <td style="color:green;"> 
                ${e.status}
                </td>
                
               
                  
              
               
                
                
                
               
               
              
               
                
               
            </tr>
        </c:forEach>
    </tbody>
</table>

<br>
<br>



<h2>Accepted Projects &nbsp;<i class="fa-solid fa-briefcase"></i></h2>
<table>

    <thead>
        <tr>
            <th scope="col">Applicant name</th>
            <th scope="col">Email</th>
            <th scope="col" class="header-spacing">Project name</th>
             
            <th scope="col">Company Name</th>
             
             <th scope="col">Status &nbsp;<i class="fa-solid fa-list-check"></i></th>
            
           
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${getapplicationdataproject}" var="ef">
            <tr>
                <td data-label="Farmer Name">${ef.candidatename}</td>
                <td data-label="Product">${ef.candidateemail}</td>
                <td data-label="Product">${ef.projectname}</td>
                
                  
                
                  
        
                
                <td data-label="Type">${ef.projectcompany}</td>
               
                
                
                <td style="color:green;""> 
                 ${ef.status}
                </td>
                
             
                 
              
                
              
            </tr>
        </c:forEach>
    </tbody>
</table>


 
                 
              
                
              
       

<style>

/* styles.css */

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



</body>
</html>