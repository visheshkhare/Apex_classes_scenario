public class StringListTest {
    public static List<String> generateStringList(Integer length) {
        // Initialize the result list
        List<String> resultList = new List<String>();
        
        // Loop from 0 to length - 1
        for (Integer i = 0; i < length; i++) {
            // Add formatted string to the list
            resultList.add('Test ' + i);
        }
        
        // Return the result list
        return resultList;
    }
}