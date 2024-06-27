public class AccountHandler {
    public static Account insertNewAccount(String accountName) {
        Account newAccount = new Account(Name = accountName);
        
        try {
            insert newAccount;
            
            return newAccount;
        } catch (DmlException e) {
            return null;
        }
    }
}