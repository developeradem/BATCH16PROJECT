public class CasesBatch implements Database.batchable<sobject> {

   // Id defaultAccId;
    public Database.QueryLocator start(Database.BatchableContext bc){
        System.debug('inside start method');
        return database.getQueryLocator([select id, accountid from case]);
    }
    public void execute(Database.BatchableContext bc, list<case> someCases){
       // if(defaultAccId == null){
        //we need account id
       // id accId =[select id from account where name ='Softinnovas' limit 1].Id;
       Account acc = [select id from account where name = 'softinnovas' limit 1];
      // this.defaultAccId = acc.Id;

       // }

       list<case> updateCases = new list<case>();
       for(case eachCase : someCases){
       if (eachCase.AccountId == null) {
        eachCase.AccountId = acc.id;
        updateCases.add(eachCase);
        
       }

       }
       update updateCases;
       System.debug(updateCases.size()+ 'updated cases');


    }

    public void finish(Database.BatchableContext bc){
        System.debug('done');
    }
    
   
}


