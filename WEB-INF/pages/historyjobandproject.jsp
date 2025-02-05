 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage-jobs&project</title>
<link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon">
 <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
</head>
<body>

 <h1 style="text-align:center; padding:20px;">History and Activities &nbsp;<i class="fa-solid fa-circle-check" style="font-size:20px;"></i></h1>
  
  <hr style="border: 5px solid #fff;">
  <br>
<br>
<br>
   <h2>Manage Jobs on Projectplus &nbsp; <i class="fa-solid fa-user-check"></i></h2>
<table>

    <thead>
        <tr>
            <th scope="col">Job Tittle</th>
            <th scope="col">Reqired Skills</th>
            <th scope="col">Type</th>
            <th scope="col">Salary</th>
            <th scope="col">Company Name</th>
            <th scope="col">Company Email</th>
            <th scope="col">Manage &nbsp;<i class="fa-solid fa-list-check"></i></th>
            
           
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${jobdata}" var="e">
            <tr>
                <td data-label="Farmer Name">${e.jtittle}</td>
                <td data-label="Product">${e.jskills}</td>
                <td data-label="Type">${e.jtype}</td>
                <td data-label="Price">${e.jsalary}</td>
                <td data-label="Date">${e.jcname}</td>
                <td data-label="Date">${e.jcemail}</td>
                <td data-label="Date">
                 <a href="editjob/${e.id}">Edit &nbsp;<i class="fa-regular fa-pen-to-square"></i></a>
                 <br>
                 <br>
                 <br>
                 <a href="Delete/${e.id}">Remove &nbsp;  <i class="fa-solid fa-user-xmark"></i></a>
                
                </td>
              
            </tr>
        </c:forEach>
    </tbody>
</table>

<br>
<br>

<h2>Manage Project on Projectplus &nbsp;<i class="fa-solid fa-briefcase"></i></h2>
<table>

    <thead>
        <tr>
            <th scope="col">Project Tittle</th>
            <th scope="col">Project Budget</th>
            <th scope="col" class="header-spacing">Reqired Skills</th>
             <th scope="col">Company Name</th>
            <th scope="col">Company Email</th>
             <th scope="col">Documentation</th>
             <th scope="col">Manage &nbsp;<i class="fa-solid fa-list-check"></i></th>
            
           
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${projectdata}" var="ef">
            <tr>
                <td data-label="Farmer Name">${ef.projectt}</td>
                <td data-label="Product">${ef.projectb}</td>
                <td data-label="Type">${ef.projects}</td>
                <td data-label="Date">${ef.projectc}</td>
                <td data-label="Date">${ef.projecte}</td>
                <td data-label="Price">
                
                  
        <embed class="pdf" 
               src=
"./files/webimages/${ef.projectf}"
            width="250" height="250">
                
                </td>
                 <td data-label="Date">
                
                 <br>
                 <br>
                 <br>
                 <a href="deleteproject/${ef.id}">Remove &nbsp;  <i class="fa-solid fa-user-xmark"></i></a>
                
                </td>
                
              
            </tr>
        </c:forEach>
    </tbody>
</table>

<style>

body {
   background: rgb(255,255,255);
background: -moz-linear-gradient(90deg, #17c3b2 50%, rgba(131,0,254,1) 50%);
background: -webkit-linear-gradient(90deg,  #17c3b2 50%, rgba(131,0,254,1) 50%);
background: linear-gradient(90deg,  #17c3b2 50%, rgba(131,0,254,1) 50%);
 font-family: "Open Sans", sans-serif;
 

}

h1,h2{
  color:#fff;
  font-size:30px !important;
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