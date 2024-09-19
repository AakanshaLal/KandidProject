<cfdump var="#form#">
<cfquery datasource="aakanshadb" name="dataset">
SELECT * FROM Registration
WHERE First_name = '#form.UserName#' and
Email = '#form.email#' and
Password = '#form.password#'


</cfquery>

<!--- <cfdump var="#dataset.recordCount#"> --->
<cfset count= 0> 

<cfif dataset.recordCount gt 0 >
    <cfset session.email = "#form.email#">
    

    <cflocation url="/registration_page/register/MainHome/home.cfm">

<cfelseif dataset.recordCount eq 0>
    <cfset count++>
    <cfdump var="#count#">
    <cflocation url="login.cfm?val=#count#">
    




</cfif>
