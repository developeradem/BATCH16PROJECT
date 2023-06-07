@isTest
public  class SoqlDemo3Test {
   @TestSetup
   static void makeData(){
    List<Account> listAcc = new List<Account>{
         new account(name = 'may ', phone = ' 121548565'),
         new account(name = 'june '),
         new account(name = 'monday', Industry = 'energy')
    };

    insert listAcc;

    List<contact> listContacts = new list<contact>();
    for (Integer i = 0; i < 300; i++) {
        contact c = new contact(lastname = 'test con ' + i);
        if (i < 100) {
            c.accountid = listAcc[0].Id;
        } else if(i < 200){
             c.accountid = listAcc[1].Id;
        } else {
             c.accountid = listAcc[2].Id;
        }
       listContacts.add(c);
    }
    insert listContacts;


    
   }

   @isTest
   private static void testSOQL1() {
    SoqlDemo3.childToParentQuery();
    
   }

   @isTest
   private static void testSOQL2() {
    List<Account> allAcc = [select id, name, industry from account];
    List<Opportunity> listOpp = new List<Opportunity>();
    Opportunity opp = new Opportunity(name = 'TEst opp', CloseDate = date.today(), StageName ='New', amount = 5000, AccountId = allAcc[0].id);
    listOpp.add(opp);
    Opportunity opp2 = new Opportunity(name = 'TEst opp 2', CloseDate = date.today(), StageName ='New', amount = 10000, AccountId = allAcc[1].id);
    listOpp.add(opp2);
    insert listOpp;
    soqlDemo3.childToParentSOQL1();
}
}