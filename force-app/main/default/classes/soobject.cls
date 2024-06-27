public class soobject {
    public void main(){
        /*Contact con = [SELECT ID, Name, Phone,Email FROM Contact WHERE Name= 'Vishesh Khare'];
        Account acc = [SELECT ID, Name, Phone FROM Account WHERE Name= 'Rishiii'];
        con.Email = 'kharevishesh03@gmail.com';
    
        

        Account acc1 = new Account(Name = 'Khushi singh',Phone = '9899227256');
        
        Contact con2 = [SELECT ID, FirstName, LastName, Phone,Email, Account.Phone FROM Contact WHERE FirstName= 'Vishesh' AND LastName='Khare'];
        
        con2.Phone='78965412321';
        con2.Account.phone = '58415';*/
            
        
        
        Account accc = new Account(Name='techo byte', Phone = '789654521');
        Contact conn = new Contact(LastName='singha', Email='visheshakhare@gmail.com', AccountId = accc.Id);
       
        conn.AccountId = accc.Id;
        update conn;
        
        
        
    }
}