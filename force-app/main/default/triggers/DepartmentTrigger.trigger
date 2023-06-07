trigger DepartmentTrigger on Department__c (before insert, after insert) {
    //create related employee
    if(trigger.isAfter && trigger.isInsert){
        DepartmentTriggerHandler.createDefaultEmpFuture(trigger.newMap.keyset());
    }


}