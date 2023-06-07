public class AccountTriggerHandler {
    public static void updateAccDescription(
             List<account> accTriggerNew,
             List<account> accTriggerOld,
             Map<id, account> accTriggerNewMap,
             Map<id, account> accTriggerOldmap
    ) {
         for (Account newAcc : accTriggerNew) {
             //boolean flag to maintain if we want to update description field
             boolean updaAccFields = false;
             //check insert
             if (Trigger.isInsert && newAcc.active__c == 'Yes') {
                 //update description field
                 //set new field value
                 //newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
                 updaAccFields = true;
             }
 
             //check if update
             if(Trigger.isUpdate){
                 //if active field is changed, and active field new value is 'yes'
                     //old acc active field != new acc active field AND new acc active field == yes
                 if(newAcc.Active__c != accTriggerOldMap.get(newAcc.id).Active__c
                 && newAcc.Active__c == 'Yes'){
                     //newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
                     updaAccFields = true;
                 }
             }
 
             if(updaAccFields){
                 newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
                 // newAcc.Rating = 'Warm';
                 // newAcc.AnnualRevenue = 600000;
                 // newAcc.BillingCountry = 'USA';
                 // newAcc.CustomerPriority__c = 'High';
             }
 
         }
    }


    
    public static void updateVIPContacts(List<account> accTriggerNew, List<account> accTriggerOld,
            Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldmap
   ) {
        //Ex: We are update 10 accounts.
            //out of these 10, for 6 accounts we are updating VIP field. for other 4, we are updating phone field.
                //we need to get ID for 6 accounts.
                    //Fetch all contacts of these 6 accounts. We found 24 contacts
                        //update vip field for all(24)  contacts of these accounts
        
        //get acc ids where we update VIP field
        set<id> accIds = new set<id>();
        for (account newAcc : accTriggerNew) {
            //check if VIP is changed. HOW??
            //new acc VIP != old acc VIP
            if (newAcc.vip__c != accTriggerOldMap.get(newAcc.id).vip__c) {
                accIds.add(newAcc.Id);
            }
        }

        if(!accIds.isEmpty()){
            //fetch all contacts
            list<contact> listContacts = [select id, name, vip__c, accountid from contact where accountid in :accIds];

            //for each loop contact
                //set vip field of contact same as it's accounts vip field value
            
            for (contact eachContact : listcontacts) {
                //eachContact.vip__c = account's vip field
                //how to get account's vip field?
                id accId = eachContact.accountid; //account id.
                account newAccount = accTriggerNewMap.get(accId);

                eachContact.vip__c = newAccount.vip__c;
            }
            update listContacts;
        }
        
   }

      //do not allow user to delete active account
      public static void validateAccDelete(list<account> accTriggerOld) {
        //addError is allowed in trigger.new -> true for insert And Update.
        //for delete addError is allowed in trigger.old ONLY

        for (account oldAcc : accTriggerOld) {
            if (oldAcc.active__c == 'yes') {
                oldAcc.addError('you cannot delete');
                
            }
            
        }
        
   }

   public static void sendAccEmail(List<Account> accTriggerNew){
    list<messaging.SingleEmailMessage> listEmailMsg = new list<messaging.SingleEmailMessage>();
    for (account newAcc : accTriggerNew) {
        //email address we want to sennd
        list<string> emailAddresses = new list<string>();
        emailAddresses.add(UserInfo.getUserEmail());
        //email message
        messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();

        //to adress
        msg.setToAddresses(emailAddresses);
        //subject
        msg.setSubject('account restored  '+newAcc.Name);
        //body
        msg.setPlainTextBody('coooomooooonnnn');
        
        listEmailMsg.add(msg);
        
    }
    Messaging.sendEmail(listEmailMsg);
   


   }

   

}