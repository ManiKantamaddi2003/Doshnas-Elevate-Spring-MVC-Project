<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
    <%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view-apply job</title>
<link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon">
</head>
<body>



<c:forEach items="${jobdata}" var="e">
 <div class="container">
        <div class="job-details">
           <h1 class=>${e.jcname}</h1>
	       <h3>${e.jcemail}</h3>
	       
	
        </div>
        <div class="info-boxes">
            <div class="info-box" id="salary-box">
                <h3>Salary</h3>
                <p>${e.jsalary}</p>
            </div>
            <div class="info-box" id="position-box">
                <h3>Position Type</h3>
                <p>${e.jtype}</p>
            </div>
             <button class="apply-button" onclick="openForm()">Apply Now</button>
        </div>
    </div>
    
    <div class="form-popup" id="applyForm">
      <form id="jobApplicationForm" action="/SpringMVCPersonal_Project/applyforjob" method="post" enctype="multipart/form-data" class="form-container">
    <h2>Job Application</h2>

    <label for="companyname"><b>Company Name</b></label>
    <input type="text" id="companyname" placeholder="Enter Your Name" name="companyname" value="${e.jcname}" required readonly>

    <input type="hidden" placeholder="Enter Your Email" name="companyemail" value="${e.jcemail}" required readonly>

    <label for="position"><b>Position</b></label>
    <input type="text" id="position" placeholder="Enter Your Position" value="${e.jtittle}" name="position" required readonly>

    <c:forEach items="${profile}" var="ef">
        <label for="candidatename"><b>Candidate Name</b></label>
        <input type="text" id="candidatename" placeholder="Enter Your Name" value="${ef.fname}" name="candidatename" required>

        <label for="candidateemail"><b>Candidate Email</b></label>
        <input type="email" id="candidateemail" placeholder="Enter Your Email" value="${ef.femail}" name="candidateemail" required>

        <input type="hidden" placeholder="Enter Your ID" value="${ef.id}" name="cid">
    </c:forEach>

    <label for="resume"><b>Resume</b></label>
    <input type="file" id="resume" name="resume" accept=".pdf" required>

    <input type="hidden" placeholder="Enter Your Status" name="status" value="send" required readonly>

    <button type="submit" class="btn">Submit</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
</form>
    </div>
   
   
   
   
<div class="be-comment-block">
	
	<div class="be-comment">
		
	
	<form class="form-block">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<div class="form-group fl_icon">
					<div class="icon"><i class="fa fa-user"></i></div>
					<label><h2>Position</h2></label>
					<input class="form-input" type="text" value="${e.jtittle}" readonly>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 fl_icon">
				<div class="form-group fl_icon">
					<div class="icon"><i class="fa fa-envelope-o"></i></div>
					<label><h2>Required Skills</h2></label>
					<input class="form-input" type="text" placeholder="Your email" value="${e.jskills}" readonly >
				</div>
			</div>
			<div class="col-xs-12">									
				<div class="form-group">
				<label><h2>Job Discription</h2></label>
					<p class="form-input">${e.jobd}</p>
				</div>
			</div>
		
		</div>
	</form>
</div>
</div>
</c:forEach>

<script>
document.getElementById('jobApplicationForm').addEventListener('submit', function(event) {
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

<style>body{
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

.apply-button {
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

.apply-button:hover {
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