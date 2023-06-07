@isTest
public  class AccountsBatchTest {

    @isTest
    private static void testBatch1() {
        //prepare
        list<account> listAcc = new list<account>();

        for (Integer i = 0; i < 955; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
            //DO NOT WRITE DML inside LOOPS. EVER. NOT Allowed. 
            //insert ac;

            listAcc.add(ac);
        }

        insert listAcc;//155 record. Number of dmls? 1.

        test.startTest();
        Database.executeBatch(new AccountsBatch(),  1000);

        test.stopTest();


        //assert
        List<Account> allAcc = [select id, description from account];
        for (account eachAcc : allAcc) {
            assert.isTrue(eachAcc.Description.containsIgnoreCase('batch'));
            
        }

        
    } 
}