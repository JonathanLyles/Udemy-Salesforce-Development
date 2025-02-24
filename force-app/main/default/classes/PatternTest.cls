/**
 *@description Tests for Pattern Class
 *@author Jonathan Lyles
 *@created 2025-02-23 
 */
@isTest
private class PatternTest {
    /**
     * @description Tests the constructor
     */
    @isTest
    static void PatternTest() {
        Pattern myPattern = new Pattern(5);
        Assert.areNotEqual(null, myPattern, 'There should be an object of type Pattern instantiated');
        Assert.areEqual(5,myPattern.num,'Expected value of num: 5, actual value: ' + myPattern.num);
    }
    /**
     * @description Tests the constructor correctly handles a negative integer
     */
    @isTest
    static void negativePatternTest(){
        Pattern myPattern = new Pattern(-5);
        Assert.isTrue(myPattern.num >= 0, 'num cannot be a negative value');
    }
    /**
     * @description Tests if the correct pattern is created
     */
    @isTest
    static void makePatternTest(){
        List<String> verificationPattern = new List<String>{'*\n','**\n','***\n'};
        Pattern test = new Pattern(3);
        List<String> testPattern = test.makePattern();
        Assert.areNotEqual(null, testPattern, 'testPattern should not be null');
        Assert.areEqual(verificationPattern, testPattern, 'Both patterns should be the same'); 
    }
}