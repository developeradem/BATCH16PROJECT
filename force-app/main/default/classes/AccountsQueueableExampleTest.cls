public  class AccountsQueueableExampleTest {
   @istest
   private static void testQueueable1() {
    List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 10; i++) {
            Account acc = new Account(Name = 'Test Account ' + i);
            accounts.add(acc);
        }
        insert accounts;
        test.startTest();
        AccountsQueueableExample aq = new AccountsQueueableExample();
        aq.listAcc = accounts;
        system.enqueueJob(aq);
        test.stopTest();

        List<Account> listAcc =[select id, name from account where name like '% --SI%'];
        assert.areEqual(500, listAcc.size());
    
   }
}