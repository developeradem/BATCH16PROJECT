trigger ContactTrigger on Contact   (before insert, after insert, before update, after update) {
    if (Trigger.isBefore && Trigger.isUpdate) {
        //call handler method to validate contact update
        ContactTriggerHandler.validate1(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        ContactTriggerHandler.validate2(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        
    }


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
    /*  //tgis will be true in before insert and update
    if (trigger.isBefore){
        System.debug('contact before trigger');
        if(trigger.isInsert){
            System.debug('contact before insert trigger');
        
        }

        if (trigger.isUpdate){
            System.debug('contact before update trigger');
        }
    }


    if (trigger.isAfter){
        System.debug('contact after trigger');
        if(trigger.isInsert){
            System.debug('contact after insert trigger');
        
        }

        if (trigger.isUpdate){
            System.debug('contact after update trigger');
        }
    }*/


}