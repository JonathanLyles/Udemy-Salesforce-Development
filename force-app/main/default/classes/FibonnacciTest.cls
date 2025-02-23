/**
 * @description Tests for Fibonnacci class
 * @author  Jonathan Lyles
 * @created 2025-02-23
 */
@isTest
private class FibonnacciTest {
    /**
     * @description Test constructor
     */
    @isTest
    static void FibonnacciTest() {
        Fibonnacci myFibonnacci = new Fibonnacci(5);
        Assert.areNotEqual(null, myFibonnacci, 'An object of class Fibonnacci should be instantiated');
        Assert.areEqual(5, myFibonnacci.num, 'Expected value 5, actual value: ' + myFibonnacci.num);
    }
    @isTest
    static void fibonnacciListTest(){
        List<Integer> verificationList = new List<Integer>{1,2,3,5,8,13};
        Fibonnacci myFibonnacci = new Fibonnacci(5);
        List<Integer> myList = myFibonnacci.fibonnacciList();
        Assert.areNotEqual(null, myList, 'The fibonnaciList should not be null');
        Assert.areEqual(myList, verificationList, 'List does not have expected values');
    }
}