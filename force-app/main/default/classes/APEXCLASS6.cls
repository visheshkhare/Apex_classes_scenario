public class APEXCLASS6 {
    public static void main(){
        
        List<Account> acclist = [SELECT Id, Total_Salary__c, Name, (SELECT Id, Salary__c FROM Employees__r) FROM Account WHERE CreatedDate = THIS_YEAR];
        
        if(!acclist.isEmpty()){
            for(Account acc: acclist){
                integer totsal =0;
                for(Employee__c emp: acc.Employees__r){
                    totsal = totsal + (Integer)emp.Salary__c ;
                    
                }
                acc.Total_Salary__c = totsal;
            }
        }
        if(!acclist.isEmpty()){
            update acclist;
        }
    }
}