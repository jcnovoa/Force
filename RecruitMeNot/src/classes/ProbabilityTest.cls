@istest
public class ProbabilityTest {

    @istest
    public static void TestGetProbability()
    {
        Probability noProb = new Probability();
        Test.startTest();
        noProb.GetProbability();
        Test.stopTest();
    }
}