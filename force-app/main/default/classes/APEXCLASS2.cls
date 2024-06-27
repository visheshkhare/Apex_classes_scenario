public class APEXCLASSP2 {
    public static void main(){
        List<Account> acclist = [Select Id, Name, Phone FROM Account WHERE CreatedDate = THIS_WEEK];
        
        if(acclist.size()>0){
            for(Account acc: acclist){
                acc.Phone='1234567890';
                }
        }
        if(acclist.size()>0){
            update acclist;
        }
    }
}