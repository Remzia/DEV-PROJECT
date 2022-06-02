public  class OpportunityTriggerHandler {
    public static void CanNotChangeStatus(List<opportunity> triggerNew, List<opportunity> triggerOld, map<id, opportunity> triggerNewMap, map<id, opportunity> triggerOldMap) {
      
        set<id> myIds = triggerNewMap.keySet();
        for(id eachId: myIds){

            if(triggerNewMap.get(eachId).StageName != triggerOldMap.get(eachId).StageName){
                if(triggerNewMap.get(eachId).StageName == 'Closed Won' || triggerNewMap.get(eachId).StageName == 'Closed Lost'){

                    triggerNewMap.get(eachId).Status__c.addError('You can not change status of Opportunity');
                }
            }
        }
    }
}
