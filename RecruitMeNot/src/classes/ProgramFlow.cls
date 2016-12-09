public class ProgramFlow {
	public static Integer emailCounter = 0;
	
	private void SendEmail()
	{
		emailCounter++;
		
		System.debug('queueing e-mail');
	}
    
    private void SendQueuedEMails()
    {
    	System.debug('sending e-mail queue');
    }
    
    public void HandleCandidateUpdateTrigger(List<Candidate__c> newList, Map<ID, Candidate__c> oldMap)
    {
    	for(Candidate__c ct: newList)
    	{
    		if(ct.OwnerId != oldMap.get(ct.ID).OwnerId)
    		{
    			System.debug('checking changes to e-mail');
    			SendEmail();
    		}
    	}
    	SendQueuedEMails();
    }
}