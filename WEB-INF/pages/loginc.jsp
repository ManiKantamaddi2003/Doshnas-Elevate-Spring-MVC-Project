<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<!---Coding By CodingLab | www.codinglabweb.com--->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <!--<title>Registration Form in HTML CSS</title>-->
    <!---Custom CSS File--->
    
    <title>Login Companies</title>
    <link rel="shortcut icon" href="./files/images/dlogo.png" type="image/x-icon">
    
    <style>
      a{
        text-decoration: none;
        font-size: 25px;
        text-align: center;
        justify-content: center;
      }
    </style>
  </head>
  <body>
  
    <section class="container">
     <nav class="navbar navbar-expand-lg custom_nav-container">
          <a class="/" href="/SpringMVCPersonal_Project">
            <img src="./files/images/dlogo.png" alt="" height="50px" />
            <span>Doshnas Elevate Company Login</span>
          </a>
      </nav>
    
      <header>Welcome Back to Doshnas Elevate Login Here</header>
      <form id="loginForm" action="logindata" class="form" method="post">
        <div class="input-box">
            <label>Email Address</label>
            <input type="email" placeholder="Enter Your email address" name="email" required />
        </div>

        <br>
        <div class="input-box">
            <label>Enter Password</label>
            <input type="password" placeholder="Enter Your Password" name="password" required pattern=".{8,}" title="Password must be at least 8 characters long." />
        </div>

        <button type="submit">Login</button>
        <br>
        <a href="registercompany">
            <button type="button">Register Here</button>
        </a>
        Don't Have Account?
      </form>
    </section>
 
    <script>
      document.getElementById('loginForm').addEventListener('submit', function(event) {
          var form = event.target;
          var email = form.elements['email'].value;
          var password = form.elements['password'].value;

          // Simple email format validation (additional to HTML5 email type)
          var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
          if (!emailPattern.test(email)) {
              alert('Please enter a valid email address.');
              event.preventDefault(); // Prevent form submission
              return;
          }

          // Password length validation (additional to HTML5 pattern)
          if (password.length < 8) {
              alert('Password must be at least 8 characters long.');
              event.preventDefault(); // Prevent form submission
          }
      });
    </script>

    <style>
      /* Import Google font - Poppins */
      @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
      }
      body {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 20px;
        background-image: url(https://images.pexels.com/photos/4348404/pexels-photo-4348404.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
        background-size: cover;
        background-repeat: no-repeat;
      }
      .container {
        position: relative;
        max-width: 700px;
        width: 100%;
        background: #fff;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
      }
      .container header {
        font-size: 1.5rem;
        color: #333;
        font-weight: 500;
        text-align: center;
      }
      .container .form {
        margin-top: 30px;
      }
      .form .input-box {
        width: 100%;
        margin-top: 20px;
      }
      .input-box label {
        color: #333;
      }
      .form :where(.input-box input, .select-box) {
        position: relative;
        height: 50px;
        width: 100%;
        outline: none;
        font-size: 1rem;
        color: #707070;
        margin-top: 8px;
        border: 1px solid #ddd;
        border-radius: 6px;
        padding: 0 15px;
      }
      .input-box input:focus {
        box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
      }
      .form button {
        height: 55px;
        width: 100%;
        color: #fff;
        font-size: 1rem;
        font-weight: 400;
        margin-top: 30px;
        border: none;
        cursor: pointer;
        transition: all 0.2s ease;
        background: rgb(130, 106, 251);
      }
      .form button:hover {
        background: rgb(88, 56, 250);
      }
      /* Responsive */
      @media screen and (max-width: 500px) {
        .form .column {
          flex-wrap: wrap;
        }
        .form :where(.gender-option, .gender) {
          row-gap: 15px;
        }
      }
    </style>
  </body>
</html>
