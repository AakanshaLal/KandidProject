<cfparam name="image" default="blankimage.png">
<cfif !StructKeyExists(session,"email")>
    <cflocation url="/registration_page/sign_up/login.cfm">
</cfif>



<!--- ///session --->
<cfquery datasource="aakanshadb" name="emp_list">
 SELECT * FROM registration 
</cfquery>


<!--- <cfdump var="#emp_list.COUNTRY#"><cfabort> --->

<!--- modal --->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content"> 
      <div class="modal-header">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div> 
      
    <div class="modal-body">
        <!--- ---Modal Desgning--- --->
        <!--- <div class=" image d-flex flex-column justify-content-between align-items-center"> --->
        <!--- <h3>Kandid Technologies</h3> --->
        <div class="text-center">
        <img id="pre" src="" height="70" width="70" />
      <div>
        <label><b>Full Name:</b></label>
        <span class="mt-3" id="firstName"></span>
        <span id="middleName">Middle Name:</span>
        <span id="lastName">Last Name:</span><br> 
        
        <label><b>Email ID:</b></label>
        <span id="e_mail">Email Id:</span>
      </div>
    </div>

    <hr class="line">
      <div class="row mt-3 mb-3">
        <div class="col-md-6">
        <label><b>Mobile No. :</b></label>
        <span id="phone">Mobile No. :</span>
        </div>
        <div class="col-md-6">
        <label><b>DOB:</b></label>
        <span id="dob">DOB</span>
      </div>
      </div>
    
    <hr class="line">
      <div class="row mt-3 mb-3">
        <div class="col-md-4" >
          <label><b>Marital Status</b></label>
          <span id="marital">Marital Status</span>
        </div>
        <div class="col-md-4">
          <label><b>Street Address:</b></label><br>
          <span id="street">Address</span>
        </div>
        <div class="col-md-4">
          <label><b>City:</b></label>
          <span id="place">City</span>
        </div>
      </div>

<hr class="line">
  <div class="row mt-3 mb-3" >
    <div class="col-md-4">
      <label><b>State:</b></label>
      <span id="state">State</span>
    </div>
    <div class="col-md-4" >
      <label><b>Country:</b></label>
      <span id="desh">Country</span>
    </div>
    <div class="col-md-4" >
      <label><b>Zip Code:</b></label>
      <span id="zip">Code</span>
    </div>
  </div>  
</div>

      </div>
     
    </div>
  </div>
</div>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Data</title>
    <link rel="stylesheet" href="employee.css">
    <link  
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
  />   
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <style>
    .switch {  
    margin-top:5px;
    position: relative;
    display: inline-block;
    width: 35px;
    height: 20px;
  }
  
  .switch input { 
    opacity: 0;
    width: 0;
    height: 0;
  }
  
  .slider {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: -5px;
    right: -5px;
    bottom: 0;
    background-color: #ccc;
    -webkit-transition: .4s;
    transition: .4s;
  }
  
  .slider:before {
    position: absolute;
    content: "";
    height: 15px;
    width: 15px;
    left: 3px;
    bottom: 2px;
    background-color: white;
    -webkit-transition: .4s;
    transition: .4s;
  }
  
  input:checked + .slider {
    background-color: #2196F3;
  }
  
  input:focus + .slider {
    box-shadow: 0 0 1px #2196F3;
  }
  
  input:checked + .slider:before {
    -webkit-transform: translateX(26px);
    -ms-transform: translateX(26px);
    transform: translateX(26px);
  }
  
  /* Rounded sliders */
  .slider.round {
    border-radius: 34px;
  }
  
  .slider.round:before {
    border-radius: 100%;
  }
  td #myImg img{
    border-radius: 50%;
  }

  </style>
</head>
<body class="ms-5">
  <div class="row">
    <div class="col-md-4 ms-4">
      <h1 class="text-primary">Employee Lists </h1><br>
    </div>
    <div class="col-md-6">
    <!-- <div class="vol-md-2"> -->
      <div class="input-group rounded">
       
        <input type="search" class="form-control rounded mt-2"id="search_inp" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
        <span class="input-group-text border-0" id="search-addon">
          <i class="fas fa-search"></i>
        </span>
      </div>
    </div>
    <div class="row" id= block>
      <div class="col-md-5 ms-4">
        <a href="/registration_page/register/registration.cfm">
        <button type="button" class="form-control btn btn-success">Add Employee</button>
      </a>
        </span>
      </div>
      <div class="col-md-6">
        <button type="button" class="text-light form-control btn btn-info" id="search_emp">Search Employee</button>

      </div>

    </div>
    
   
  </div><br>
  <table class="table table-sm ms-4">
    <thead>
      <tr>
        <th scope="col">S.No.</th>
        <th scope="col">Full Name</th>
        <th scope="col">Mobile Number</th>
        <th scope="col">Email</th>
        <th scope="col">Image</th>
        <th scope="col">User Admin</th>
        <th scope="col">Action</th>
       
      </tr>
    </thead>
    <!--- <cfdump var="#emp_list.COUNTRY#"> --->
    <cfoutput>
     
      <tbody id="User_Search">
        <cfloop query="emp_list">
          <tr>
            <th scope="row">#emp_list.ID#</th>
            <td>#emp_list.First_name# #emp_list.Middle_name# #emp_list.Last_name#</td>
            <td>#emp_list.Mobile_number#</td>
            <td>#emp_list.Email#</td>
            <td id="myImg"><img src=
              <cfif emp_list.preview eq ''>
                <cfoutput>..\EmpData\blankimage.png</cfoutput> alt="" width="37px"></td>
            <cfelse>
                <cfoutput>../registration_page/register/pictures_data/#emp_list.preview#</cfoutput> alt="" width="37px" class="rounded-circle"></td>
            </cfif> 
          </td>
            <!--- -----toggle button --->
         
            
            <td>
              <div class="ms-4 mt-0">
              <label class="switch">
                <input type="checkbox" class="toggle_btn" id="toggle_btn" value="<cfoutput>#emp_list.ID#</cfoutput>"
                <cfif emp_list.User_Admin eq 1>
                  checked
                </cfif>>

                <span class="slider round"></span>
              </label>
            </div>
              
            </td>
            <td>
              <!--- data-bs-toggle="modal" data-bs-target="##exampleModal" --->

              <button type="button" class="btn btn-success"data-bs-toggle="modal" data-bs-target="##exampleModal" onclick="view_detail(<cfoutput>#emp_list.ID#</cfoutput>)">View</button>
              <a href="/registration_page/register/registration.cfm?id=<cfoutput>#emp_list.ID#</cfoutput>">
                <button type="button" id="NewUpdate" class="btn btn-primary"onchange="EditBtn(<cfoutput>#emp_list.ID#</cfoutput>)">Edit</button>
              </a>
              <button type="button" class="btn btn-danger"onclick="delete_detail(<cfoutput>#emp_list.ID#</cfoutput>)">Delete</button>
            
            </td>   
          </tr>
        </cfloop> 
        </tbody>
      </cfoutput>
  </table>
</body>
<script>
// search

$("#search_emp").click(function(){
  console.log("123");
  var task= $("#search_inp").val();
  console.log(task);
  $.ajax({
    url: 'viewData.cfc?method=search_input',
    type:"POST",
    dataType:"json",
    data:{
      inpSearch: task
    },
    success: function(res) {
      console.log(res);

      $("#User_Search").html('');

      console.log(res.DATA.length);
      for(let i=0;i<res.DATA.length;i++){
        console.log(res.DATA[i]);
        var id = res.DATA[i][0];
        var fname = res.DATA[i][13];
        var mname = res.DATA[i][1];
        var lname = res.DATA[i][2];
        var email = res.DATA[i][5];
        var phnumber = res.DATA[i][6];
        
        var image = res.DATA[i][12];

        var admin = res.DATA[i][14];

      $("#User_Search").append(`<tr>\
      <td scope="row">`+id+`</td>\
          <td>`+fname+` `+mname+` `+lname+`</td>\
          <td>`+phnumber+`</td>\
          <td>`+email+`</td>\
       
            <td id="myImg"><img src=<cfoutput>../registration_page/register/pictures_data/`+image+`</cfoutput> alt="" width="37px" class="rounded-circle"></td>
         
          <td>\
            <div class="ms-4 mt-0">\
            <label class="switch">\
              <input type="checkbox" class="toggle_btn" value=`+admin+`>\
              <span class="slider round"></span>\
            </label>\
          </div>\
          </td>\
          <td>\
            <button type="button" class="btn btn-success"data-bs-toggle="modal" data-bs-target="##exampleModal" onclick="view_detail(`+id+`)">View</button>\
            <a href="/registration_page/register/registration.cfm?id=`+id+`">\
              <button type="button" id="NewUpdate" class="btn btn-primary"onchange="EditBtn(`+id+`)">Edit</button>\
            </a>\
            <button type="button" class="btn btn-danger"onclick="delete_detail(`+id+`)">Delete</button>\
          </td>\
        </tr>`);

      } 
    }
  });
})


//VIEW DETAIL

  

  function view_detail(value) {
    // console.log(value);
      $.ajax({
        url: 'viewData.cfc?method=get_emp_data', 
        type:"POST",
        dataType:"json",
        
        data: {
          empData:value
        },
   
        success: function(res){ 
         console.log(res);
            // console.log(res.First_name, res.Middle_name, res.Last_name );
        // console.log(res);

            $('#firstName').text(res.First_name);
            $('#middleName').text(res.Middle_name);
            $('#lastName').text(res.Last_name);
            $('#e_mail').text(res.Email);
            $('#phone').text(res.Mobile_number);
            $('#dob').text(res.DOB);
            $('#marital').text(res.Marital_status);
            $('#street').text(res.Street_address);
            $('#place').text(res.city);
            $('#state').text(res.State);
            $('#desh').text(res.Country);
            $('#zip').text(res.zip_code); 
            $('#pre').attr('src',"../registration_page/register/pictures_data/"+res.preview);
            
        }
      });
}

//DELETE DATA
function delete_detail(val){
  Swal.fire({
  title: "Are you sure?",
  text: "You won't be able to revert this!",
  icon: "warning",
  showCancelButton: true,
  confirmButtonColor: "#3085d6",
  cancelButtonColor: "#d33",
  confirmButtonText: "Yes, delete it!"
}).then((result)=>{
  if(result.isConfirmed){
  $.ajax({
    url:'viewData.cfc?method=delete_value',
    type:"POST",
    data:{del:val},
    success:function(res) {
      // console.log(res=="1");
      if(res=="1"){
        // alert("inside if");
        Swal.fire({
          title: "Deleted!",
          text: "Your file has been deleted.",
          icon: "success"
        }).then((result)=>{
          location.reload();
        });
      }
      else{
        // alert("inside else");
        Swal.fire({
          title: "Cancelled",
          text: "Your imaginary file is safe :)",
          icon: "error"
        });
      }
    }
  });
}
});
}

// TOGGLE BUTTON

$("#toggle_btn").change(function(){
  // console.log(this);
 var user_ID= $(this).val();
  console.log('24456467')
  if( $('#toggle_btn').is(':checked')==true){
    var user =1;
  }
    else{
      user=0;
    }
  $.ajax({
    url:'updateUser.cfm',
    type:"POST",
    data:{ 
      admin:user,
      tog: user_ID
    }

});
});

</script>

</html>