public class PropertyUtility {
    public static void newListedProperties() {
        List<Property__c> newPropList = [SELECT Name, broker__r.email__c, Days_on_Market__c 
            FROM Property__c 
            WHERE days_on_market__c <=30 ];

        for (Property__c prop : newPropList) {
            String propEmail = prop.Name + ' : ' + prop.broker__r.email__c;
            
            System.debug(propEmail);
        }
    }
}