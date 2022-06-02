trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    // if(trigger.isBefore && trigger.isUpdate){
    //     AccountTriggerHandler.AnnualRevenueReduced(trigger.New, trigger.Old, trigger.NewMap, trigger.oldMap);
    // }
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.AccPhoneUpdate(Trigger.New, Trigger.Old, Trigger.OldMap, Trigger.NewMap);
    }

}

