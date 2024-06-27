public class ContactUtility {
    public static void viewContacts(){
        List<Contact> listofContacts = [SELECT FirstName, LastName FROM Contact];
        
        
        system.debug(listofContacts);
        
    }

}