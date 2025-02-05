<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Edit-jobs details</title>
    
    <link rel="shortcut icon" href="./files/images/favicon-32x32.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
       <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
    
    <style>

      html, body {
     
      background: linear-gradient(#b8c0ff,#83c5be );      }
      body, div, form, input, select, textarea, label, p { 
     
     
      line-height: 22px;
      color:pink:
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 40px;
      color: #fff;
      z-index: 2;
      line-height: 83px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 8px  #669999; 
      }
      .banner {
      position: relative;
      height: 350px;
      background-image: url("https://images.pexels.com/photos/3760069/pexels-photo-3760069.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" );  
      background-size: cover;
   
      background-position: center;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.2); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color:  #669999;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 3px 0  #669999;
      color: #669999;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      .item span {
      color: red;
      }
      .week {
      display:flex;
      justfiy-content:space-between;
      }
      .colums {
      display:flex;
      justify-content:space-between;
      flex-direction:row;
      flex-wrap:wrap;
      }
      .colums div {
      width:48%;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      color:  #a3c2c2;
      }
      .item i {
      right: 1%;
      top: 30px;
      z-index: 1;
      }
      input[type=radio], input[type=checkbox]  {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 15px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      .question-answer label {
      display: block;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid  #669999;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid  #669999;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .flax {
      display:flex;
      justify-content:space-around;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      height: 50px;
      padding: 5px;
      border: none;
      border-radius: 5px; 
      background:  #669999;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background:  #a3c2c2;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .name-item div {
      width: calc(50% - 20px);
      }
      .name-item div input {
      width:97%;}
      .name-item div label {
      display:block;
      padding-bottom:5px;
      }
      }
       
      
     
    </style>
    
   
    
  </head>
  <body>
  
  
 
           
    
    <div class="testbox">
    <c:forEach items="${jobdata}" var="e">
      <form action="/SpringMVCPersonal_Project/updatejobdata" method="post">
        <div class="banner">
      <h1>Post job <i class="fa-solid fa-briefcase"></i> ,What you need done?</h1>
        </div>
        
        <div class="colums">
          <div class="item">
            <label for="fname">Job description<span>*</span></label>
            <textarea id="myTextArea" name="jobd" rows="4"  cols="50">
              ${e.jobd}
          </textarea>
          </div>
          <div class="item">
            <label for="lname">Job Tittle<span>*</span></label>
            <input type="text" id="fileInput" name="jtittle" value=" ${e.jtittle}" placeholder="Software Engineer">
             <br>
           
            <br>
          </div>
          <br><br>
          <div class="item">
            <label for="address1">Relevent skills need for this job?<span>*</span></label>
            <br>
            <small>Enter up to 5 skills that best describe your project. Freelancers will use these skills to find projects they are most interested and experienced in.</small>
            <input id="address1" height="50px"  value=" ${e.jskills}"   name="jskills" required/>
            <h6>Suggested skills:
              MySQL,
              Web Hosting,
              Software Testing,
              Engineering,
              Software Architecture</h6>
          </div>
          <br><br>
         
         
        
        <div class="question">
          <label>How would you like to get it done?</label>
          <div class="question-answer">
            <div>
              <input type="radio" value="Full Time Role"  id="radio_1" name="jtype"/>
              <label for="radio_1"  class="radio"><span>Full Time Role</span></label>
            </div>
            <div>
              <input  type="radio" value="Freelancing" id="radio_2" name="jtype" />
              <label for="radio_2" class="radio"><span>Freelancing</span></label>
            </div>
           
          </div>
        </div>
        <div class="question">
          <label>What is your estimated budget or Salary?</label>
           <input  type="text"  name="jsalary" value=" ${e.jsalary}" placeholder="10000,20000"/>
           
          
            <input  type="text"  name="jcname" value="${e.jcname}"/ readonly>
            
             <input  type="text"  name="jcemail" value="${e.jcemail}"/ readonly>
             
              <input  type="hidden"  name="id" value="${e.id}"/ readonly>
      
      
          <br>
        </div>
         
          <button type="submit">Update <i class="fa-solid fa-file-pen"></i></button>
        
        </div>
      </form>
      </c:forEach>
    </div>
    
    
    
    
    
    
     
    
    
  </body>
</html>