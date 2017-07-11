public class RedirecttoDetail_AC 
{
    public String name{get;set;}
    public String password{get;set;}
    public String email{get;set;}
    public String dob{get;set;}
    public String address{get;set;}
    public boolean Edit_Enable{get;set;}
    public list<Userinfo__c> uobj1;
    public RedirecttoDetail_AC()
    {
        Edit_Enable=true;
        
    }
    public void Edit_M()
    {       
        Edit_Enable=false;
      
    }  
    
    public PageReference RedirecttoDetail_M()
    {
        PageReference detail;
        String myid=ApexPages.CurrentPage().getparameters().get('id');
        list<Userinfo__c> uobj=[select id,Name,Uname__c,Passwordd__c from Userinfo__c];
        for(Userinfo__c	ua:uobj)
        {
           if(ua.Uname__c== name && ua.Passwordd__c==password)
            {
                detail=new PageReference('https://c.ap4.visual.force.com/apex/Detailpage_VF?id='+ua.id);
                detail.setRedirect(true);
                return detail;   
           }
           else
            {
                ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.Warning,'Not a Registered User'));
                
            }
            
        }
        return detail;
    }
    public PageReference Cancel_M()
    {
        PageReference cancel=new PageReference('https://c.ap4.visual.force.com/apex/Forlogin_VF');
        cancel.setRedirect(true);
        return cancel;
    }
    public void displayData()
    {
        String recordid=ApexPages.CurrentPage().getparameters().get('id'); 
        //System.debug(recordid);
        uobj1=[select id ,Name,Uname__c,Email__c,DOB__c,Address__c from Userinfo__c where id =: recordid];
        for(Userinfo__c usinfo:uobj1)
        {
            name=usinfo.Uname__c;
            email=usinfo.Email__c;
            dob=String.valueOf(usinfo.DOB__c);
            address=usinfo.Address__c;
            
        }
    }
    public List<Userinfo__c> display()
    {
        return uobj1;
    } 
    public PageReference Save_M()
    {
        PageReference save;
        String recordid=ApexPages.CurrentPage().getparameters().get('id'); 
        uobj1=[select id,Name,Uname__c,Email__c,DOB__c,Address__c from Userinfo__c where id=:recordid];
        for(Userinfo__c ua:uobj1)
        {
            String dob1 =String.valueOf(dob);
          // Date newDate=dob1;
            ua.DOB__C=date.parse(dob1);
            System.debug(ua.DOB__c);
            ua.Address__c=address;
            save=new PageReference('https://c.ap4.visual.force.com/apex/Detailpage_VF?id='+recordid);
            save.setRedirect(true);   
        }
        update uobj1;
        return save;
    }              
             
}