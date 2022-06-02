trigger CaseTrigger on Case (before insert, before update, after insert, after update) {
   //   if(trigger.isAfter && trigger.isInsert ){
   //      CaseTriggerHandler.CreateCaseWithOrigin(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);
   //    }
      if(trigger.isBefore && trigger.isInsert){
         CaseTriggerHandler.setStatusAndPriority(trigger.New, trigger.OldMap);
      }
}

    //    System.debug('We are in the after triggers.');

    // if(trigger.isAfter)  {
    //     System.debug('We are in the after triggers');
    // }
    // if(trigger.isBefore){
    //     System.debug('we are in the before triggers');
    // }
    // if(trigger.isBefore && trigger.isUpdate){
    //     System.debug('we are in the before-update triggers.');
    // }
    // if(trigger.isBefore && trigger.isInsert){
    //     System.debug('We are in the before-insert triggers.');
    // }
    // if(trigger.isAfter && trigger.isUpdate){
    //     System.debug('We are in the after-update triggers.');
    // }
    // if(trigger.isAfter && trigger.isInsert){
    //     System.debug('We are in the after-insert triggers.');
    // }
    // if(trigger.isAfter && trigger.isInsert){
    //     for(Case eachCase: trigger.new){
    //         System.debug('Case# ' + eachCase.CaseNumber + 'was created with id ' + eachCase.Id+ 'on ' + eachCase.CreatedDate );
    //     }
    // }
    //}

