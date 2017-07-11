@istest
public class unittest_AC {
    
    static testmethod void test1()
    {
        actionforCustomButton_AC aobj=new actionforCustomButton_AC();
        String linkurl= aobj.login().getUrl();
        if(linkurl=='https://c.ap4.visual.force.com/apex/Forlogin_VF')
        {
            System.debug('Login Url');
        }
        else 
        {
            System.debug('Not a perfect URL');
        }
         
  }
    static testmethod void test2()
    {
        actionforCustomButton_AC aobj=new actionforCustomButton_AC();
        String signupurl=aobj.CustomButonAction().getUrl();
        system.assertEquals(signupurl,'https://c.ap4.visual.force.com/apex/ForSignup_VF');
    }
    static testmethod void test3()
    {
        actionforCustomButton_AC aobj=new actionforCustomButton_AC();
        String logindeturl=aobj.loginDetail().getUrl();
        system.assertEquals(logindeturl,'https://ap4.salesforce.com/a01');
    }
    static testmethod void edittest()
    {
    ForEdit_AC eobj=new ForEdit_AC();
        eobj.Edit_M();
    }
}