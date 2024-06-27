public class deleteclass {
    public static void main(){
        List<Account> accclist = [SELECT Id, Name, Phone FROM Account WHERE Phone = '1234567890'];
        
        if(!accclist.isEmpty()){
            delete accclist;
        }
        
    }

}