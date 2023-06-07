public  class MethodsDemo {
    public void welcomeMessage() {
        system.debug('hi there, welcome to the world');

    }
      //print dynamic message
    //parameter -> string datatype
    public void samplePrintMessage(string m){
        //msg is parameter variable name which we use inside method
        system.debug(m);
    }

    public void newMessage(String name){
        system.debug('hi '+name+' ,welcome to the world of apex,buddy');


    }
}