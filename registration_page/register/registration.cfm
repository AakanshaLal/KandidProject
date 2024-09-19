<cfparam name="url.id" default="">

  <!--- for editing prpse --->
  <cfquery name="edit_data" datasource="aakanshadb">
    SELECT * FROM registration
    WHERE ID = '#url.id#';
    

  </cfquery>
  <cfset emp_edit={'First_name'="#edit_data.First_name#" ,'Middle_name'="#edit_data.Middle_name#"
    , 'Last_name'="#edit_data.Last_name#" , 'Marital_status'="#edit_data.Marital_Status#" , 'DOB'="#edit_data.DOB#"
    , 'Email'="#edit_data.Email#" , 'Mobile_number'="#edit_data.Mobile_number#"
    , 'Street_address'="#edit_data.Street_address#" , 'city'="#edit_data.city#" , 'State'="#edit_data.State#"
    , 'Country'="#edit_data.Country#" , 'zip_code'="#edit_data.Zip_code#" , 'preview'="#edit_data.preview#" }>


    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Document</title>
      <link rel="stylesheet" href="registration.css">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    </head>

    <body>
      <form action="query.cfm" enctype="multipart/form-data" method="POST" id="main_container"
        onsubmit="return validate_form(event)">
        <div id="container" class="container">
          <div id="titles">
            <cfif url.id eq ''>
              <h2 id="title_one">New Employee Registration Form</h2><br>
            <cfelse>
              <h2>Update Registration Form</h2>
           </cfif>

            <p>
              Please fill out the form to complete your registration. Thank you!
            </p><br>
            <div class="row">
              <div class="col-md-4"></div>
              <div class="col-md-4"> 
                <!--- //image// --->

                <div class="image_container">
                 
                  <img id="Pre_image"src="./pictures_data/<cfif #edit_data.id# neq ''><cfoutput>#edit_data.PREVIEW#</cfoutput><cfelse><cfoutput></cfoutput></cfif>" width="100" height="100" style="margin-bottom:5px">

                      <input type="file" id="imgInp" accept="image/*" onchange="loadFile(event)"
                        name="preview"/>
                </div>
              </div>
            </div>

            <h4>Personal information</h4>
          </div>
          <hr/>

          <div id="input_container">
            <div class="row g-3">
              <div class="col-sm">
                <label for="Fname" class="form-label">First Name</label>
                <input type="text" class="form-control" placeholder="First name" aria-label="fname" id="user_fname"
                  name="user_fname" value="<cfoutput>#edit_data.First_name#</cfoutput>" />
                <!--- <input type="hidden" name= "update" value=<cfoutput>"#edit_data.ID#"</cfoutput>> --->
                <span id="error_fname"></span>
              </div>
              <div class="col-sm">
                <label for="Mname" class="form-label">Middle Name</label>
                <input type="text" class="form-control" placeholder="Middile name" aria-label="mname" id="user_mname"
                  name="user_mname" value="<cfoutput>#edit_data.Middle_name#</cfoutput>" />
                <span id="mname"></span>
              </div>
              <div class="col-sm">
                <label for="Lname" class="form-label">Last Name</label>
                <input type="text" class="form-control" placeholder="Lname" aria-label="Zip" id="user_lname"
                  name="user_lname" value="<cfoutput>#edit_data.Last_name#</cfoutput>" />
                <span id="lname"></span>
              </div>
            </div><br>
            <!--- <--------------------------------------Add Gender------> 
            <div>
                <label for="gender" >Gender</label>
                <input type="radio"id="male" name="gender" value="male">
                <label for="male">Male</label>
                <input type="radio" id="female" name="gender" value="female">
                <label for="male">female</label>
             
            </div><br>
            <div class="row g-2"> 
              <div class="col-sm"> 
                <label for="marital">Marital Status</label>
                <select class="form-select" class="form-control" id="marital_status" name="marital_status"
                  value="<cfoutput>#edit_data.Marital_Status#</cfoutput>">
                  
                  <option value=""selected id="gender" >Select </option> 
                  <option value="married" id="married">Married</option>
                  <option value="unmarried" id="unmarried">Unmarried</option>
                </select>
                <span id="error_status"></span>
              </div>
              <!--- //task --->
              <div id="wife_name_box" class="hidden">
                <label>wife Name</label>
                <input type="text" id= "wife_name" name="wife_name">
              </div>

              

              <div id="husband_name_box" class="hidden">
                <label>Husband Name</label>
                <input type="text" id= "husband_name" name="husband_name">
              </div>

              <div id="fathers_name_box" class="hidden">
                <label>Fathers Name</label>
                <input type="text" id= "fathers_name" name="fathers_name">
              </div>
              

              <div class="col-sm">
                <label for="dob">Date Of Birth</label><br />
                <input type="date" id="birth_date" class="form-control" name="dob"
                  value="<cfoutput>#edit_data.DOB#</cfoutput>" />
                <span id="error_birth"></span>
              </div>

            </div>
            <div>
              <h4>Contact Information</h4>
            </div>
            <hr />
            <div class="row g-2">
              <div class="col-sm">
                <label for="email">Email</label>
                <input type="text" class="form-control" placeholder="Email" id="email" name="email"
                  value="<cfoutput>#edit_data.Email#</cfoutput>" />
                <span id="email_error"></span>
              </div>
              <div class="col-sm">
                <label for="Mobile">Mobile Number</label>
                <input id="monumber" type="Monumber" class="form-control" placeholder="Mobile Number" name="monumber"
                  value="<cfoutput>#edit_data.Mobile_number#</cfoutput>" />
                <span id="error_monumber"></span>
              </div>
            </div>
            <h4>Address</h4>
            <hr />
            <div class="row">
              <div class="col-sm" "<cfoutput>#edit_data.Street_address#</cfoutput>">
                <label for="street">Street Address</label>

                <textarea id="story" name="street" class="form-control" rows="1"> <cfoutput>#edit_data.Street_address#</cfoutput>

             </textarea>
                <span id="error_story"></span>
              </div>
            </div>
            <br />
            <div class="row g-2">
              <div class="col-sm">
                <input type="text" class="form-control" placeholder="City" id="city" name="city"
                  value="<cfoutput>#edit_data.city#</cfoutput>" />
                <span id="error_city"></span>
              </div>
              <div class="col-sm">
                <input id="state" type="text" class="form-control" placeholder="State/Province" name="state"
                  value="<cfoutput>#edit_data.State#</cfoutput>" />
                <span id="province"></span>
              </div>
            </div>
            <br />
            <div class="row g-2">
              <div class="col-sm">
                <input type="text" class="form-control" placeholder="Country" id="country" name="country"
                  value="<cfoutput>#edit_data.Country#</cfoutput>" />
                <span id="error_country"></span>
              </div>
              <div class="col-sm">
                <input type="text" class="form-control" placeholder="Zip Code" id="zip" name="zip"
                  value="<cfoutput>#edit_data.Zip_code#</cfoutput>" />
                <span id="code"></span>
              </div>
            </div><br>

            <div class="row">
              <div class="col-md-6">
                <input type="password" id="password" name="password" class="form-control form-control-lg" placeholder="Password"/>
                <span id= "errorPassword"></span>
              </div>

            <div class="col-md-6">
              <input type="password" id="confirm" name="confirm" class="form-control form-control-lg" placeholder="Confirm Password" />
              <span id="errorConfirm"></span>
            </div> 
          </div>

            <div class="d-grid ">
              <cfif id EQ "">
                <cfoutput>
                  <button class="btn btn-success mt-4 mb-4" type="submit" value="submit">Register Me</button>
                </cfoutput>
                <cfelse>
                  <cfoutput>
                    <button class="btn btn-success mt-4 mb-4"id= "psweet" >update</button>
                  </cfoutput>
              </cfif>
            </div>
          </div>
        </div>
      </form>
      <script src="registration.js">

                    // <button class="btn btn-success mt-4 mb-4"id= "psweet" >update</button>
                    // <button class="btn btn-success mt-4 mb-4"id= "psweet" >update</button>
      </script>
      <script>

      $(document).ready(function(){

          $("#psweet").on('click',function () {
            $('#main_container').attr('action','update_query.cfm?id=<cfoutput>#url.id#</cfoutput>');
        
          });
// <-----------------------------------Marital Status---------------------------------------------------------------->
  $("#husband_name_box").hide();
  $("#wife_name_box").hide();
  $("#fathers_name_box").hide();

  $('[name="gender"]').change(function(){
    console.log("123");
    $('#marital_status').prop('selectedIndex',0);
      
  });
  
       
   $("#marital_status").change(function(){


    const task = $(this).val();

    const gender = $('[name ="gender"]:checked').val();
    // console.log(task);
   
   console.log(gender);

    if(task=="married"){
     
      if(gender === "male"){
        console.log("123");
        $("#wife_name_box").show();
        $("#husband_name_box").hide();

      }
      else if(gender ==="female"){
        console.log("890");
        $("#husband_name_box").show();
        $("#wife_name_box").hide();  

      }
    }
    else if(task=="unmarried"){
      
        $("#fathers_name_box").show();
        $("#husband_name_box").hide();
        $("#wife_name_box").hide();

    }

   });
  
          $('#email').on('input',function() {

            const email = $('#email').val();

            const emailReg = /^[^@]+@[^@]+\.[^@]+$/;

            if(emailReg.test(email)){ 
              
              // $('#email').text("Input fields are empty!");
              $("#email_error").text("");
              
            }
            else if(email==''){
              $("#email_error").text("");

            }
            else {
              $("#email_error").text("Invalid");
              console.log(email);
        
            }
          });

          //task2
          $('#monumber').on('input',function(){

            var Mobile = $('#monumber').val();
            var phoneReg =  /^\d{10}$/; 
            if(Mobile.length==10){
            // if(phoneReg.test(Mobile)){
              console.log("6568");
              $("#error_monumber").text('');
              
            }
            else if(Mobile==''){
              $("#error_monumber").text("");
            }
            else{
              $("#error_monumber").text("enter only 10 digit phone number");
              console.log(Mobile);
            }

          
          });
          
        });
       

      

      </script>

    </body>

    </html>