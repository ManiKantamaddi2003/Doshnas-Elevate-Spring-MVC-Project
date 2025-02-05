<!DOCTYPE html>
<!---Coding By CodingLab | www.codinglabweb.com--->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    
    <title>Register Freelancer</title>
    
    
    <link rel="stylesheet" href="style.css" />
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
             Doshnas Elevate
            </span>
          </a>


        </nav>
  
      <header>Start Your Carrier with Spering Registration Here</header>
    <form id="freelancerForm" action="freelancerdata" class="form" method="post" enctype="multipart/form-data">
    <div class="column">
        <div class="input-box">
            <label>Full Name</label>
            <input type="text" placeholder="Enter full name" required name="fname" />
        </div>
        <div class="input-box">
            <label>Email Address</label>
            <input type="email" placeholder="Enter email address" required name="femail" />
        </div>
    </div>
    <div class="column">
        <div class="input-box">
            <label>Phone Number</label>
            <input type="text" placeholder="Enter phone number" name="fphone" required pattern="\d{10,15}" title="Please enter a valid phone number with 10-15 digits." />
        </div>
        <div class="input-box">
            <label>Birth Date</label>
            <input type="date" placeholder="Enter birth date" name="fdate" required />
        </div>
    </div>
    <div class="column">
        <div class="input-box">
            <label>LinkedIn Username/Link</label>
            <input type="url" placeholder="Enter Your LinkedIn Username/Link" required name="flinkedin" />
        </div>
        <div class="input-box">
            <label>Educational Qualification</label>
            <input type="text" placeholder="Enter Your Educational Qualification" required name="feducation" />
        </div>
    </div>
    <div class="column">
        <div class="form-group file-area input-box">
            <label for="fprofilephoto"><span>Upload Your Profile Photo</span></label>
            <input type="file" name="fprofilephoto" id="fprofilephoto" accept="image/*" required />
        </div>
        <div class="input-box">
            <label>Basic Charge for your Work</label>
            <input type="text" placeholder="Enter Your Basic Charge for your Work" required name="fcharge" pattern="^\d+(\.\d{1,2})?$" title="Please enter a valid amount." />
        </div>
    </div>
    <br>
    <div class="gender-box">
        <h3>Gender</h3>
        <div class="gender-option">
            <div class="gender">
                <input type="radio" id="check-male" name="gender" value="Male" checked />
                <label for="check-male">Male</label>
            </div>
            <div class="gender">
                <input type="radio" id="check-female" name="gender" value="Female" />
                <label for="check-female">Female</label>
            </div>
            <div class="gender">
                <input type="radio" id="check-other" name="gender" value="Prefer not to say" />
                <label for="check-other">Prefer not to say</label>
            </div>
        </div>
    </div>
    <br>
    <label>Select Your Skills According to Work</label>
    <p>note:- You can edit it after login</p>
    <br><br>
    <label for="skill1">Skill 1:</label>
    <select id="skill1" name="skills" style="font-size:20px;" required>
        <option hidden></option>
        <option value="Design & Arts">Design & Arts</option>
        <option value="Web Development">Web Development</option>
        <option value="SEO Marketing">SEO Marketing</option>
        <option value="Video Editing">Video Editing</option>
        <option value="Logo Design">Logo Design</option>
        <option value="Game Design">Game Design</option>
    </select>
    <label for="skill2">Skill 2:</label>
    <select id="skill2" name="skills" style="font-size:20px;" required>
        <option hidden></option>
        <option value="Design & Arts">Design & Arts</option>
        <option value="Web Development">Web Development</option>
        <option value="SEO Marketing">SEO Marketing</option>
        <option value="Video Editing">Video Editing</option>
        <option value="Logo Design">Logo Design</option>
        <option value="Game Design">Game Design</option>
    </select>
    <label for="skill3">Skill 3:</label>
    <select id="skill3" name="skills" style="font-size:20px;" required>
        <option hidden></option>
        <option value="Design & Arts">Design & Arts</option>
        <option value="Web Development">Web Development</option>
        <option value="SEO Marketing">SEO Marketing</option>
        <option value="Video Editing">Video Editing</option>
        <option value="Logo Design">Logo Design</option>
        <option value="Game Design">Game Design</option>
    </select>
    <br>
    <br>
    <label for="skill4">Skill 4:</label>
    <select id="skill4" name="skills" style="font-size:20px;" required>
        <option hidden></option>
        <option value="Design & Arts">Design & Arts</option>
        <option value="Web Development">Web Development</option>
        <option value="SEO Marketing">SEO Marketing</option>
        <option value="Video Editing">Video Editing</option>
        <option value="Logo Design">Logo Design</option>
        <option value="Game Design">Game Design</option>
    </select>
    <div class="column">
        <div class="input-box">
            <label>Password</label>
            <input type="password" placeholder="Enter Account Password" required name="password" />
        </div>
        <div class="input-box">
            <label>Confirm Password</label>
            <input type="password" placeholder="Enter Confirm Password" required name="cpassword" />
        </div>
    </div>
    <button type="submit">Register</button>
    <p style="color:red;">${messagee}</p>
    <br> <a href="loginf"><button type="button">Login</button></a> Already Have Account?
</form>
    
    </section>
  
  <script>
document.getElementById('freelancerForm').addEventListener('submit', function(event) {
    var form = event.target;
    var fullName = form.elements['fname'].value.trim();
    var email = form.elements['femail'].value.trim();
    var phone = form.elements['fphone'].value.trim();
    var linkedin = form.elements['flinkedin'].value.trim();
    var education = form.elements['feducation'].value.trim();
    var charge = form.elements['fcharge'].value.trim();
    var password = form.elements['password'].value.trim();
    var cpassword = form.elements['cpassword'].value.trim();

    // Ensure full name is not empty
    if (fullName === "") {
        alert('Full Name cannot be empty.');
        event.preventDefault();
        return;
    }

    // Ensure email is not empty and is valid
    if (email === "" || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
        alert('Please enter a valid email address.');
        event.preventDefault();
        return;
    }

    // Ensure phone number is valid
    if (phone === "" || !/^\d{10,15}$/.test(phone)) {
        alert('Please enter a valid phone number with 10-15 digits.');
        event.preventDefault();
        return;
    }

    // Ensure LinkedIn username/link is not empty
    if (linkedin === "") {
        alert('LinkedIn Username/Link cannot be empty.');
        event.preventDefault();
        return;
    }

    // Ensure educational qualification is not empty
    if (education === "") {
        alert('Educational Qualification cannot be empty.');
        event.preventDefault();
        return;
    }

    // Ensure basic charge is a valid amount
    if (charge === "" || !/^\d+(\.\d{1,2})?$/.test(charge)) {
        alert('Please enter a valid amount for your charge.');
        event.preventDefault();
        return;
    }

    // Ensure password and confirm password match
    if (password !== cpassword) {
        alert('Password and Confirm Password do not match.');
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
  max-width: 1000px;
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
  width: 50%;
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
  
   form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
}</style>


</body>
</html>
