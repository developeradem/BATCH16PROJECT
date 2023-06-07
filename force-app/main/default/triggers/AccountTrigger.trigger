/*change sobject to account bcs we are creating account here
trigger AccountTrigger on Account (before insert) {
    System.debug('before insert account trigger called');
    
    //save
    //deploy

}*/

/*trigger AccountTrigger on Account (before insert, after insert) {
    System.debug('before insert account trigger called');
    System.debug('after insert account trigger called ==>');
}*/

trigger AccountTrigger on Account (before insert, after insert,before update, after update, before delete, after delete, after undelete) {
    if (Trigger.isBefore) {
        if (Trigger.isinsert || Trigger.isUpdate) {
            AccountTriggerHandler.updateAccDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
        }
        //delete
        if(Trigger.isDelete){
            //validate here.
            AccountTriggerHandler.validateAccDelete(Trigger.old);
        }
    
        
    }
    
    if (Trigger.isAfter &&  Trigger.isInsert) {
        //new instance of queueable class
        AccountsQueueableExample aq = new AccountsQueueableExample();
        aq.listAcc = Trigger.new;

        //enqueuing job
        id jobId = system.enqueueJob(aq);
    }
    
    if (Trigger.isAfter && Trigger.isUpdate) {
        //call handler method to update all contact's VIP field.
        AccountTriggerHandler.updateVIPContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }

    if(Trigger.isAfter && Trigger.isUndelete){
        //call method to send email to user
        AccountTriggerHandler.sendAccEmail(Trigger.new);
    }




}
   /* if (Trigger.isBefore) {
        for (Account newAcc : Trigger.new) {
            //boolean falg to maintain we want to update description fiels
            boolean updateDesc = false;
            if (Trigger.isInsert && newAcc.active__c == 'Yes') {
                //update description field
                //set new field
                //newAcc.description = 'account is active enjoy enjoy';  
                updateDesc = true;  
            }

            if(trigger.isUpdate){
                if (newAcc.Active__c != Trigger.oldMap.get(newAcc.id).Active__c && newAcc.Active__c == 'yes') {
                    //newAcc.Description = 'account is active now enjoy enjoy';
                    updateDesc = true;        
                }
            } 
            if (updateDesc) {
                newAcc.Description ='account is active now enjoy enjoy';
                 // newAcc.Rating = 'Warm';
                // newAcc.AnnualRevenue = 600000;
                // newAcc.BillingCountry = 'USA';
                // newAcc.CustomerPriority__c = 'High';
                
            }

        }
    }
}
     /* //isBefore will be true when trigger is running in BEFORE save context
      if(trigger.isBefore && trigger.isInsert){
        //only run when trigger is IN BEFORE.
        system.debug('before insert account trigger called');
    }

    //isAFTER will be true when trigger is running in AFTER save context
    if(trigger.isAfter && trigger.isInsert){
        system.debug('after insert account trigger called');
    }

    if(trigger.isBefore && trigger.isUpdate){
        System.debug('before update');
        }
    
    if(trigger.isAfter && trigger.isUpdate){
        System.debug('after update');
        }



       // example
       list<account> newAccounts = trigger.new;
       if (Trigger.isBefore && Trigger.isInsert) {
           system.debug('before insert trigger.new : ' + trigger.new);
           system.debug('before insert number of records : ' + trigger.new.size());
           for (account eachAcc : trigger.new) {
            system.debug('Before insert - new acount ID: ' + eachAcc.Id);
            system.debug('Before insert - new acount Name: ' + eachAcc.Name);
        }
       }
       if(Trigger.isAfter && Trigger.isInsert){
           system.debug('after insert trigger.new : ' + newAccounts);
           system.debug('after insert number of records : ' + newAccounts.size());
           for (account eachAcc : trigger.new) {
            system.debug('after insert - new acount ID: ' + eachAcc.Id);
            system.debug('after insert - new acount Name: ' + eachAcc.Name);
        }
       }

       if (Trigger.isBefore && Trigger.isUpdate) {
           system.debug('before update trigger.new : ' + trigger.new);
           system.debug('before update number of records : ' + trigger.new.size());
       }
       if(Trigger.isAfter && Trigger.isUpdate){
           system.debug('after update trigger.new : ' + newAccounts);
           system.debug('after update number of records : ' + newAccounts.size());
       }
    
}

//All trigger context variables studied till date
/*trigger AccountTrigger2 on Account (before delete, after delete) {

    if(trigger.isBefore){
        system.debug('before delete account trigger trigger.new: ' + trigger.new);
    }
    if(trigger.isAfter){
        system.debug('after delete account trigger trigger.new: ' + trigger.new);
    }
}*/

/*All trigger context variables studied till date

- Trigger.isBefore
- Trigger.isAfter
- Trigger.isInsert
- Trigger.isUpdate
- Trigger.isDelete

- Trigger.New
    - Newly inserted or updated records
    - datatype of trigger.new?
        - list<sObject> -> sObject will depend on trigger
    - Available in before insert ?
        - Yes. ID is null. CreatedDate, CreatedBy and other system fields are also NULL.
            - why id is null?
                - ID is null because record is NOT YET created.
    - Available in after insert?
        - Yes. Id is present. Record is created.
    - Available in before update and after update?
        - Yes. 
            Field values are same or different?
                - All standard and custom fields values is same for trigger.new in before and after update. BUT some of the system fields might be different, ex: last modified date
- Trigger.Old
    - Datatype of trigger.old?
        - list<sObject>
    - Old snapshot, immediate previous data
    - Available in before insert and after insert?
        - NOT available. It is NULL
        - if record is brand new what is gonna be trigger.old?
            - Null
    - Available in before update and after update?
        - Yes.
        - Same values of trigger.old in before update and after update?
            - Same.
            
            - Trigger.NewMap
    - map<id, sObject>
    - newly inserted or updated record.
    - Available in which Events? 
        - after insert. NOT available in before insert. Why? Bcz no id.
        - before update, after update?
            - yes.

- Trigger.OldMap
    - map<id, sobject>.
    - previous version of updated record.
    - Available in which events?
        - Before update,after update, before delete, after delete

//how can we check if we have update ONE particular field?
    //trigger.isUpdate
        // old record field value != new record field value*/