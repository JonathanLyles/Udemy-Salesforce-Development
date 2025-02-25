/**
 * @description Tests for PolymorphismExamples class
 */
@isTest
private class PolymorphismExamplesTest {
    /**
     * @description Tests constructor with no parameters
     */
    @isTest
    static void PolymorphismExamplesTest1() {
        PolymorphismExamples polyTest = new PolymorphismExamples();
        Assert.areEqual('I have no arguments', polyTest.message, 'Expected: I have no arguments, actual: ' + polyTest.message);
        Assert.areEqual(0, polyTest.num, 'Expected: 0, Actual: ' + polyTest.num);
    }
    /**
     * @description Tests contructor with one string parameter
     */
    @isTest
    static void PolymorphismExamplesTest2(){
        PolymorphismExamples polyTest = new PolymorphismExamples('my string');
        Assert.areEqual('my string', polyTest.message, 'Expected: my string, Actual: ' + polyTest.message);
        Assert.areEqual(1, polyTest.num, 'Expected: 1, Actual: ' + polyTest.num);
    }
    /**
     * @description Tests constructor with one integer parameter
     */
    @isTest
    static void PolymorphismExamplesTest3(){
        PolymorphismExamples polyTest = new PolymorphismExamples(5);  
        Assert.areEqual('I have one argument', polyTest.message, 'Expected: I have one argument, Actual: ' + polyTest.message);
        Assert.areEqual(5, polyTest.num, 'Expected: 5, Actual: ' + polyTest.num);
    }
    /**
     * @description Tests constructor that receives one List<String> argument
     */
    @isTest
    static void PolymorphismExamplesTest4(){
        List<String> newList = new List<String>{'One','Two','Three'};
        PolymorphismExamples polyTest = new PolymorphismExamples(newList);  
        Assert.areEqual(newList, polyTest.myList, 'Lists do not match');
        Assert.areEqual(3, polyTest.num, 'Expected: 3, Actual: ' + polyTest.num);
    }
    /**
     * @description Tests constructor that receives one string and one integer parameter
     */
    @isTest
    static void PolymorphismExamplesTest5(){
        PolymorphismExamples polyTest = new PolymorphismExamples('my string',5);  
        Assert.areEqual('my string', polyTest.message, 'Expected: my string, Actual: ' + polyTest.message);
        Assert.areEqual(5, polyTest.num, 'Expected: 5, Actual: ' + polyTest.num);
    }

}