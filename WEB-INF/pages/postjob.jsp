<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Post-Job</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon" />
    
      <style>
      /* Basic Reset */
      html,
      body {
        margin: 0;
        padding: 0;
        font-family: "Roboto", sans-serif;
        background: linear-gradient(#b8c0ff, #83c5be);
      }

      /* Banner Styling */
      .banner {
        position: relative;
        height: 350px;
        background-image: url("https://images.pexels.com/photos/3184325/pexels-photo-3184325.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
        background-size: cover;
        background-position: center;
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
      }

      .banner::after {
        content: "";
        background-color: rgba(0, 0, 0, 0.4);
        position: absolute;
        width: 100%;
        height: 100%;
      }

      .banner h1 {
        position: relative;
        margin: 0;
        font-size: 36px;
        color: #fff;
        line-height: 60px;
        z-index: 2;
      }

      /* Form Styling */
      .testbox {
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 40px;
      }

      form {
        width: 100%;
        max-width: 1000px;
        padding: 30px;
        border-radius: 8px;
        background: #fff;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        height:1000px;
      }

      .item {
        position: relative;
        margin-bottom: 20px;
      }

      .item label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
        color: #333;
      }

      .item input,
      .item textarea,
      .item select {
        width: 100%;
        padding: 12px;
        border-radius: 4px;
        border: 1px solid #ddd;
        margin-top: 5px;
        font-size: 14px;
      }

      .item input[type="file"] {
        padding: 5px;
      }

      .item span {
        color: red;
      }

      .item input:hover,
      .item select:hover,
      .item textarea:hover {
        border-color: #669999;
        box-shadow: 0 0 5px #669999;
      }

      button {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 5px;
        background: #669999;
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.3s ease;
      }

      button:hover {
        background: #a3c2c2;
      }

      .colums {
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
      }

      .colums div {
        width: 48%;
      }

      .question {
        margin-bottom: 20px;
      }

      /* Responsive Design */
      @media (max-width: 768px) {
        .colums div {
          width: 100%;
        }

        form {
          padding: 20px;
        }
      }

      .btn-block {
        margin-top: 20px;
      }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg custom_nav-container">
        <a href="homec">
            <img src="./files/images/dlogo.png" alt="" height="50px" />
            <span>Doshnas Elevate</span>
        </a>
    </nav>

    <div class="testbox">
        <form id="postJobForm" action="postjobdata" method="post">
            <div class="banner">
                <h1>Post job <i class="fa-solid fa-briefcase"></i>, What you need done?</h1>
            </div>
            <div class="colums">
                <div class="item">
                    <label for="jobDescription">Job Description<span>*</span></label>
                    <textarea id="jobDescription" name="jobd" rows="4" required></textarea>
                </div>
                <div class="item">
                    <label for="jobTitle">Job Title<span>*</span></label>
                    <input type="text" id="jobTitle" name="jtittle" placeholder="Software Engineer" required />
                </div>
                <div class="item">
                    <label for="skills">Relevant Skills<span>*</span></label>
                    <input type="text" id="skills" name="jskills" required />
                    <small>Enter up to 5 skills (e.g., MySQL, Web Hosting, Software Testing, Engineering, Software Architecture)</small>
                </div>
                <div class="question">
                    <label>How would you like to get it done?</label>
                    <div class="question-answer">
                        <div>
                            <input type="radio" value="Full-Time" id="radio_1" name="jtype" required />
                            <label for="radio_1" class="radio">Full-Time</label>
                        </div>
                        <div>
                            <input type="radio" value="Freelance" id="radio_2" name="jtype" required />
                            <label for="radio_2" class="radio">Freelance</label>
                        </div>
                        <div>
                            <input type="radio" value="Part-Time" id="radio_3" name="jtype" required />
                            <label for="radio_3" class="radio">Part-Time</label>
                        </div>
                        <div>
                            <input type="radio" value="Internship" id="radio_4" name="jtype" required />
                            <label for="radio_4" class="radio">Internship</label>
                        </div>
                        <div>
                            <input type="radio" value="Contract" id="radio_5" name="jtype" required />
                            <label for="radio_5" class="radio">Contract</label>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <label for="budget">Estimated Budget/Salary<span>*</span></label>
                    <input type="text" id="budget" name="jsalary" placeholder="10000, 20000" required />
                </div>
                <c:forEach items="${kk}" var="e">
                    <input type="hidden" name="jcname" value="${e.name}" />
                    <input type="hidden" name="jcemail" value="${e.email}" />
                </c:forEach>
                <h4>${messaage}</h4>
                <h4>${messaagedelete}</h4>
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>

    <script>
        document.getElementById('postJobForm').addEventListener('submit', function(event) {
            var form = event.target;
            var jobDescription = form.elements['jobd'].value.trim();
            var jobTitle = form.elements['jtittle'].value.trim();
            var skills = form.elements['jskills'].value.trim();
            var budget = form.elements['jsalary'].value.trim();

            if (jobDescription === "") {
                alert('Job description cannot be empty.');
                event.preventDefault();
                return;
            }

            if (jobTitle === "") {
                alert('Job title cannot be empty.');
                event.preventDefault();
                return;
            }

            if (skills === "") {
                alert('Please enter relevant skills.');
                event.preventDefault();
                return;
            }
        });
    </script>

    <!-- Footer section Start -->
    <%@ include file="footerfile.jsp" %>
    <!-- Footer Section end -->
</body>
</html>
