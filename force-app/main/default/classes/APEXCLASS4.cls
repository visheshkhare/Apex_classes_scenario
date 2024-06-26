public class APEXCLASS4 {
    public static void main(){
        List<Account> acclist = [SELECT Id, Name, (SELECT Id, FirstName, LastName FROM Contacts) FROM Account 
                                 WHERE CreatedDate = THIS_MONTH];
        
        List<Account> acc1 = new List<Account>();
        
        if(acclist.size()>0){
            for(Account acc: acclist){
            acc.total_contact__c = acc.Contacts.size();
                
                acc1.add(acc);
            
        }
        
    }
        
        if(!acclist.isEmpty()){
            update acclist;
        }
}
}