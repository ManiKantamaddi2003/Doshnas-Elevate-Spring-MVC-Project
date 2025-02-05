<!DOCTYPE html>
<!---Coding By CodingLab | www.codinglabweb.com--->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <!--<title>Registration Form in HTML CSS</title>-->
    <!---Custom CSS File--->
    
    <title>Login Freelancer</title>
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
            <img src="./files/images/dlogo.png" alt="" height="50px"/>
            <span>
              Doshnas Elevate Freelancer Login
            </span>
          </a>
    
      <header>Welcome Back to ProjectPluse Login Here</header>
      <form id="loginForm" action="Logincheakf" class="form" method="post">
    <div class="input-box">
        <label>Email Address</label>
        <input type="email" placeholder="Enter Your email address" name="email" required />
    </div>
    <br>
    <div class="input-box">
        <label>Enter Password</label>
        <input type="password" placeholder="Enter Your Password" name="password" required />
    </div>
    <button type="submit">Login</button>
    <p style="color:green;">${message}</p>
    <p style="color:red;">${loginerror}</p>
    <br>
    <a href="registerf"><button type="button">Register Here</button></a>
    Don't have an account?
</form>
    </section>
  
  
  <script>
document.getElementById('loginForm').addEventListener('submit', function(event) {
    var form = event.target;
    var email = form.elements['email'].value.trim();
    var password = form.elements['password'].value.trim();

    // Ensure email is not empty and is valid
    if (email === "" || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
        alert('Please enter a valid email address.');
        event.preventDefault();
        return;
    }

    // Ensure password is not empty
    if (password === "") {
        alert('Password cannot be empty.');
        event.preventDefault();
        return;
    }
});
</script>

<style>/* Import Google font - Poppins */
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
  background-image: url(https://images.pexels.com/photos/1181248/pexels-photo-1181248.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
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
.form .column {
  display: flex;
  column-gap: 15px;
}
.form .gender-box {
  margin-top: 20px;
}
.gender-box h3 {
  color: #333;
  font-size: 1rem;
  font-weight: 400;
  margin-bottom: 8px;
}
.form :where(.gender-option, .gender) {
  display: flex;
  align-items: center;
  column-gap: 50px;
  flex-wrap: wrap;
}
.form .gender {
  column-gap: 5px;
}
.gender input {
  accent-color: rgb(130, 106, 251);
}
.form :where(.gender input, .gender label) {
  cursor: pointer;
}
.gender label {
  color: #707070;
}
.address :where(input, .select-box) {
  margin-top: 15px;
}
.select-box select {
  height: 100%;
  width: 100%;
  outline: none;
  border: none;
  color: #707070;
  font-size: 1rem;
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
/*Responsive*/
@media screen and (max-width: 500px) {
  .form .column {
    flex-wrap: wrap;
  }
  .form :where(.gender-option, .gender) {
    row-gap: 15px;
  }
}</style>

</body>
</html>

