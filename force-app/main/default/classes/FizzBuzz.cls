public with sharing class FizzBuzz {
    public Integer min;
    public Integer max;
    public FizzBuzz(Integer min, Integer max) {
        this.min = min;
        this.max = max;
    }
    public void ifFizzBuzz(){
        Integer current = this.min;
        do{
            System.debug('Current iteration: ' + current + '\n');
            String printString = '';
            if(Math.mod(current,3)==0){
                printString += 'Fizz';
            }
            if(Math.mod(current,5)==0){
                printString += 'Buzz';
            }
            if(String.isBlank(printString)){
                System.debug(current + '\n');
            }else{
                System.debug(printString + '\n') ;
            }
            current++;
            System.debug('Current after increment: ' + current + '\n');
        }while(current <= max);

    }
}