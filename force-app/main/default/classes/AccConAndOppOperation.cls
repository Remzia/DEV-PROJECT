public  class AccConAndOppOperation {
   public static List<Account> fetchAllAccounts(){
       List<Account> myListAccount = new List<Account>();
       myListAccount = [SELECT Id, Name, AnnualRevenue, type, AccountSource FROM Account];
       system.debug('My list Account: ' + myListAccount );
       return myListAccount;
   }
   
   public static void findOpp(string stageOppName, string leadSourceOppName){

    List<Opportunity> myListOpp = new List<Opportunity>();
    myListOpp = [SELECT Id, Name FROM Opportunity WHERE StageName =: stageOppName AND leadSource =: leadSourceOppName];
       system.debug('My list is ' + myListOpp);
       
   }
   public static void PrintAccAndOppDetail(){
       List<Account> myListAcc = new List<Account>();
       myListAcc = [SELECT Id, Name, AnnualRevenue, (SELECT Id, Name, Amount FROM Opportunities WHERE StageName = 'Closed Won') FROM Account WHERE Type = 'Customer - Direct'];

       for(Account eachAcc: myListAcc){
           system.debug('My Account Name ' + eachAcc.Name + 'and its annual revenue is ' + eachAcc.AnnualRevenue);
           
           for(Opportunity eachOpp: eachAcc.Opportunities){
           system.debug('My Opportunity Name ' + eachOpp.Name + 'and its amount is ' + eachOpp.Amount);
           }
        }
    }

   public static Account createAcc(string myName, decimal myAnnRev, string myType){
        Account myAcc = new Account();

        if(myName != null && myName != ''){
            myAcc.Name = myName;
            myAcc.AnnualRevenue = myAnnRev;
            myAcc.Type = myType;

            insert myAcc;
        }else{
            system.debug('Enter account name....');
        }
            return myAcc;
        }

//         1. Prepare a method which returns the sum of all the closed won opportunities Amount present in 
// the org. 
// 2. Prepare a method which will return all the Accounts for which at least a closed Won 
// Opportunity is present. Make it dynamic if we want to bring account for other opportunity 
// stageNames. 
// 3. Prepare a method which will return all the Accounts for which at least a contact is present.



// public static decimal sumClosedWonOpp(){
//      List<Opportunity> listSumClosedsumOpp = [SELECT Id, Name, Amount FROM Opportunity WHERE Amount !=null AND StageName = 'closed Won'];
        
//     decimal sum = 0;

//     for(Opportunity sumOpp : listSumClosedsumOpp){
//         sum += sumOpp.Amount;
//     }
//         System.debug(sum);
//         return sum;
//     }
// public static list<Account> allAcc(string stgName){
//     List<account> allAccList = new List<account>();
//     allAcclist = [SELECT Id, Name FROM Account WHERE Id IN (SELECT AccountId FROM Opportunity WHERE StageName =: stgName) ];
//     System.debug(allAccList);
//     return allAccList;
// }   
// public static List<account> accCont(){
//     // list<Account> listAcc = [SELECT Id, Name, (SELECT Id FROM contacts WHERE accountId!=null and accountId = '') FROM Account];
//     // system.Debug(listAcc);
//     list<Account> listAcc =[SELECT id, name FROM Account WHERE ID IN (SELECT AccountId FROM contact)];
//          System.debug(listAcc);
//          return listAcc;
//      }

// public static void createCont(id myAccId){
//     account acc = [SELECT Id, Name FROM Account WHERE Id =: myAccId];
//     contact cnt = new contact();
//     cnt.LastName = acc.Name;
//     cnt.AccountId = acc.Id;
//     System.debug(cnt.LastName+ '  adinda contact olusturuldu...');
//     insert cnt;
// } 

// public static void oppTop10(){
//     List<Opportunity> oppTop10List = [SELECT Id, Name, Amount,  Description FROM Opportunity ORDER BY Amount DESC Nulls Last LIMIT 10];
//     for( Opportunity opp: oppTop10List){
//         opp.Description = 'This is one of the top 10 opportunity.';
//         System.debug('calisti....');
//     }
//    update oppTop10List;
// }







// write methods in the AccConAndOppOperations for each of the following requirements: 
// 1. Prepare a method which returns the sum of all the closed won opportunities Amount present in 
// the org. 
// 2. Prepare a method which will return all the Accounts for which at least a closed Won 
// Opportunity is present. Make it dynamic if we want to bring account for other opportunity 
// stageNames. 
// 3. Prepare a method which will return all the Accounts for which at least a contact is present.

public static decimal AccConAndOppOperations(){
  
    list<opportunity> myListOpp = [SELECT Id, Name, StageName, Amount FROM Opportunity WHERE Amount != null AND StageName = 'Close Won '];
    decimal sum = 0;
    for(Opportunity eachAmount: myListOpp){
        sum =+ eachAmount.amount;
    }
    System.debug('Total amount is ' + sum + ' on opportunity.');
    return sum;
    }

public static List<Account> returnSomeAcc(string stgName){
    List<account> myListAcc = new List<account>();
    myListAcc =[SELECT Id, Name FROM Account WHERE Id IN (SELECT AccountId FROM Opportunity WHERE StageName =: stgName ) ];
    System.debug(myListAcc);
    return myListAcc;
    } 

public static List<Account> returnAccWithContact(){
        List<Account> myAllAccWithContact = new List<Account>();
        myAllAccWithContact =[SELECT Id, Name FROM Account WHERE Id IN (SELECT AccountId FROM Contact)];
        System.debug(myAllAccWithContact);
        return myAllAccWithContact;  
    }
//     Find out all the Account which have no contacts attached to them. Add a contact for each one of 
//     them and update the last Name of contact with the Name field of account.
public static void findAcc(){
    List<account> noContactAcc = [SELECT id, Name FROM Account WHERE Id NOT IN (SELECT accountId FROM contact)];

    List<Contact> myContactList = new List<Contact>();
    
   
  for(account  eachAcc: noContactAcc){
     contact newContact = new contact();
     newContact.AccountId = eachAcc.Id;
     newContact.LastName = eachAcc.Name;
    
     myContactList.add(newContact);

     }
      system.debug(myContactList);
      insert myContactList;
   }

}



// ....................................................................................................

// List<account> myAcc = [Select Id, Name FROM Account WHERE name like : '%'+ keyChar];
//     List<contact> myCont = new List<contact>();
//     contact cnt = new contact();

//     if(!myAcc.isEmpty()){
//         for(account eachAccount: myAcc){
//             for(contact eachContact: eachAccount.contacts){
                
//                 cnt.LastName= (eachContact.Name + ' copied from account');         

//                 cnt.accountId=eachAccount.Id; 
                  
//                  System.debug(cnt.LastName);
//                  myCont.add(cnt);
//             }
//         }


