@isTest
private class LeapYearCalculatorTest {
    @isTest
    /**
     * @description Tests the constructor is probably setting instance variables
     */
    static void leapYearCalculatorTest() {
        Integer currentYear = 1000;
        Integer lastYear = 2000;
        LeapYearCalculator unitTestCalculator = new LeapYearCalculator(currentYear, lastYear);
        //Assert instance variables
        Assert.areEqual(1000, unitTestCalculator.currentYear, 'Current year should be 1000, actual: ' + unitTestCalculator.currentYear);
        Assert.areEqual(2000, unitTestCalculator.lastYear, 'Last year should be 2000, actual: ' + unitTestCalculator.lastYear);
    }
    /**
     * @description Tests if isALeapYear is correcty identifying leap years
     */
    @isTest
    static void isALeapYearTest(){
        // Test case #1 - A valid leap year, evenly divisible by 4, not evenly divisible by 100 or 400
        Integer testYear1 = 1996;
        // Test case #2 - A valid leap year, a year evenly divisble by 4, 100, and 400
        Integer testYear2 = 2000;
        // Test case #3 - Not a leap year, a year not evenly divisible by 4
        Integer testyear3 = 1901;
        // Test case #4 - Not a leap year, a year evenly divisible by 4, 100, but not by 400
        Integer testyear4 = 1900;
        // Start Test
        Integer currentYear;
        Integer lastYear;
        LeapYearCalculator unitTestCalculator = new LeapYearCalculator(currentYear, lastYear);
        Assert.areEqual(true, unitTestCalculator.isALeapYear(testYear1), '1996 - Expected result: true, Actual result: ' + unitTestCalculator.isALeapYear(testYear1) );
        Assert.areEqual(true, unitTestCalculator.isALeapYear(testYear2), '2000 - Expected result: true, Actual result: ' + unitTestCalculator.isALeapYear(testYear2) );
        Assert.areEqual(false, unitTestCalculator.isALeapYear(testYear3), '1901 - Expected result: false, Actual result: ' + unitTestCalculator.isALeapYear(testYear3) );
        Assert.areEqual(false, unitTestCalculator.isALeapYear(testYear4), '1900 - Expected result: false, Actual result: ' + unitTestCalculator.isALeapYear(testYear4) );
    }
    /**
     * @description Tests if getLeapYears is returning a correct list of leap years
     */
    @isTest
    static void getLeapYearsTest(){
        // The test passes if the method returns a set equal to the following
        Set<Integer> verificationSet = new Set<Integer>{1896,1904,1908};
        Integer currentYear = 1896;
        Integer lastYear = 1908;
        LeapYearCalculator unitTestCalculator = new LeapYearCalculator(currentYear, lastYear);
        Set<Integer> resultsSet = unitTestCalculator.getLeapYears();
        Assert.areNotEqual(true, resultsSet.isEmpty(), 'Error: The set of leap years should not be empty');
        Assert.areEqual(true, resultsSet.equals(verificationSet), 'Error: The set does have have the expected contents');
    }
    /**
     * @description Tests if printLeapYear is iterating through the set without throwing any exceptions
     */
    @isTest
    static void printLeapYear(){
        Set<Integer> verificationSet = new Set<Integer>{1896,1904,1908};
        Integer currentYear = 1896;
        Integer lastYear = 1908;
        LeapYearCalculator unitTestCalculator = new LeapYearCalculator(currentYear, lastYear);
        Set<Integer> resultsSet = unitTestCalculator.getLeapYears();
        unitTestCalculator.printLeapYear(resultsSet);
        System.assert(true, 'The method ran without any errors');
        
    }
}