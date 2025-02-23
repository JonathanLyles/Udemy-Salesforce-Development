Integer yearBegin = 1100;
Integer yearEnd = 2000;
LeapYearCalculator leapCalc = new LeapYearCalculator(yearBegin, yearEnd);
Set<Integer> leapYearList = leapCalc.getLeapYears();
leapCalc.printLeapYear(leapYearList);