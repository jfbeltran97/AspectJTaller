public aspect MillisAspect{
	
	//Pointcut en main
	pointcut callGreeting(): call(* HelloAspectJDemo.greeting());
	
	long start;
	//Se registra el tiempo al comenzar greeting()
	before() : callGreeting() {
        start = System.nanoTime();
    }
	
	//Se cuenta el tiempo que ha pasado desde que comenzó el greeting
	after() : callGreeting() {
        System.out.println("\n"+ (System.nanoTime()-start));
    }
	
}