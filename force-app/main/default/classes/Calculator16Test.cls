@istest

public  class Calculator16Test {

    //we write test method to test per each unit
    //we write multiple test methods also to test one method
    //static public or private
    //test method cannot accept any parameter
    //write @istest for every method

    @isTest
    private static void testMethod1() {
        Calculator16 c = new Calculator16();
        c.add(5.5, 3.5);
        
    }

    @isTest

    public  static void testAddMethod() {
        Calculator16 c = new Calculator16();
        integer sum = c.add(5, 5);

        //old way  assert
        system.assertEquals(10, sum);

        //new way assert
       Assert.areEqual(10, sum);
       Assert.isTrue((10 == sum));//this will pass, becuse 10 == sum is true
       Assert.isFalse((11 == sum)); //this will pass, because 11 == sum is false
        
    }

    @isTest
    public static void testAddMethod2() {
        Calculator16 c = new Calculator16();
        integer sum = c.add(5, 5, 5);

        Assert.areEqual(15, sum);

        
    }

    @isTest
    private static void testLeapYear() {
        Calculator16 c = new Calculator16();
        boolean b = c.leapYearCheck(date.today());
        Assert.isFalse(b);

        boolean b2 = c.leapYearCheck(date.newInstance(2020, 1, 15));
        Assert.isTrue(b2);
    }
   

}
