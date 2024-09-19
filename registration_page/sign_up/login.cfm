<cfparam name="url.val" default=0>
<cfif isDefined("url.val") and url.val eq 1>
  
  <script>
    alert("Invalid credentials");
  </script>
  

</cfif>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <title>log In</title>
    <style>
      body{
        background-color: rgb(88, 79, 79);
      }
    </style>
  </head>
  
  <body>

    <section class="vh-90 bg-image">
    <div class="mask d-flex align-items-center h-100 ">
      <div class="container h-100">
        <div class="row d-flex justify-content-center align-items-center h-100 m-4">
          <div class="col-12 col-md-9 col-lg-7 col-xl-6">
            <div class="card" style="border-radius: 15px;">
              <div class="card-body p-5 pt-2">
                <h2 class="text-uppercase text-center mb-4">log in your account</h2>
  
                <form action="login_query.cfm" method="POST">
  
                  <div data-mdb-input-init class="form-outline mb-2">
                    <input type="text" id="UserName"name="UserName" class="form-control form-control-lg" />
                    <label class="form-label" for="form3Example1cg" >Your Name</label>
                  </div>
  
                  <div data-mdb-input-init class="form-outline mb-2">
                    <input type="email" id="email"name="email" class="form-control form-control-lg" />
                    <label class="form-label" for="form3Example3cg">Your Email</label>
                  </div>
   
                  <div data-mdb-input-init class="form-outline mb-2">
                    <input type="password" id="password" name="password" class="form-control form-control-lg" />
                    <label class="form-label" for="form3Example4cg">Password</label>
                  </div>
  
                  <div data-mdb-input-init class="form-outline mb-2">
                    <input type="password" id="confirm" name="confirm" class="form-control form-control-lg" />
                    <label class="form-label" for="form3Example4cdg">Repeat your password</label>
                  </div>
  
                  <div class="form-check d-flex justify-content-center mb-3">
                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                    <label class="form-check-label" for="form2Example3g">
                      I agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                    </label>
                  </div>
  
                  <div class="d-flex justify-content-center">
                    <button type="submit" data-mdb-button-init
                      data-mdb-ripple-init class="btn btn-success btn-block btn-lg  text-body" >Login</button>
                  </div>
  
                  <p class="text-center text-muted mt-1 mb-0">Have already an account? <a href=" http://localhost:8500/registration_page/register/registration.cfm"
                      class="fw-bold text-body"><u>Register here</u></a></p>
  
                </form>
  
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  </body>
  <!--- <script>
   document.addEventListener("DOMContentLoaded", function () {
     document
       .getElementById("container")
       .addEventListener("submit", function (event) {
         event.preventDefault();

         var user_email = document.getElementById("user_email").value;
         var user_password = document.getElementById("user_password").valu
         var error_email = document.getElementById("error_email")
         var error_password = document.getElementById("error_password");

         error_email.innerHTML = "";
         error_password.innerHTML = "";

         var emailReg = /^[^@]+@[^@]+\.[^@]+$/;

          //Email
          if (emailReg.test(user_email)) {
            console.log(user_email);
           } else {
            error_email.innerHTML = "Enter a valid email";
         }


          //pasword
          if ((user_password = "")) {
           error_password.innerHTML = "please enter a valid password";
          } else if (user_password.length == 8) {
           error_password.innerHTML = "please enter a valid password";
          } else {
           // console.log("please enter 10 digit");
         error_password.innerHTML = "Enter a valid password";
         }
         });
   });   </script> --->
    </html>
