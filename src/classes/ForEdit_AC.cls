public class ForEdit_AC 
{
    public String name{get;set;}
    public String password{get;set;}
    public String email{get;set;}
    public Date dob{get;set;}
    public String address{get;set;}
    public String currentRecordId {get;set;}
   public Userinfo__c u1{get;set;}
   public list<Userinfo__c> uobj;
    public ForEdit_Ac()
    {
       Boolean name=Boolean.valueOf('False');
       Boolean email=Boolean.valueOf('False');
       Boolean dob=Boolean.valueOf('False');
        Boolean address=Boolean.valueOf('False');
   }
    public PageReference Edit_M()
    {
        PageReference edit=new PageReference('https://c.ap4.visual.force.com/apex/Detailpage_VF');
        edit.setRedirect(true);
        Boolean name=Boolean.valueOf('True');
        Boolean email=Boolean.valueOf('True');
        Boolean dob=Boolean.valueOf('True');
        Boolean address=Boolean.valueOf('True');
        return edit;
    }
      
}