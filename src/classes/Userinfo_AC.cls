public class Userinfo_AC {
    List<Userinfo__c> us=new list<Userinfo__c>();
    public Userinfo__c us1 {get;set;}
    public String Name{get;set;}
    public String Password{get;set;}
    public string RetypePassword{get;set;}
    public string Email{get;set;}
    public List<Userinfo__c> usif;
    public String myid;
    public Userinfo_AC()
    {
        us1=new Userinfo__c();
    }
    public PageReference Save_M() 
    {
        PageReference home;
       // System.debug('name of the username-------------->'+Name);
        List<Userinfo__c> usif=[select id from Userinfo__c where Uname__c =: Name];
        
               System.debug('size of the list ==================>'+usif.size());
              if(usif.size()>0)
            {
                ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.WARNING,'Username already exists'));
                               
            }
            else
            {   us1.Uname__c = Name;
                us1.Passwordd__c = Password;
                us1.Email__c = Email;
                us.add(us1);   
                insert us1;
        home=new PageReference('https://c.ap4.visual.force.com/apex/FirstPage_VF');
        home.setRedirect(true);
        return home;
            }
        return null;
    }
    public PageReference Cancel_M() {
        
        
        PageReference  clear=new PageReference('https://c.ap4.visual.force.com/apex/ForSignup_VF');
        clear.setRedirect(true);
        return clear;
    }
}