<cfdump var="#session#">    
<cfif !structKeyExists(session,"email")>
    <cflocation url="/registration_page/sign_up/login.cfm">
</cfif>

<!DOCTYPE html>
<html lang="en">
<head>  
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Home page</title> 
</head>
<body> 
    <h1>Dashboard</h1>
    
    
</body>
</html>