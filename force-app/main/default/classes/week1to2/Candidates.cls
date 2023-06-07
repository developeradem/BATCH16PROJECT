public  class Candidates {
    public string name;
    public string gender;
    public static integer count=0;
    public static string companyName;

    public Candidates(){
        count++;
    }

    //none static methids
    public void details(){
        //accessing non static variables
        system.debug('name is '+name);
        system.debug( 'gende is  '+gender);
        //accessing static varables
        system.debug('company name is '+companyName);
        system.debug('......');
        system.debug( 'count is '+count);
        system.debug('.....');
        system.debug('//////');
    }


  
}