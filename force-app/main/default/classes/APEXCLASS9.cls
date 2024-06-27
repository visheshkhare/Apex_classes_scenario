public class APEXCLASS9 {
    public static void main(){
        
        List<Account> acclist = [SELECT Id,Name, Phone FROM Account WHERE CreatedDate = LAST_WEEK];
        
        MAP<ID, Account> newmap = new MAP<ID, Account>(acclist);
        
        List<Contact> conlist = [SELECT Id, AccountId, Phone FROM Contact WHERE AccountId IN: newmap.keyset()];
        List<Contact> con2 = new List<Contact>();
        
        if(!conlist.isEmpty()){
                    for(Contact con: conlist){
                        Contact conrec = new Contact();
                        conrec.Id = con.Id;
                        conrec.Phone = newmap.get(con.AccountId).Phone;
                        con2.add(conrec);
            }
        }
        
        if(!conlist.isEmpty()){
            update con2; 
        }
    }
}