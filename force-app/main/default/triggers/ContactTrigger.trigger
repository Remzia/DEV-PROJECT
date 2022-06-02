trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
       if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactCreateForAcc(Trigger.New, Trigger.Old, Trigger.OldMap, Trigger.NewMap);
       }
}