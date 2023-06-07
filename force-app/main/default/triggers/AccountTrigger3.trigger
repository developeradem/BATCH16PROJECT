



trigger AccountTrigger3 on Account ( before insert, after insert, before update, after update) {
    if(trigger.isAfter && trigger.isUpdate){
        integer websiteChange = 0 ;
        for(Id eachId : trigger.newMap.keySet()){

            Account oldAcc = trigger.oldMap.get(eachId);
            Account newAcc =trigger.newMap.get(eachId);

            if (oldAcc.Website != newAcc.Website){

                System.debug('for account '+newAcc.Name+ ' , new website is '+newAcc.Website);
                websiteChange++;
            }
        }
        System.debug(websiteChange);


    }







   /* List<account> newAccounts = Trigger.new;
    Map<id, account> newAccountsMap = Trigger.newMap;

    List<account> oldAccounts = Trigger.old;
    Map<id, account> oldAccountsMap = Trigger.oldMap;


    if (Trigger.isAfter && Trigger.isUpdate) {
        //set<id> allKeys = newAccountsMap.keySet();
        for (Id eachId : newAccountsMap.keySet()) {
            system.debug('account id is ' + eachId);
            account oldAcc = oldAccountsMap.get(eachId);
            account newAcc = newAccountsMap.get(eachId);

            system.debug('acc id: ' + eachId + ', old acc name is ' + oldAcc.Name + ', new acc name is ' + newAcc.Name);
        }

    }*/
}  




/*trigger AccountTrigger3 on Account ( before insert, after insert, before update, after update) {
    


    system.debug('----');
    //we can do this in Before Update also (since we are JUST printing we can do in any)
    if (Trigger.isAfter && Trigger.isUpdate) {

        for (account oldAcc : Trigger.old) {
            system.debug('old acc id: ' + oldAcc.Id + ', old acc name: ' + oldAcc.Name + 'old acc rating: ' + oldAcc.Rating);
        }
        
        List<account> newAccounts = Trigger.new;
        for (account newAcc : newAccounts) {
            system.debug('new acc id: ' + newAcc.Id + ', new acc name: ' + newAcc.Name + 'new acc rating: ' + newAcc.Rating);
        }
    }
} 
*/   