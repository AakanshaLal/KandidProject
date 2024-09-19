function validate_signup (event) {
    event.preventDefault(); 

    var sign_user_name = document.getElementById('sign_user_name').value;
    var sign_user_email = document.getElementById('sign_user_email').value;
    var sign_user_password = document.getElementById('sign_user_password').value;


    var sign_error_name = document.getElementById('sign_error_name');
    var sign_error_email = document.getElementById('sign_error_email')
    var sign_error_password = document.getElementById('sign_error_password');

    
    sign_error_name.innerHTML = '';
    sign_error_email.innerHTML='';
    sign_error_password.innerHTML='';
    
    var usernameReg = /^[a-zA-Z\s]+$/;
    var emailReg = /^[^@]+@[^@]+\.[^@]+$/;

     //username//

     if (usernameReg.test(sign_user_name)) {
        console.log(sign_user_name);
    } else {
        sign_error_name.innerHTML = 'allowed only alphabets';
    }
    //email

      if (emailReg.test(sign_user_email)) {
            console.log(sign_user_email);
        } else {
            sign_error_email.innerHTML = 'Enter a valid email';
        }

    //password

    if ((sign_user_password ='')) {
        sign_error_password.innerHTML = "please enter a valid password";
        } else if (sign_user_password.length == 8) {
            sign_error_password.innerHTML = "please enter a valid password";
        } else {
          // console.log("please enter 10 digit");
          sign_error_password.innerHTML = "Enter a valid password";
    };



    };

// function validate_name (event) { 
//     event.preventDefault();

//     var sign_user_name = document.getElementById("sign_user_name").value;
//     var sign_error_name = document.getElementById("sign_error_name"); 
//     console.log(sign_user_name)
    

// }