@isTest
public  class DmlDemo16Test {

    @isTest
    private static void testDml1() {
        
        DmlDemo16.dmlInsert1();
        //it does not create any record in org just create own testing world
        //validate by checking
        account acc = [select id, name from account limit 1];
        Assert.areEqual('Salesforce', acc.Name);
    }

  
}