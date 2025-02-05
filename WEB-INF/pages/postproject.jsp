<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Post-Project</title>
    <link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon" />
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
      integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
      crossorigin="anonymous"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    ></script>
    <script
      src="https://kit.fontawesome.com/afcf20c6bc.js"
      crossorigin="anonymous"
    ></script>
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
        max-width: 800px;
        padding: 30px;
        border-radius: 8px;
        background: #fff;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
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
      <form
        id="postProjectForm"
        action="postprojectdata"
        method="post"
        enctype="multipart/form-data"
      >
        <div class="banner">
          <h1>Post Project <i class="fa-solid fa-laptop-code"></i>, What you need done?</h1>
        </div>

        <div class="colums">
          <div class="item">
            <label for="projectd">Project Description <span>*</span></label>
            <textarea id="projectDescription" name="projectd" rows="4" required></textarea>
          </div>

          <div class="item">
            <label for="projectt">Project Title <span>*</span></label>
            <input
              type="text"
              id="projectTitle"
              name="projectt"
              placeholder="AI Chat bot"
              required
            />
          </div>

          <div class="item">
            <label for="projectfile">Project Documentation <span>*</span></label>
            <input type="file" id="projectFile" name="projectfile" accept=".pdf,.doc,.docx" required />
          </div>

          <div class="item">
            <label for="projects">Relevant skills needed for this Project? <span>*</span></label>
            <input
              id="skills"
              name="projects"
              placeholder="MySQL, Web Hosting, Software Testing"
              required
            />
          </div>

          <div class="item question">
            <label for="budget">Estimated budget or Salary for Project? <span>*</span></label>
            <input
              type="text"
              id="budget"
              name="projectb"
              placeholder="10000,20000"
              required
            />
          </div>

          <c:forEach items="${kk}" var="e">
            <div class="item">
              <label>Company Name</label>
              <input type="text" name="projectc" value="${e.name}" readonly />
            </div>
            <div class="item">
              <label>Company Email</label>
              <input type="text" name="projecte" value="${e.email}" readonly />
            </div>
          </c:forEach>

          <h4>${message}</h4>

          <button type="submit">Submit</button>
        </div>
      </form>
    </div>

    <script>
      document
        .getElementById("postProjectForm")
        .addEventListener("submit", function (event) {
          var form = event.target;
          var projectDescription = form.elements["projectd"].value.trim();
          var projectTitle = form.elements["projectt"].value.trim();
          var skills = form.elements["projects"].value.trim();
          var budget = form.elements["projectb"].value.trim();

          if (projectDescription === "") {
            alert("Project description cannot be empty.");
            event.preventDefault();
            return;
          }

          if (projectTitle === "") {
            alert("Project title cannot be empty.");
            event.preventDefault();
            return;
          }

          if (skills === "") {
            alert("Please enter relevant skills.");
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
