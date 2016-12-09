@istest
public class TestEmailChange {
    public static List<Candidate__c> initTestCandidates(string prefix, Integer count)
    {
    	List<Candidate__c> results = new List<Candidate__c>();
	    for(Integer x=0; x<count; x++)
	    {
				results.add(new Candidate__c(Name = prefix + '_' + string.valueOf(x),
											E_Mail__c = prefix + '_' + string.valueOf(x) + 'prophezee.com'));
	    }
	    return(results);
    }
    
    public static User InitTestUser(String username, String thealias)
    {
    	User u = new User(Alias = thealias,
    	Email = username + '@prophezee.com',
    	FirstName = 'Joe', LastName= username,
    	TimeZoneSidKey = 'America/Los_Angeles',
    	UserName = username + '@prophezee.com',
    	UserPermissionsMarketingUser = true, LocaleSidKey = 'en-US',
    	EmailEncodingKey = 'UTF-8', LanguageLocaleKey = 'en-US');
    	u.ProfileID = userInfo.getProfileId();
    	return u;
    }
}