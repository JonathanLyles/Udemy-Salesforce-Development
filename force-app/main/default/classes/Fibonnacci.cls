public with sharing class Fibonnacci {
    public Integer num;
    public Fibonnacci(Integer num) {
        this.num = num;
    }
    public List<Integer> fibonnacciList(){
        Integer x = 0;
        Integer y = 1;
        Integer result;
        List<Integer> results = new List<Integer>();
        for(Integer counter = 0 ; counter <= num ; counter++){
            result = x + y;
            results.add(result);
            x = y;
            y = result;
        }
        return results;
    }
}