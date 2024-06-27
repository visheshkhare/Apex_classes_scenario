public class APEXCLASS8 {
    public static void main(){
        List<Account> acclist = [SELECT Id,Name, Phone, (SELECT Id, Phone FROM Contacts )FROM Account WHERE CreatedDate = LAST_WEEK];
        List<Contact> conlist = new List<Contact>();
        
        if(!acclist.isEmpty()){
            for(Account acc: acclist){
                if(acc.phone != NULL){
                    for(Contact con: acc.Contacts){
                        Contact conrec = new Contact();
                        conrec.Id = con.Id;
                        conrec.Phone = acc.Phone;
                        conlist.add(conrec);
                    }
                }
            }
        }
        
        if(!conlist.isEmpty()){
            update conlist; 
        }
    }
}