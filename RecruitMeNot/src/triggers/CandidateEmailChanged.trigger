trigger CandidateEmailChanged on Candidate__c (after update) {
    ProgramFlow pf = new ProgramFlow();
    pf.HandleCandidateUpdateTrigger(trigger.new, trigger.oldMap);
}