public class CaseTriggerHandler {
    // public static void CreateCaseWithOrigin(List<Case> triggerNew, List<Case> triggerOld, map<id, Case> triggerNewMap, map<id, Case> triggerOldMap) {
        // List<Case> myListCase = new List<Case>();
        //  List<Case> triggerNew = trigger.New();
        //  Case cs = new Case();
        // cs.origin = 'email';
        // triggerNew.add(cs);
        
//         if(triggerOldMap == null ){   
//             for(Case eachCase: triggerNew){
//                 Case cs = new Case(id, eachCase.Origin == 'email');
//             triggerNew.add(cs);
//                //if(eachCase.Origin == 'email'){
//                 eachCase.status = 'New';
//                 eachCase.Priority = 'Medium';
//                 triggerNew.add(eachCase);
//             //}
//                 if(!triggerNew.isEmpty()){
//                     insert triggerNew;
//                 }
//             }
//     }
// }
//}


// ............Vitap in cozumu................
public static void upDateCaseDetails(List<Case> TriggerNew){
    for (Case eachCase : triggerNew){
        if(eachCase.Origin == 'Email'){
            eachCase.Status = 'New';
            eachCase.Priority = 'Medium';
        }
    }
}