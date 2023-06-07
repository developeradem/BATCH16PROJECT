public  class PrimitiveDataTypeDemo2 {
  //we will create ned date

  public void printnewDate(){
    system.debug('create new date');
 //data type

date newDate=date.newInstance(1992, 6, 3);
system.debug('newDate is '+newDate);

date newDate2=date.newInstance(2023, 1, 15);
system.debug('newdate2 is '+newDate2 );

date todayDate = date.today();
//today's
    // escape character -> \ -> it will ignore the next character
system.debug('today\'s date is ' + todayDate);

}



  public void printNewTime(){

    time mytime1=time.newInstance(10, 15, 20, 500);
    system.debug('myTime is '+mytime1);

    time myTime2=time.newInstance(25, 80, 30, 100);
    system.debug('mytime2 is '+myTime2);

  }


  public void printNewDtaeTime(){

    date newDate=date.newInstance(1992, 6, 3);
    time mytime1=time.newInstance(10, 15, 20, 500);

    Datetime dt1= datetime.newInstance(newDate, mytime1);
    system.debug(dt1);

    datetime dt2=Datetime.newInstance(2020, 5, 12);
    system.debug('dt2 is '+dt2);

  

    //3. create new DATETIME using year, month, day, hour, minute, second
    datetime dt3 = Datetime.newInstance(2005, 1, 18, 8, 30, 55);//will create as per user timezone.
    system.debug('dt3 ' + dt3);//print as per gmt

    //6. current datetime
    datetime dt6= Datetime.now();
    system.debug('current datetime '+dt6);//will print gmt zone.


    //4 new datetime using long variable
    //4. new datetime using long variable
    datetime dt4 = datetime.newInstance(0);
    system.debug('dt4 is ' + dt4);//which datetime it will print?

    long longtime = 9198784512113l;
    datetime dt44 = datetime.newInstance(longtime);
    System.debug('dt44 is ' + dt44);


    //5. create new datetime as GMT
    datetime dt5= Datetime.newInstanceGmt(2023, 4, 1, 10, 15, 30);
    system.debug('dt5 is '+dt5);




  }


}