public  class MethodsDemo2 {
    public string returnMessage(string name){
        system.debug('code reached method');
        string returnStr='hi '+name+ 'how are you';
        return returnstr;
        
    }

    public string returnMessage2(string name){
        system.debug('code reached method');
        string returnStr='hi '+name+ 'how are you';
        return returnstr;

        
    }
     //pass string in method.
    //returnMessage2(name)
        //print str = hi + name + nice to meet you.
    //return length of str;
    public integer returnMessage3(string name){
        string printStr = 'Hi ' + name + ', nice to meet you';
        system.debug(printStr);
        integer l = printStr.length();//length is string method
        return l;
    }

    public Boolean nameContainsA(string str){
        boolean checkA=str.containsIgnoreCase('a');
        return checkA;
    }
  
}