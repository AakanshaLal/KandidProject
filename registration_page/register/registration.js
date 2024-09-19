
var loadFile = (event)=>{
    var img = document.getElementById('Pre_image');
    img.src = URL.createObjectURL(event.target.files[0]);
    img.onload = function(){
        URL.revokeObjectURL(img.src)
    }
  };

//   task


function validate_form(e){
    


    var password = document.getElementById('password').value;
    var confirm = document.getElementById('confirm').value;

      //validation);

      var user_fname = document.getElementById('user_fname').value;
      var user_mname = document.getElementById('user_mname').value;
      var user_lname = document.getElementById('user_lname').value;

      var marital_status = document.getElementById('marital_status').value;
      var birth_date = document.getElementById('birth_date').value;
      var story = document.getElementById('story').value;
      var city = document.getElementById('city').value;
      var email = document.getElementById('email').value;
      var monumber= document.getElementById('monumber').value;
      var state= document.getElementById('state').value;
      var country= document.getElementById('country').value;
      var zip = document.getElementById('zip').value;

      
    //   alert(birth_date);
      
      // span
      var errorPassword= document.getElementById('errorPassword');
      var errorConfirm = document.getElementById('errorConfirm');
      
      var error_fname = document.getElementById('error_fname');
      var mname = document.getElementById('mname');
      var lname = document.getElementById('lname');
      
      var error_status = document.getElementById('error_status');
      var error_birth = document.getElementById('error_birth');
      var error_story = document.getElementById('error_story');
      var error_city = document.getElementById('error_city');
      var email_error = document.getElementById('email_error');
      var error_monumber = document.getElementById('error_monumber');
      var province = document.getElementById('province');
      var error_country = document.getElementById('error_country');
      var code = document.getElementById('code');  


      errorPassword.innerHTML='';
      errorConfirm.innerHTML='';

      error_fname.innerHTML ='';
      mname.innerHTML ='';
      lname.innerHTML = '';
      error_status.innerHTML='';
      error_birth.innerHTML='';
      error_story.innerHTML = '';
      error_city.innerHTML = '';
      email_error.innerHTML ='';
      error_monumber.innerHTML='';
      province.innerHTML='';
      error_country.innerHTML='';
      code.innerHTML='';


      // regix

      var nameReg = /^[a-zA-Z\s]+$/;
      var emailReg = /^[^@]+@[^@]+\.[^@]+$/;
      var phnumberReg = /^\d{10}$/; 

      var form_data = [];

      var form_data2 = {};
      var errCount = 0;

      //Password
      console.log("567");
      if(password == ''){
        errorPassword.innerHTML = 'Enter the Password';
      }
      else{ 
        console.log(password);
      }

      //ConfirmPassword
      if(confirm == ''){
      errorConfirm.innerHTML ='Enetr the confirm password';
      }
      else{
        console.log(confirm);
      }
      //username validation
    if (user_fname !=='') {
         
        // console.log(form_data); 
    } else {
        console.log("fanme else")
        error_fname.innerHTML = 'allowed only alphabets';  
        errCount++;
    }

    if (nameReg.test(user_mname)) { 
        form_data.push({"user_mname":user_mname})
        Object.assign(form_data2,{"user_mname": user_mname});
        errCount=0;
        console.log("mname if")
        // console.log(user_mname);
    } else {
        mname.innerHTML = 'allowed only alphabets';
        errCount++;
        console.log("mname else")
    }

    if (nameReg.test(user_lname)) {
        form_data.push({"user_lname":user_lname})
        Object.assign(form_data2,{"user_lname": user_lname});
        errCount=0;
        console.log("lname if")
        // console.log(user_lname);
    } else {
        lname.innerHTML = 'allowed only alphabets';
        errCount++;
        console.log("lname else")
    }

    // marital
    if ((marital_status == '')) {
        error_status.innerHTML = 'Select your marital status';
        errCount++;
        console.log("ms if")
    }
    else {
        form_data.push({"marital_status":marital_status})
        Object.assign(form_data2,{"marital_status": marital_status});
        console.log("ms else")
        // console.log(marital_status);
        errCount=0;
    }
    
    //DOB
    if ((birth_date == '')) {
        error_birth.innerHTML = 'Enter a valid date of birth';
        errCount++;
        console.log("ms if")
    } else {
        form_data.push({"birth_date":birth_date})
        Object.assign(form_data2,{"birth_date":birth_date });
        // console.log(birth_date);
        console.log("ms else")
        errCount=0;
    }
    
    //Email
    if (emailReg.test(email)) {
        form_data.push({"email":email})
        Object.assign(form_data2,{"email":email });
        errCount=0;
        console.log("email if")
        // console.log(email);
    } else {
        email_error.innerHTML = 'Enter a valid email';
        errCount++;
        console.log("email else")
    }
    
    //phone number
    if (monumber.length == 10) {
        form_data.push({"monumber":monumber})
        Object.assign(form_data2,{"monumber":monumber});
        errCount=0;
        console.log("mob if")
        // console.log(monumber);
    } else {
        // console.log("please enter 10 digit");
        error_monumber.innerHTML = 'Enter a valid 10 phone number';
        errCount++;
        console.log("mob else")
    }
    
    //address
    if ((story == '')) {
        error_story.innerHTML = 'Enter a current Address';
        errCount++;
        console.log("story if")
    } else {
        form_data.push({"story":story})
        Object.assign(form_data2,{"story":story});
        // console.log(story);
        errCount=0;
        console.log("story else")
    }
    
    //city
    if ((city == '')) {
        error_city.innerHTML = 'Enter a current city';
        errCount++;
        console.log("city if")
    } else {
        form_data.push({"city":city})
        Object.assign(form_data2,{"city":city });
        // console.log(city);
        errCount=0;
        console.log("city else")
    }
    
    //state
    if ((state == '')) {
        province.innerHTML = 'Enter a current state';
        errCount++;
        console.log("state if")
    } else {
        form_data.push({"state":state})
        Object.assign(form_data2,{"state":state});
        // console.log(state);
        errCount=0;
        console.log("state else")
    }
    
    //country
    if ((country == '')) {
        error_country.innerHTML = 'Enter a current state';
        errCount++;
        console.log("cou if")
    } else {
        form_data.push({"country":country})
        Object.assign(form_data2,{"country":country });
        // console.log(country);
        errCount=0;
        console.log("con else")
    }

    //zip code
    if ((zip == '')) {
        code.innerHTML = 'Enter a current state';
        errCount++;
        console.log("zip if")
    } else {
        form_data.push({"zip":zip})
        Object.assign(form_data2,{"zip":zip });
        // console.log(zip);
        errCount=0;
        console.log("zip else")
    }
//    
    // console.log(form_data);
    // console.log(form_data2);
    
    // console.log('errCount1234',errCount);
    if(errCount==0){
        return true; 
    }
    else{
        return false;
    }

  };

//   var validate_image = function (event){
//     var image = document.getElementById('blah');
//     image.src = URL.createObjectURL(event.target.files[0]);
//     image.onload = function(){
//         URL.revokeObjectURL(image.src)
//     }


//   };
 
  