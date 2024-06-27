public class APEXCLASS7 {
    public static void main(){
        List<Employee__C> emplist = [SELECT Id, Name, Phone__c, Account__r.Phone FROM Employee__C WHERE CreatedDate = THIS_WEEK];
        List<Employee__C> emp1 = new List<Employee__C>(); 
        if(!emplist.isEmpty()){
            
                for(Employee__C emp: emplist){
                    if(emp.Phone__c == NULL){
                    emp.Phone__c = emp.Account__r.Phone ;
                    emp1.add(emp);
                }
                
            }
        }
        
        if(!emp1.isEmpty()){
            update emp1;
        }
    }
}