trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update) {
     if(trigger.isBefore && trigger.isUpdate){
        OpportunityTriggerHandler.CanNotChangeStatus(trigger.New, trigger.Old, trigger.NewMap, trigger.oldMap);
     }
}