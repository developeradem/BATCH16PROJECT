public  class Sitring_Assignment {
    public void Assignment() {
        string Localsitring='Thanks for the session on the string';
        integer lengthOfLs=Localsitring.length();
        system.debug(lengthOfLs);


        string LSUpperCase=Localsitring.toUpperCase();
        system.debug(LSUpperCase);

        boolean checkSession=Localsitring.contains('session');
        system.debug('localstring contains session? '+checkSession);

        boolean checkSession1=Localsitring.contains('session');
        system.debug('localstring contains session? '+checkSession1);

        boolean checkSession2=Localsitring.contains('SESSION');
        system.debug('localstring contains SESSION? '+checkSession2);

        integer indexOfFor = Localsitring.indexOf('for');
        system.debug(indexOfFor);

        integer indexOfAn = Localsitring.indexOf('an');
        system.debug(indexOfAn);

        string removeThe= Localsitring.remove('the');
        system.debug(removeThe);



    }
}