public  class InActiveOppsTasksCreationBatch implements Database.Batchable<SObject>, database.stateful {
    public integer count = 0;

    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator q1 = database.getQueryLocator([SELECT id,StageName,LastModifiedDate  FROM Opportunity WHERE LastModifiedDate<LAST_N_DAYS:7 AND (StageName!='Closed Won' OR StageName!='Closed Lost')]);
        system.debug(q1);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
        list<Task> TaskList = new list<Task>();
        for (opportunity eachOpp : scope) {
            Task tsk = new Task();
            tsk.Subject='other';
            tsk.Description='Reminder – Please act on the Opportunity';
            tsk.WhatId=eachOpp.Id;
            tsk.OwnerId=eachOpp.OwnerId;
            tsk.Status='in progress';
            if (eachOpp.closeDate <date.today()) {
                tsk.ActivityDate = date.today();
            } else {
                tsk.ActivityDate = eachOpp.closeDate.addDays(-2);              
            }         
            TaskList.add(tsk);
            count++;
        } 
        if (!TaskList.isEmpty()) {
            insert TaskList; 
        }
    } 
    public void finish(Database.BatchableContext bc){
        system.debug('total number of created tasks = ' +count);
    }
}