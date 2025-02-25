public with sharing class PolymorphismExamples {
    public String message;
    public Integer num;
    public List<String> myList = new List<String>();
    
    //Constructor - no arguments
    public PolymorphismExamples() {
        this.message = 'I have no arguments';
        this.num = 0;
    }
    //Constructor - one string argument
    public PolymorphismExamples(String myStr){
        this.message = myStr;
        this.num = 1;
    }

    //Constructor - one integer argument
    public PolymorphismExamples(Integer myInt){
        this.message = 'I have one argument';
        this.num = myInt;        
    }

    //Constructor - List<String> argument
    public PolymorphismExamples(List<String> newList){
        this.myList = newList;
        this.message = 'I accept a list as an argument';
        this.num = 3;
        
    }
    //Constructor - two arguments, one string and one integer
    public PolymorphismExamples(String myString, Integer myInteger){
        this.message = myString;
        this.num = myInteger;        
    }
}