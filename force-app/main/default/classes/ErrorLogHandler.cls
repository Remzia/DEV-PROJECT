public  class ErrorLogHandler {
    public static void insertErrorLog(string processName, string details, Datetime LongDateTime){
        List<Error_Log__c> myList = new List<Error_Log__c>();

        Error_Log__c  myErrorLog = ;
        myErrorLog.Process_Name__c = processName;
        myErrorLog.Log_Details__c = details;
        myErrorLog.Log_Date_Time__c = LongDateTime;
        myList.add(myErrorLog);

        if(!myList.IsEmpty){
            insert myList;
        }
    }
}
