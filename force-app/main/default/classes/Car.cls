public with sharing class Car {
    public Engine engine;
    public String model;
    public Integer year;

    public Car() {

    }

    public class Engine {
        public Integer hp;
        public String name;
    }
}