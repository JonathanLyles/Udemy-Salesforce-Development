public with sharing class LeapYearCalculator {
    public Integer currentYear;
    public Integer lastYear;
    public LeapYearCalculator(Integer currentYear, Integer lastYear) {
        this.currentYear = currentYear;
        this.lastYear = lastYear;
    }
    @testVisible
    private Boolean isALeapYear(Integer year){
        Boolean result;
        if(Math.mod(year,4) == 0 && Math.mod(year, 100) == 0 && Math.mod(year, 400) == 0){
            result = true;
        }else if(Math.mod(year,4) == 0 && Math.mod(year, 100) == 0 && Math.mod(year, 400) != 0){
            result = false;
        }else if(Math.mod(year,4) == 0 && Math.mod(year, 100) != 0 && Math.mod(year, 400) != 0){
            result = true;
        }else{
            result = false;
        }
        return result;
    }
    public Set<Integer> getLeapYears(){
        Set<Integer> leapYearList = new Set<Integer>();
        Integer year = this.currentYear;
        Do{
            if(this.isALeapYear(year)){
                leapYearList.add(year);
            }
            year++;
        } while (year <= this.lastYear);
        return leapYearList;
    }
    public void printLeapYear(Set<Integer> leapYears){
        for(Integer leapYear : leapYears){
            System.debug(leapYear + '\n');
        }
    }
}