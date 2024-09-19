<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <title>Sign up</title>
    <style>
      span{
        color:red;
      }
    </style>
  </head>

  <body>
    <!-- Registration 13 - Bootstrap Brain Component -->
    <section class="vh-90 bg-image">
      <div class="mask d-flex align-items-center h-100">
        <div class="container h-100">
          <div
            class="row d-flex justify-content-center align-items-center h-100 m-4"
          >
            <div class="col-12 col-md-9 col-lg-7 col-xl-6">
              <div class="card" style="border-radius: 15px">
                <div class="card-body p-5 pt-2">
                  <h2 class="text-uppercase text-center mb-4">
                    Sign up your account
                  </h2>

                  <form id="sign_container" onsubmit="validate_signup(event)">
                    <div data-mdb-input-init class="form-outline mb-2">
                      <input
                        type="text"
                        id="sign_user_name"
                        class="form-control form-control-lg"
                        
                      />
                      <label class="form-label" for="name">Your Name</label>
                      <span id="sign_error_name"></span>
                    </div>

                    <div data-mdb-input-init class="form-outline mb-2">
                      <input
                        type="email"
                        id="sign_user_email"
                        class="form-control form-control-lg"
                      />
                      <label class="form-label" for="email">Your Email</label>
                      <span id="sign_error_email"></span>
                    </div>

                    <div data-mdb-input-init class="form-outline mb-2">
                      <input
                        type="password"
                        id="sign_user_password"
                        class="form-control form-control-lg"
                      />
                      <label class="form-label" for="password">Password</label>
                      <span id="sign_error_password"></span>
                    </div>

                    <div data-mdb-input-init class="form-outline mb-2">
                      <input
                        type="password"
                        id="confirm_password"
                        class="form-control form-control-lg"
                      />
                      <label class="form-label" for="confirm password"
                        >Repeat your password</label
                      >
                      <span id="error_confirm"></span>
                    </div>

                    <div class="form-check d-flex justify-content-center mb-3">
                      <input
                        class="form-check-input me-2"
                        type="checkbox"
                        value="checkbox"
                        id="checkbox"
                      />
                      <label class="form-check-label" for="checkbox">
                        I agree all statements in
                        <a href="#" class="text-body"
                          ><u>Terms of service</u></a
                        >
                      </label>
                      <span id="error_checkbox"></span>
                    </div>

                    <div class="d-flex justify-content-center">
                      <button
                        type="submit"
                        value="button"
                      
                        data-mdb-button-init
                        data-mdb-ripple-init
                        class="btn btn-success btn-block btn-lg text-body"
                      >
                        Register
                      </button>
                    </div>

                    <p class="text-center text-muted mt-1 mb-0">
                      Have already an account?
                      <a href="login.cfm" class="fw-bold text-body"
                        ><u>Login here</u></a
                      >
                    </p>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <script src="signup.js"></script>
  </body>
  <!-- <script>
    document.addEventListener("DOMContentLoaded", function () {
      document.getElementById("container");
      document.addEventListener("submit", function (event) {
        event.preventDefault();

        var user_name = document.getElementById("user_name").value;
        // var user_email = document.getElementById("user_email").value;
        // var user_password = document.getElementById("user_password").value;

        var error_name = document.getElementById("error_name");
        // var error_email = document.getElementById("error_email");

        // var error_password = document.getElementById("error_password");

        // error_email.innerHTML = "";
        // error_password.innerHTML = "";

        // var emailReg = /^[^@]+@[^@]+\.[^@]+$/;
        var usernameReg = /^[a-zA-Z\s]+$/;

        //username
        if (usernameReg.test(user_name)) {
          console.log(user_name);
        } else {
          error_name.innerHTML = "allowed only alphabets";
        }

        // //Email
        // if (emailReg.test(user_email)) {
        //   console.log(user_email);
        // } else {
        //   error_email.innerHTML = "Enter a valid email";
        // }

        // //pasword
        // if ((user_password = "")) {
        //   error_password.innerHTML = "please enter a valid password";
        // } else if (user_password.length == 8) {
        //   error_password.innerHTML = "please enter a valid password";
        // } else {
        //   // console.log("please enter 10 digit");
        //   error_password.innerHTML = "Enter a valid password";
        });
      });
    
  </script> -->
</html>
