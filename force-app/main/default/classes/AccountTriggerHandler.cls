public  class AccountTriggerHandler {
//     public static void AnnualRevenueReduced( List<account> triggerNew, List<account> triggerOld, map<id, account> triggerNewMap, map<id, account> triggerOldMap) {
        
//         for(account eachAcc: triggerNew){
//             if(eachAcc.AnnualRevenue < triggerOldMap.get(eachAcc.id).AnnualRevenue ){
//                 eachAcc.AnnualRevenue.addError('Annual Revenue for an account cannot be reduced');
//             }
//         }

//     }
// }
//}
//..................................................................................................
//18 mayis carsamba odevi
// Whenever New Account Record is created then needs to create associated Contact Record 
// automatically. 
// account name as contact last name 
// account phone as contact phone 
// public static void AccountCreate(List<Account> triggerNew){
        
//     list<contact> contactList = new list<contact>();
    
//     for (account eachAcc : triggerNew) {
//          contact cn = new contact();
//          cn.LastName = eachAcc.Name;
//          cn.Phone = eachAcc.Phone;
//          cn.AccountId =eachAcc.Id;
//          contactList.add(cn);

//     }
//     if(!contactList.isEmpty()){
//     insert contactList;    
//     }
// }

//............................................................................
//18 Mayis Carsamba 2.odev
// Write a trigger on the Account when the Account is updated check all opportunities related to 
// the account. Update all Opportunities Stage to close lost if stage name not already set to close 
// won


// public static void AccountUpdate(List<Account> triggerNew){

//     //List<Opportunity> oppList = new list<Opportunity>();
    
//     list<opportunity> listOps = [SELECT id,name,stageName FROM Opportunity WHERE AccountId = :triggerNew AND stageName!='Closed Won' ];
    
//     if (!listOps.isEmpty()) {
//         for (opportunity eachOpp : listOps) {
//             eachOpp.StageName='Closed Lost';
//         }

//         update listOps;
//     }
// }

//..........................................................
//18 mayis 3 soru
// When Account Phone field is updated then make sure its related contacts should get updated as 
// below: 
// ➔  Old phone from account to otherPhone in contact 
// ➔  new phone from account to mobilePhone in contact.
    
    public static void AccPhoneUpdate(List<account> TriggerNew,
                                        List<account> TriggerOld,
                                        Map<id, account> TriggerOldMap,
                                        Map<id, account> TriggerNewMap){
List<Account> myAccList=[SELECT Id, Name, (SELECT accountId, OtherPhone, MobilePhone FROM Contacts) FROM Account WHERE Id IN (SELECT accountId FROM contact)];                                  
        List<Contact> updatedContList = new List<Contact>();
        
            for(Account eachAcc: myAccList){
                if(TriggerNewMap.get(eachAcc.Id).Phone != TriggerOldMap.get(eachAcc.Id).Phone){
                    // if(eachAcc.Phone != TriggerOldMap.get(eachAcc.Id).Phone){
                    for(contact eachCont: eachAcc.Contacts){
                        if(eachCont.accountId == eachAcc.Id){
                        eachCont.OtherPhone = TriggerOldMap.get(eachAcc.Id).Phone;
                        eachCont.MobilePhone = TriggerNewMap.get(eachAcc.Id).Phone;
                        updatedContList.add(eachCont);
                        }
                    }  
                }      
            }
            update updatedContList;
    }
}    

// ...............................................
// SEYMANIN COZUMU
// public static void AccountPhoneUpdate(list<account> triggerNew,
// map<id, account> NewMap,
// map<id, account> OldMap){

// set<id> setNewIds = new set<id>();
// for (account accNew : triggerNew) {
// Account accOld = OldMap.get(accNew.id);

// if (accOld.Phone != accNew.Phone) {
// setNewIds.add(accNew.Id);
// }
// }
// List<Contact> listCon =[SELECT accountId,name, otherPhone, MobilePhone FROM contact WHERE AccountId IN :setNewIds];
// if (listCon!=NULL && listCon.size() > 0) {
// for (contact conPhone : listCon) {
// conPhone.OtherPhone = OldMap.get(conPhone.AccountId).Phone;
// conPhone.MobilePhone = NewMap.get(conPhone.AccountId).Phone;
// }
// update listCon;   
// }

// }