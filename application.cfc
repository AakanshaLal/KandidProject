component{

    this.name = "NewApplication";
    this.sessionManagement = "yes";
    // this.applicationTimeout = createTimeSpan( 1, 0, 0, 0 ); //30 days
  
    this.sessionTimeout = createTimeSpan( 0, 0,30,0);

    function onSessionStart() {
        writeDump("on Session start");
    }
    function onSessionEnd() {
        writeDump("on Session End");
    

    }


}



