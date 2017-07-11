@isTest
public class ForLogin_UT {
    
    static testmethod void validatelogin()
    {

    Userinfo__c uobj=new Userinfo__c();
    uobj.Uname__c = 'Nive';
    uobj.Passwordd__c = 'Nive';
    INSERT uobj;
    RedirecttoDetail_AC robj=new RedirecttoDetail_AC(); 
          robj.name = 'Nive';
          robj.password = 'Nive';
          robj.RedirecttoDetail_M();
        
    }
    static testmethod void displaytest()
    {
        RedirecttoDetail_AC robj=new RedirecttoDetail_AC();
        Userinfo__c uobj = new Userinfo__c();
        robj.name='Nive';
        robj.email='nive@gmail.com';
        robj.password='Nive';
        uobj.Uname__c=robj.name;
        uobj.Email__c= robj.email;
       uobj.Passwordd__c=robj.password;
       Test.startTest();
        Test.setCurrentPageReference(new PageReference('Page.LoginDetail_VF'));
        Apexpages.currentPage().getparameters().put('id',uobj.id);
       System.debug(Apexpages.currentPage().getparameters().put('id',uobj.id));
         robj.displayData(); 
        
    }
     static testmethod void savetest()
    {
         RedirecttoDetail_AC robj=new RedirecttoDetail_AC();
         Userinfo__c uobj = new Userinfo__c();
         test.startTest();
        robj.name='Nive';
        robj.email='nive@gmail.com';
        robj.password='Nive';
        robj.Save_M();
           System.assertEquals('Nive',robj.name);
             PageReference pgeref = new PageReference('https://c.ap4.visual.force.com/apex/LoginUserDetail_VF');
        Test.setCurrentPage(pgeref);
         pgeref.getParameters().put('id',uobj.id);
          robj.name = 'Nive';
          robj.password = 'Nive';
          robj.RedirecttoDetail_M();
         
    }
    static testmethod void canceltest()
    {
        RedirecttoDetail_AC robj=new RedirecttoDetail_AC();
        robj.Cancel_M();
    }
     static testmethod void dtest()
    {
        RedirecttoDetail_AC robj=new RedirecttoDetail_AC();
        Test.startTest();
        robj.display();
    }
    static testmethod void edittest()
    {
        RedirecttoDetail_AC robj=new RedirecttoDetail_AC();
        Test.startTest();
        robj.Edit_M();
    }
     static testmethod void etest()
    {
        Test.startTest();
        RedirecttoDetail_AC robj=new RedirecttoDetail_AC();
    }
}