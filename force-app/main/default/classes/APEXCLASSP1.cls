public class APEXCLASSP1 {
    public static void sec(){
        
        List<Account> acclist = [SELECT Id, Name FROM Account WHERE CreatedDate = THIS_YEAR];
        List<Opportunity> oppcreate = new List<Opportunity>();	
        
        
        if(acclist.size()>0){
        for(Account acc: acclist){
            Opportunity opp = new Opportunity();
            opp.Name = acc.Name;
            opp.CloseDate = System.TODAY();
            opp.StageName = 'Prospecting';
            opp.AccountId = acc.Id;
            oppcreate.add(opp);
        }
        }
        
        if(oppcreate.size()>0){
            insert oppcreate;
        }
    }
}