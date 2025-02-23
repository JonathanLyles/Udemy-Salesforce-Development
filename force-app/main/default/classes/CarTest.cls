/**
 * Tests for Car class
 */
@isTest
private class CarTest {
    /**
     * @description Tests Car contructor
     */
    @isTest
    static void CarTest() {
        Car myCar = new Car();
        Assert.areNotEqual(null, myCar, 'Car object should be instantited');
        Assert.areEqual(null, myCar?.engine, 'Engine should be null');
    }
    /**
     * @description Tests Engine constructor
     */
    @isTest
    static void EngineTest(){
        Car.Engine myEngine = new Car.Engine();
        Assert.areNotEqual(null, myEngine, 'Car.Engine object should be instantiated');
        Assert.areEqual(null, myEngine?.hp, 'Car.Engine.hp should be null');
    }
}