public class APEXCLASS3 {
    public static void main(){
        
    List<Opportunity> opplist = [SELECT Id, Name, StageName FROM Opportunity WHERE StageName = 'Closed Won' OR StageName ='Closed Lost'];
    
    List<Opportunity> opp1 = new list<Opportunity>();
    
        
        system.debug(opplist);
    if(opplist.size() > 0){
            for(Opportunity opp : opplist){
                if(opp.StageName == 'Closed Won'){
                    opp.Description = 'Opportunity is Closed Won';
                    opp1.add(opp);
                }
                else if(opp.StageName == 'Closed Lost'){
                    opp.Description = 'Opportunity is Closed lost';
                    opp1.add(opp);
                }
            }
    }
        
        if(opp1.size()>0){
            update opp1;
        }
}
}