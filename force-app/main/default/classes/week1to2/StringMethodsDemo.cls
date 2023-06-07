public class StringMethodsDemo {
    public void StringMethodsDemo() {
        string sd='learling string method in apex language';

        integer lengthOfStr=sd.length();
        system.debug('length of string is '+lengthOfStr);
        

        //3 things to keep in mind
            //1. method name
            //2. parameters
            //3. return type

       
        //3. check if string contains apex
        Boolean checkApex = sd.contains('apex'); //case sensitive
        system.debug('string contains apex?  ' + checkApex);

        string temp = 'apex';
        boolean checkApex2 = sd.contains(temp); //yes
        system.debug('string contains apex?  ' + checkApex2);

        boolean checkApex3 = sd.CONTAINS('Apex');
        system.debug('string contains Apex?  ' + checkApex3); //false

        //containsIgnoreCase
        boolean checkApex4 = sd.containsIgnoreCase('APEX');
        system.debug('string containsIgnoreCase ApEX?  ' + checkApex4); //true

        string sdUP =sd.toUpperCase();
        system.debug(sdUp);
        system.debug('original string: '+sd);
    }


    public void stringMethod2(){
        string username='   adem a ';
        system.debug('orginal length=> '+username.length());
        string usernameTrim=username.trim();
        system.debug(usernameTrim);
        system.debug('after trim=> '+usernameTrim.length());
    }


    public void stringMethod3(){
        string username='adem a';
        string username2='adem';
        boolean check = username.equals(username2);
        system.debug('username and username2 are equal? '+check);

        string username3='adem A';
        boolean check2=username.equals(username3);
        system.debug('username and username3 are equal? '+check2);

        boolean check3=username.equalsIgnoreCase(username3);
    }

    public void stringMethod4(){
        string s ='Salesforce';


        integer indexofo=s.indexOf('o');
        system.debug(indexofo);

        integer indexofS=s.indexOf('S');//0

        integer indexofe=s.indexOf('s');//3

        integer indexofz=s.indexOf('z');//-1 doesnt exist

        string str = 'My name is Bond. James Bond';
        integer indexOfBond = str.indexOf('Bond');
        system.debug('index of Bond ' + indexOfBond);

        integer indexOfbond2 = str.indexOf('bond');
        system.debug('indx of bond ' + indexOfbond2);

    }

    public void stringMethod5(){
        string s1 = 'Welcome to Softinnovas bootcamp. Ready to learn?';
        
        string s2 = s1.remove('to');
        system.debug('s2 is ' + s2);
        system.debug('s1 is ' + s1);
        
        string s3 = s1.removeEnd('earn?');//it will remove the substring FROM END if it exisits.
        system.debug('s3 is ' + s3);
    }


 }

