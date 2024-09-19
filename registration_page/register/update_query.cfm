<cfdump var="#form#">
    <cfif form.preview eq ''>
        <!--- <cfoutput>Image Ni hai</cfoutput> --->

        <cfquery datasource="aakanshadb" name="dataupdate">
            UPDATE Registration
            SET First_name = '#form.user_fname#',
            Middle_name = '#form.user_mname#',
            Last_name = '#form.user_lname#',
            Marital_Status = '#form.marital_status#',
            Mobile_number = '#form.monumber#',
            Email = '#form.email#',
            DOB = '#form.dob#',
            Street_address = '#form.street#',
            city = '#form.city#',
            State = '#form.state#',
            Country = '#form.Country#',
            zip_code = '#form.zip#'
            WHERE ID = '#url.id#';
        </cfquery>
    <cfelse>
        <!--- <cfoutput>Image aaya hai</cfoutput> --->
        <cffile action="upload"
        fileField="preview"
        nameconflict="makeunique"
        result="result" 
        destination="C:\ColdFusion2023\cfusion\wwwroot\registration_page\register\pictures_data"></cffile>
        <cfquery datasource="aakanshadb" name="dataupdate">
            UPDATE Registration
            SET First_name = '#form.user_fname#',
            Middle_name = '#form.user_mname#',
            Last_name = '#form.user_lname#',
            Marital_Status = '#form.marital_status#',
            Mobile_number = '#form.monumber#',
            Email = '#form.email#',
            DOB = '#form.dob#',
            Street_address = '#form.street#',
            city = '#form.city#',
            State = '#form.state#',
            Country = '#form.Country#',
            zip_code = '#form.zip#',
            preview = '#result.ATTEMPTEDSERVERFILE#'
            WHERE ID = '#url.id#';
            </cfquery>
    </cfif> 
    
    <cflocation url="/EmpData/employeeData.cfm">
    