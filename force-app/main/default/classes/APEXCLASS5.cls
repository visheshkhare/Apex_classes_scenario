public class APEXCLASS5 {
    public static void main(){
        List<Contact> conlist = [SELECT Id, Name, Phone, Account.Phone FROM CONTACT WHERE AccountId != NULL AND CreatedDate = LAST_WEEK];
        List<Contact> con1 = new List<Contact>(); 
        if(conlist.size()>0){
            for(Contact con: conlist){
                if (con.Phone == null) {
                    con.Phone = con.Account.Phone;
                    con1.add(con);
                }
            }
        }
        if(con1.size()>0){
            update con1;
                        }        
        }
}