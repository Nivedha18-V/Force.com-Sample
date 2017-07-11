public class actionforCustomButton_AC {
    public PageReference CustomButonAction()
    {
      PageReference signup=new PageReference('https://c.ap4.visual.force.com/apex/ForSignup_VF');
        signup.setRedirect(true);
        return signup;
    }
    public PageReference login()
    {
      PageReference login=new PageReference('https://c.ap4.visual.force.com/apex/Forlogin_VF');
      login.setRedirect(true);
      return login;
    }
    public PageReference loginDetail()
    {
        PageReference logindetail=new PageReference('https://ap4.salesforce.com/a01');
        return loginDetail;        
    }
}