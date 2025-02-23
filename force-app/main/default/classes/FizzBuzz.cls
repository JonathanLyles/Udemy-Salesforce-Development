public with sharing class FizzBuzz {
    public Integer min;
    public Integer max;
    public FizzBuzz(Integer min, Integer max) {
        this.min = min;
        this.max = max;
    }
    public List<String> ifFizzBuzz(){
        Integer current = this.min;
        List<String> printList = new List<String>();
        do{
            String printString = '';
            if(Math.mod(current,3)==0){
                printString += 'Fizz';
            }
            if(Math.mod(current,5)==0){
                printString += 'Buzz';
            }
            if(String.isBlank(printString)){
                printString = String.valueOf(current);
            }
            printList.add(printString);
            current++;
        }while(current <= max);
        return printList;        
    }
}