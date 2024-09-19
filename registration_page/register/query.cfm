<cfparam name="husband_name" default="null">
<cfparam name="fathers_name" default="null">


<cfdump var="#form#">
<cfset fname = #form.user_fname#>
<cfset mname = #form.user_mname#>
<cfset lname = #form.user_lname#>
<cfset marital = #form.marital_status#>
<cfset Monumber = #form.monumber#> 
<cfset email = #form.email#>
<cfset dob = #form.dob#>
<cfset street = #form.street#>
<cfset city = #form.city#>
<cfset state = #form.state#>
<cfset country = #form.Country#> 
<cfset zip = #form.zip#>


<cfif form.preview eq ''>
    <cfset preview=''>
<cfelse>
    <cffile action="upload" fileField="preview" nameconflict="makeunique" result="aakansha" destination="C:\ColdFusion2023\cfusion\wwwroot\registration_page\register\pictures_data">

    <cfset preview=#aakansha.SERVERFILE#>
</cfif>



<!--- <cfset preview =#form.preview# --->


    <cfquery datasource="aakanshadb" name="dataset">
    INSERT INTO registration(
        First_name, Middle_name, Last_name, marital_status, Mobile_number, Email ,
        DOB,Street_address, city,State, Country, Zip_code,preview,Password, Father_name, Husband_name)
    VALUES(
        '#fname#', ' #mname#', '#lname#','#marital#',#Monumber#,'#email#',
        '#dob#', '#street#','#city#','#state#','#country#','#zip#', '#preview#', '#form.password#', '#form.fathers_name#','#form.husband_name#'
        );   
    </cfquery>

<cflocation url="/EmpData/employeeData.cfm?registered=success"> 





<!--- <cfabort> <stops further processing in request> --->