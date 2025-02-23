@isTest
private class FizzBuzzTest {
    /**
     * @description Tests constructor  properly initializing properties
     */
    @isTest
    static void FizzBuzzTest() {
        Integer min = 1;
        Integer max = 100;

        FizzBuzz fb = new FizzBuzz(min,max);

        Assert.areEqual(1, fb.min, 'Expected value 1, actual: ' + fb.min);
        Assert.areEqual(100, fb.max, 'Expected value 100, actual: ' + fb.max);
    }
    /**
     * @description This methods compares the results of ifFizzBuzz against a list with expected results 
     */
    @isTest
    static void ifFizzBuzzTest(){
        
        Integer min = 1;
        Integer max = 15;
        FizzBuzz fb = new FizzBuzz(min,max);

        Test.startTest();

        List<String> myTestList = fb.ifFizzBuzz();
        
        Test.stopTest();

        List<String> verificationList = new List<String>{'1','2','Fizz','4','Buzz','Fizz','7','8','Fizz','Buzz','11','Fizz','13','14','FizzBuzz'};
        Assert.areEqual(verificationList, myTestList, 'List does not match list with expected results');
        
    }
}   