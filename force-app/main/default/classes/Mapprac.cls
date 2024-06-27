public class Mapprac {
    public void main(){
        List<Account> ACCLIST = [SELECT ID, Name FROM Account];
        Map<ID, Account> idtoaccmap = new Map<ID, Account>(ACCLIST);
        System.debug(idtoaccmap);
        
        Map<Account, List<Contact>> acctoconmap = new Map<Account, List<Contact>>();
        system.debug(acctoconmap);
    }
}