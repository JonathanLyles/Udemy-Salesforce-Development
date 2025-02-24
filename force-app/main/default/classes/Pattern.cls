public with sharing class Pattern {
    public Integer num;
    public Pattern(Integer num) {
        this.num = Math.abs(num);
    }
    public List<String> makePattern(){
        List<String> patternList = new List<String>();
        String patternString = '*';
        for(Integer count = 1; count <= num; count++){
            patternList.add(patternString + '\n');
            patternString += '*';
        }
        return patternList;
    }
}