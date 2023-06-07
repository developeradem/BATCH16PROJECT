/*trigger AccountTrigger2 on Account (before insert, after insert, before update, after update) {
  
    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('====BEFORE INSERT=====');
        system.debug('before insert trigger.old: ' + trigger.old);
        system.debug('before insert trigger.new: ' + trigger.new);
        system.debug('before insert trigger.oldMap: ' + trigger.oldMap);
        system.debug('before insert trigger.newMap: ' + trigger.newMap);
    }
    if(Trigger.isAfter && Trigger.isInsert){
        system.debug('====AFTER INSERT=====');
        system.debug('after insert trigger.old: ' + trigger.old);
        system.debug('after insert trigger.new: ' + trigger.new);
        system.debug('after insert trigger.oldMap: ' + trigger.oldMap);
        system.debug('after insert trigger.newMap: ' + trigger.newMap);
    }

    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('====BEFORE UPDATE=====');
        system.debug('before update trigger.old: ' + trigger.old);
        system.debug('before update trigger.new: ' + trigger.new);
        system.debug('before update trigger.oldMap: ' + trigger.oldMap);
        system.debug('before update trigger.newMap: ' + trigger.newMap);
    }
    if(Trigger.isAfter && Trigger.isUpdate){
        system.debug('==== AFTER UPDATE =====');
        system.debug('after update trigger.old: ' + trigger.old);
        system.debug('after update trigger.new: ' + trigger.new);
        system.debug('after update trigger.oldMap: ' + trigger.oldMap);
        system.debug('after update trigger.newMap: ' + trigger.newMap);
    }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    /* if(trigger.isBefore){
    System.debug('before update');
    }

    if(trigger.isAfter){
    System.debug('after update');
    }

}*/



/*if(Trigger.isBefore && Trigger.isInsert){
    
    system.debug('before insert trigger.old: ' + trigger.old);
    system.debug('before insert trigger.new: ' + trigger.new);
}
if(Trigger.isAfter && Trigger.isInsert){
    system.debug('after insert trigger.old: ' + trigger.old);
    system.debug('after insert trigger.new: ' + trigger.new);
}

if(Trigger.isBefore && Trigger.isUpdate){
    system.debug('before update trigger.old: ' + trigger.old);
    system.debug('before update trigger.new: ' + trigger.new);
}
if(Trigger.isAfter && Trigger.isUpdate){
    system.debug('after update trigger.old: ' + trigger.old);
    system.debug('after update trigger.new: ' + trigger.new);
}*/




}*/