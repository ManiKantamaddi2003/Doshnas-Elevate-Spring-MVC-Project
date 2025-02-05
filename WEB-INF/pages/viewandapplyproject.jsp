<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view-apply project</title>
<link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon">
<script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
</head>
<body>



<c:forEach items="${projectinfo}" var="ef">
 <div class="container">
        <div class="job-details">
           <h1 class=>${ef.projectt}</h1>
           <h3>${ef.projecte}</h3>
	       <p style="font-size:18px;">${ef.projectd}</p>
	       
	
        </div>
        <div class="info-boxes">
            <div class="info-box" id="salary-box">
                <h3>Development Costs  &nbsp; <i class="fa-solid fa-indian-rupee-sign"></i></h3>
                <p>${ef.projectb}</p>
            </div>
            
                      
              <object class="pdf" 
            data=
"./files/webimages/${ef.projectf}"
            width="800"
            height="500">
   </object>
     
          
             <button class="apply-button" onclick="openForm()">Apply Now</button>
        </div>
    </div>
    
    
    
      <div class="form-popup" id="applyForm">
       <form id="projectApplicationForm" action="/SpringMVCPersonal_Project/applyforproject" method="post" enctype="multipart/form-data" class="form-container">
    <h2>Job Application</h2>

    <label for="projectname"><b>Project Name</b></label>
    <input type="text" id="projectname" placeholder="Enter Project Name" name="projectname" value="${ef.projectt}" required readonly>

    <label for="projectcompany"><b>Project Organization</b></label>
    <input type="text" id="projectcompany" placeholder="Enter Project Organization" name="projectcompany" value="${ef.projectc}" required readonly>

    <label for="projectcompanyemail"><b>Project Organization Email</b></label>
    <input type="email" id="projectcompanyemail" placeholder="Enter Project Organization Email" name="projectcompanyemail" value="${ef.projecte}" required readonly>

    <c:forEach items="${profile}" var="e">
        <label for="candidatename"><b>Candidate Name</b></label>
        <input type="text" id="candidatename" placeholder="Enter Candidate Name" name="candidatename" value="${e.fname}" required>

        <label for="candidateemail"><b>Candidate Email</b></label>
        <input type="email" id="candidateemail" placeholder="Enter Candidate Email" name="candidateemail" value="${e.femail}" required>

        <input type="hidden" name="cdid" value="${e.id}">
    </c:forEach>

    <label for="resume"><b>Resume</b></label>
    <input type="file" id="resume" name="resume" accept=".pdf" required>

    <input type="hidden" name="status" value="send">

    <button type="submit" class="btn">Submit</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
</form>
    </div>
   
   
   <script>
document.getElementById('projectApplicationForm').addEventListener('submit', function(event) {
    var form = event.target;
    var candidateName = form.elements['candidatename'].value.trim();
    var candidateEmail = form.elements['candidateemail'].value.trim();
    var resume = form.elements['resume'].value.trim();

    // Ensure candidate name is not empty
    if (candidateName === "") {
        alert('Candidate name cannot be empty.');
        event.preventDefault();
        return;
    }

    // Ensure candidate email is valid
    if (candidateEmail === "" || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(candidateEmail)) {
        alert('Please enter a valid email address.');
        event.preventDefault();
        return;
    }

    // Ensure a resume is uploaded
    if (resume === "") {
        alert('Please upload your resume in PDF format.');
        event.preventDefault();
        return;
    }
});

function closeForm() {
    // Add functionality to close the form if needed
}
</script>
   
   
   
<div class="be-comment-block">
	
	<div class="be-comment">
		
	
	<form class="form-block">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<div class="form-group fl_icon">
					<div class="icon"></div>
					<label><h2>Project Organization</h2></label>
					<input class="form-input" type="text" value="${ef.projectc}" readonly>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 fl_icon">
				<div class="form-group fl_icon">
					<div class="icon"></div>
					<label><h2>Required Skills</h2></label>
					<input class="form-input" type="text" placeholder="Your email" value="${ef.projects}" readonly >
				</div>
			</div>
			
		
		</div>
	</form>
</div>
</div>
</c:forEach>

<style>


 .pdf {
        width: 100%;
        aspect-ratio: 4 / 3;
    }

    .pdf,
    html,
    body {
        height: 100%;
        margin: 0;
        padding: 0;
    }

body{
    margin-top:20px;
    background-color:#e9ebee;a
}







.be-ava-comment {
    width: 60px;
    height: 60px;
    border-radius: 50%;
}










.form-group .form-input {
    font-size: 20px;
    line-height: 25px;
    font-weight: 400;
    color: black;
    width: 100%;
    height: 50px;
    padding-left: 10px;
  
    border: 1px solid #edeff2;
    border-radius: 3px;
}



.form-group textarea.form-input {
    height: 15px;
}



.container {
    display: flex;
    justify-content: space-between;
    padding: 20px;
}

.job-details {
    width: 70%;
    background-color: #ffffff;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.info-boxes {
    width: 25%;
    display: flex;
    flex-direction: column;
    gap: 20px;
}

.info-box {
    background-color: #4CAF50;
    color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.info-box h3 {
    margin: 0;
    font-size: 18px;
}

.info-box p {
    margin: 5px 0 0;
    font-size: 16px;
}

.apply-button, .download-button {
    background-color: #008CBA;
    color: white;
    padding: 15px 20px;
    border: none;
    border-radius: 8px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin-top: 20px;
}

.apply-button:hover, .download-button:hover {
    background-color: #005f75;
}

/* Form Popup styles */
.form-popup {
    display: none;
    position: fixed;
    bottom: 0;
    right: 15px;
    border: 3px solid #f1f1f1;
    z-index: 9;
}

.form-container {
    max-width: 300px;
    padding: 20px;
    background-color: white;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

.form-container h2 {
    margin-bottom: 15px;
}

.form-container input[type="text"],
.form-container input[type="email"],
.form-container input[type="file"] {
    width: 100%;
    padding: 10px;
    margin: 5px 0 15px 0;
    border: none;
    background: #f1f1f1;
    border-radius: 4px;
}

.form-container .btn {
    background-color: #4CAF50;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    width: 100%;
    margin-bottom: 10px;
    opacity: 0.8;
}

.form-container .cancel {
    background-color: red;
}

.form-container .btn:hover {
    opacity: 1;
}





</style>

<script>

function openForm() {
    document.getElementById("applyForm").style.display = "block";
}

function closeForm() {
    document.getElementById("applyForm").style.display = "none";
}

</script>



</body>
</html>