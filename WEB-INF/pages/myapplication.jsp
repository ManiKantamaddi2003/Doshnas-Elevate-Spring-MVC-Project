 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>my-applications</title>
<link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon">
 <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
</head>
<body>

 <h1 style="text-align:center;">My Applications &nbsp;<i class="fa-solid fa-circle-check" style="font-size:20px;"></i></h1>
  
  <hr style="border: 5px solid black;">
  <br>
<br>
<br>
   <h2>Job Applications &nbsp;<i class="fa-solid fa-list"></i></h2>
<table>

    <thead>
        <tr>
            <th scope="col">Company</th>
            <th scope="col">Position</th>
            <th scope="col">Candidate Name</th>
            <th scope="col">Candidate Email</th>
            <th scope="col">Resume</th>
            <th scope="col">Application Status</th>
            
           
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${jobapplication}" var="e">
            <tr>
                <td data-label="Farmer Name">${e.companyname}</td>
                <td data-label="Product">${e.position}</td>
                <td data-label="Type">${e.candidatename}</td>
                <td data-label="Price">${e.candidateemail}</td>
                <td data-label="Date">${e.candidateresume}
                
                
                
                </td>
                <td data-label="Date" class="status">${e.status}</td>
              
            </tr>
        </c:forEach>
    </tbody>
</table>

<br>
<br>

<h2>Project Applications &nbsp;<i class="fa-solid fa-list"></i></h2>
<table>

    <thead>
        <tr>
            <th scope="col">Company</th>
            <th scope="col">Position</th>
            <th scope="col">Candidate Name</th>
            <th scope="col">Candidate Email</th>
            <th scope="col">Resume</th>
            <th scope="col">Application Status</th>
            
           
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${projectapplication}" var="ef">
            <tr>
                <td data-label="Farmer Name">${ef.projectname}</td>
                <td data-label="Product">${ef.projectcompany}</td>
                <td data-label="Type">${ef.candidatename}</td>
                <td data-label="Price">${ef.candidateemail}</td>
                <td data-label="Date">${ef.candidateresume}</td>
                <td data-label="Date" class="status">${ef.status}</td>
                
              
            </tr>
        </c:forEach>
    </tbody>
</table>

 
 
 <script>
 
 document.addEventListener("DOMContentLoaded", function() {
	    let statuses = document.querySelectorAll(".status");
	    statuses.forEach(function(status) {
	        if (status.textContent === "Accepted") {
	            status.style.color = "green";
	        } else if (status.textContent === "Rejected") {
	            status.style.color = "red";
	        }
	        else if (status.textContent === "send") {
	            status.style.color = "blue";
	        }
	    });
	});


 </script>

<style>

body {
   background: rgb(255,255,255);
background: -moz-linear-gradient(90deg, #48cae4 50%, #ff4d6d 50%);
background: -webkit-linear-gradient(90deg,  #48cae4 50%, #ff4d6d 50%);
background: linear-gradient(90deg,  #48cae4 50%, #ff4d6d 50%);
 font-family: "Open Sans", sans-serif;
 

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
  font-size: 1.5em;
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
    font-size: .8em;
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

h1,h2{
  color:#fff;
}














/* general styling */
body {
  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
}
</style>


</body>
</html>