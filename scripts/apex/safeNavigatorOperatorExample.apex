Car carWithEngine = new Car();
carWithEngine.model = 'Land Rover Discovery';
//carWithEngine.engine = new Car.Engine();
//carWithEngine?.engine?.hp = 300;
//carWithEngine.engine.name = 'Ford';
System.debug(carWithEngine?.engine?.name);
System.debug(carWithEngine?.engine?.hp);
