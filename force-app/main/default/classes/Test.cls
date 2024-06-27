public class Test {
    public void main() {
        List<String> newStr = new List<String>{'vishesh', 'krisha', 'harshit', 'vishesh'};
        System.debug(newStr);
        integer size = newStr.size();
        system.debug(size);
        
        Set<string> newstr1 = new Set<string>();
        
        //list to set
        for(integer i=0; i<size; i++){
            newstr1.add(newstr[i]);
        }	
        
        //contain method
        system.debug(newstr1.contains('vishesh'));
        
        //containall
        system.debug(newstr1.containsAll(newstr));
        
        
        system.debug(newstr1);
        
        
        
    }
}