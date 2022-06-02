public class ContactTriggerHandler {
    public static void contactCreateForAcc(List<contact> TriggerNew,
                                            List<contact> TriggerOld,
                                            Map<id, contact> TriggerOldMap,
                                            Map<id, contact> TriggerNewMap) {
        Account Acc = [Select Id, Name, Phone FROM Account Limit1];
        contact cnt = new contact();

        cnt.OtherPhone = Acc.Phone;
        cnt.AccountId = Acc.Id;
         update cnt;

    }
}
