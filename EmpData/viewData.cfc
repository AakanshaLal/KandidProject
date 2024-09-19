<cfcomponent>

    !--- //FOR VIEW PERPOSE --->
    <cffunction name="get_emp_data" returnformat="json" returntype="any" access="remote">
         <cfargument name="empData" required="true" >
            <cfquery name='emp' datasource="aakanshadb">
                SELECT * FROM registration
                WHERE ID = <cfqueryparam value ="#arguments.empData#"cfsqltype="cf_sql_integer">
            </cfquery> 
        <!--- <cfdump var="#emp_list_id#"><cfabort> --->
        <cfset emp_struct= { 
            'First_name'= "#emp.First_name#",
            'Middle_name'="#emp.Middle_name#",
            'Last_name'="#emp.Last_name#",
            'Marital_status'="#emp.Marital_Status#",
            'DOB'="#emp.DOB#",
            'Email'="#emp.Email#",
            'Mobile_number'="#emp.Mobile_number#",
            'Street_address'="#emp.Street_address#",
            'city'="#emp.city#",
            'State' ="#emp.State#",
            'Country'="#emp.Country#",
            'zip_code'="#emp.Zip_code#",
            'preview'="#emp.preview#"
        }>
        <cfreturn emp_struct>

    </cffunction>


    <cffunction name="delete_value" returnformat="json" returntype="any" access="remote">
        <cfargument name="del" required="true">
        <cftry>
           <cfquery name='emp' datasource="aakanshadb">
               DELETE FROM registration 
               WHERE ID = <cfqueryparam value="#arguments.del#"cfsqltype="cf_sql_integer">
           </cfquery>
             <cfset delete_status = "1">
            <cfcatch>
                <cfset delete_status = "0">
            </cfcatch>
        </cftry>
           <cfreturn delete_status>
</cffunction>


<cffunction name="search_input" returntype="any" returnformat="json" access="remote">
    <cfargument name="inpSearch" required="true" type="any">
    <!--- <cfdump var="#argumemnts.inpSearch#"> --->
    <cfquery name="search" datasource="aakanshadb">
        SELECT * FROM registration
        WHERE First_name Like <cfqueryparam value="#arguments.inpSearch#%" cfsqltype="cf_sql_integer">
    </cfquery>
    <cfreturn #SerializeJSON(search)#>


</cffunction>

</cfcomponent>






