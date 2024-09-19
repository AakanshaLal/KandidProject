
<cfdump var= "#admin#">
<cfdump var= "#tog#">

<cfquery name="toggle" datasource="aakanshadb">
UPDATE registration
SET User_Admin = #admin#
WHERE ID = #tog#


</cfquery>